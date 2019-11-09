(* open Remu_ts.Comm *)
open Comm

type rowpath =
  | ExtRef of t
  | Mono
  [@@deriving show  { with_path = false }]

and t =
  | App of t * t
  | Arrow of t * t
  | Var of int
  | Nom of int
  | Fresh of string
  | Tuple of t list
  | Record of (string, t) map * rowpath
  | Forall of string list * t
  [@@deriving show  { with_path = false }]

let (|->) a b = Arrow(a, b)
let (<||) a b = App(a, b)
let record xs ex = Record(Map.of_enum @@ List.enum xs, ex)

type tctx = {
  store : (int, t) map;
  qualns  : (int, string) map; (* qualified names for nominal types *)
} [@@deriving show {with_path = false}]

let empty_tctx = {store=Map.empty; qualns=Map.empty}

let previsit (f : 'ctx -> t -> 'ctx * t) : 'ctx -> t -> 'ctx * t =
  let rec visit ctx' root =
    let (ctx, root) = f ctx' root in
    let eval_st node = snd @@ visit ctx node in
    ctx' <.> match root with
    | Var _ | Nom _ | Fresh _ -> root
    | App(a, b) -> App(eval_st a, eval_st b)
    | Arrow(a, b) -> Arrow(eval_st a, eval_st b)
    | Tuple(xs) -> Tuple(List.map eval_st xs)
    | Record(tbl, ExtRef a) ->
      Record(Map.map eval_st tbl, ExtRef (eval_st a))
    | Record(tbl, ex) -> Record(Map.map eval_st tbl, ex)
    | Forall(ns, t) -> Forall(ns, eval_st t)
  in visit

let postvisit (f : 'ctx -> t -> 'ctx * t) : 'ctx -> t -> 'ctx * t=
  let rec visit ctx root =
    let eval_st node = snd @@ visit ctx node in
    f ctx  @@ match root with
    | Var _ | Nom _ | Fresh _ -> root
    | App(a, b) -> App(eval_st a, eval_st b)
    | Arrow(a, b) -> Arrow(eval_st a, eval_st b)
    | Tuple(xs) -> Tuple(List.map eval_st xs)
    | Record(tbl, ExtRef a) ->
      Record(Map.map eval_st tbl, ExtRef (eval_st a))
    | Record(tbl, ex) -> Record(Map.map eval_st tbl, ex)
    | Forall(ns, t) -> Forall(ns, eval_st t)
  in visit

let visit_check (f : t -> bool) : t -> bool =
  let rec visit root =
    if f root then
      match root with
      | Var _ | Nom _ | Fresh _ -> true
      | App(a, b) -> visit a && visit b
      | Arrow(a, b) -> visit a && visit b
      | Tuple(xs) -> List.for_all visit xs
      | Record(tbl, ExtRef a) -> Map.for_all (fun _ b -> visit b) tbl && visit a
      | Record(tbl, _) -> Map.for_all (fun _ b -> visit b) tbl
      | Forall(_, t) -> visit t
    else false
  in visit

exception IllFormedType of string
exception UnboundTypeVar of string
exception RowFieldMismatch of string
exception RowFieldDuplicatedInfer of string

module type TState = sig

  val global : tctx ref
  val load_tvar : int -> t
  val mut_tvar : int -> t -> unit

  val fresh : (string, t) map -> t -> t

  val new_tvar : unit -> t
  val new_type : string -> t

  val tvar_of_int : int -> t
  val int_of_tvar : t -> int option

  val tnom_of_int : int -> t
  val typeid      : t -> int option

  val occur_in : int -> t -> bool
  val prune : t -> t
  val unify : t -> t -> bool

end

let opt_alt : 'a option -> 'a -> 'a = fun opt rescue ->
  match opt with
  | Some a -> a
  | _ -> rescue

let crate_tc : tctx -> (module TState) =
  fun global ->
  (module struct
      let global = ref global

      let load_tvar i = Map.find i (!global).store

      let mut_tvar i a =
        let up = fun _ -> Some a in
        let tctx = !global in
        global := {tctx with store=Map.modify_opt i up tctx.store}

      let fresh =
        let visit_func freshmap = function
            | Fresh s as a -> freshmap <.> Map.find_default a s freshmap
            | Forall(ns, _) as a -> List.fold_right Map.remove ns freshmap <.> a
            | a -> freshmap <.> a
        in fun freshmap ty -> snd @@ previsit visit_func freshmap ty

      let new_tvar () =
        let tctx = !global in
        let vid = Map.cardinal tctx.store in
        let tvar = Var vid in
        global := {tctx with store = Map.add vid tvar tctx.store}; tvar

      let new_type typename =
        let tctx = !global in
        let nid = Map.cardinal tctx.qualns in
        global := {tctx with qualns = Map.add nid typename tctx.qualns}; Nom nid

      let tvar_of_int i = Var i

      let tnom_of_int i = Nom i

      let int_of_tvar = function
          | Var i -> Some i
          | _     -> None

      let typeid = function
          | Nom i -> Some i
          | _     -> None

      let occur_in i ty =
        if int_of_tvar ty = Some i then
          false
        else
        let visit_func = function
          | Var i' when i = i' -> false
          | _ -> true
        in not @@ visit_check visit_func ty

      let rec prune x =
        let vfunc () a = (), match a with
          | Var i ->
            begin
              match load_tvar i with
              | Var i' when i' = i -> a
              | a ->
                let t = prune a in
                mut_tvar i t; t
            end
          | _ -> a
        in snd @@ previsit vfunc () x

      let rec unify lhs rhs = match prune lhs, prune rhs with
        | Nom a, Nom b -> a = b
        | Var a, Var b when a = b -> true
        (* This rule produces value restriction *)
        | (Forall _ as a), b -> unify b a
        | a, Forall(ns, poly) ->
          let freemap =
            let fn a =
              let tvar = new_tvar() in
              a, tvar
            in Map.of_enum @@ List.enum @@ List.map fn ns
          in
          unify a @@ fresh freemap poly
        | Var a, b ->
          if occur_in a b
          then raise @@ IllFormedType "a = a -> b"
          else mut_tvar a b; true
        | a, (Var _ as b) -> unify b a
        | (_, Fresh s) | (Fresh s, _) -> raise @@ UnboundTypeVar s
        | App(f1, arg1), App(f2, arg2) ->
          unify f1 f2 && unify arg1 arg2
        | Tuple xs1, Tuple xs2 ->
          List.for_all2 unify xs1 xs2
        | (Record _ as a), (Record _ as b) ->
          let rec unify_has_field record_t fn fty =
            (* fn: field name; fty: field type *)
            (* may produce a new record_t *)
            match record_t with
            | Var _ ->
              let ex = new_tvar() in
              let ex = Record(Map.of_enum @@ Array.enum @@ [|fn, fty|], ExtRef ex)
              in unify record_t ex
            | Record(m, ex) ->
              let fty' = Map.find_opt fn m in
              begin match fty', ex with
                | None, ExtRef ex -> unify_has_field ex fn fty
                | Some fty', _    -> unify fty fty'
                | _ -> false
              end
            | _ -> false
          in
          let extract_row =
            let rec extract_row fields =
              function
              | Record(m, ex) ->
                let intersected = Map.keys @@
                                  Map.intersect (fun _ _ -> ()) fields m in
                let duplicated = not @@ Enum.is_empty intersected in
                if duplicated then
                  raise @@ RowFieldDuplicatedInfer
                           (String.concat "," @@ List.of_enum intersected)
                else
                let fields = Map.union fields m
                in begin match ex with
                  | ExtRef ex -> extract_row fields ex
                  | _ -> fields
                end
              | _ -> fields
            in extract_row Map.empty
          in
          let m1 = extract_row a in
          let m2 = extract_row b in
          let common_keys =
            Map.intersect (fun _ _ -> ()) m1 m2
            |> Map.keys
          in
          let only_by1 = Map.diffkeys m1 common_keys in
          let only_by2 = Map.diffkeys m2 common_keys in
          let check_align key = unify (Map.find key m1) (Map.find key m2)
          in
          Enum.for_all check_align common_keys  &&
          Map.for_all (unify_has_field b) only_by1 &&
          Map.for_all (unify_has_field a) only_by2
      | _ -> false
  end: TState)

let copy_tc : (module TState) -> (module TState) =
  fun (module M1) -> crate_tc !M1.global
