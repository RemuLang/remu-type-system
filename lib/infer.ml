(* open Remu_ts.Comm *)
open Comm

type rowpath =
  | ExtRef of t
  | Mono

and t =
  | App of t * t
  | Arrow of t * t
  | Var of int
  | Nom of int
  | Fresh of string
  | Tuple of t list
  | Record of t StrM.t * rowpath
  | Forall of StrS.t * t

type tctx = {
  store : t IntM.t;
  qualns  : string IntM.t; (* qualified names for nominal types *)
  rowfs   : t StrM.t IntM.t (* row fields *)
}

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
      Record(StrM.map eval_st tbl, ExtRef (eval_st a))
    | Record(tbl, ex) -> Record(StrM.map eval_st tbl, ex)
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
      Record(StrM.map eval_st tbl, ExtRef (eval_st a))
    | Record(tbl, ex) -> Record(StrM.map eval_st tbl, ex)
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
      | Record(tbl, ExtRef a) -> StrM.for_all (fun _ b -> visit b) tbl && visit a
      | Record(tbl, ex) -> StrM.for_all (fun _ b -> visit b) tbl
      | Forall(ns, t) -> visit t
    else false
  in visit

exception IllFormedType of string
exception UnboundTypeVar of string
exception RowFieldMismatch of string

module type TState = sig

  val global : tctx ref
  val load_tvar : int -> t
  val mut_tvar : int -> t -> unit

  val fresh : t StrM.t -> t -> t

  val new_tvar : unit -> t
  val new_typeid : string -> int

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
      let global = ref global
      in
      let load_tvar i = IntM.find i (!global).store
      in
      let mut_tvar i a =
        let up = fun _ -> Some a in
        let tctx = !global in
        global := {tctx with store=IntM.update i up tctx.store}
      in
      let fresh =
        let visit_func freshmap = function
            | Fresh s as a -> freshmap <.> opt_alt (StrM.find_opt s freshmap) a
            | Forall(ns, t) as a -> StrS.fold StrM.remove ns freshmap <.> a
            | a -> freshmap <.> a
        in fun freshmap ty -> snd @@ previsit visit_func freshmap ty
      in
      let new_tvar () =
        let tctx = !global in
        let vid = IntM.cardinal tctx.store in
        let tvar = Var vid in
        global := {tctx with store = IntM.add vid tvar tctx.store}; vid
      in
      let new_typeid typename =
        let tctx = !global in
        let nid = IntM.cardinal tctx.qualns in
        global := {tctx with qualns = IntM.add nid typename tctx.qualns}; nid
      in
      let tvar_of_int i = Var i
      in
      let tnom_of_int i = Nom i
      in
      let int_of_tvar = function
          | Var i -> Some i
          | _     -> None
      in
      let typeid = function
          | Nom i -> Some i
          | _     -> None
      in
      let occur_in i ty =
        if int_of_tvar ty = Some i then
          false
        else
        let visit_func = function
          | Var i' when i = i' -> false
          | _ -> true
        in not @@ visit_check visit_func ty
      in
      let rec prune x =
        let vfunc () a = (), match a with
          | Var i ->
            begin
              match load_tvar i with
              | Var i' when i' = i -> a
              | a ->
                let (), t = prune a in
                mut_tvar i t; t
            end
          | _ -> a
        in previsit vfunc () x
      in
      let rec unify lhs rhs = match lhs, rhs with
        | Nom a, Nom b -> a = b
        | Var a, Var b when a = b -> true
        (* This rule produces value restriction *)
        | (Forall _ as a), b -> unify b a
        | a, Forall(ns, poly) ->
          let ns = StrS.to_seq ns in
          let freemap =
            let fn a =
              let tvar = new_tvar() in
              let tvar = Var tvar in
              a, tvar
            in StrM.of_seq @@ Seq.map fn ns
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
          let rec unify_has_field fn fty record_t =
            (** may produce a new record_t *)
            match record_t with
            | Var a ->
              let ex = TVar (new_tvar())
              in Record(list2strmap [fn, fty], ex)
            | Record(m, ex) ->
              let fty' = StrM.find_opt k map in
              if fty' = None then
                Record(m, unify_has_field fn fty ex)
              else
              if unify fty fty'
              then prune record_t
              else raise @@ RowFieldMismatch key
          in
          failwith ""
          (* let (m1, ex1) = extract_row(a) in
          let (m2, ex2) = extract_row(b) in
          let common = map_intersect(m1, m2) in
          let common_keys = map_keys common in
          let only_by1 = map_diff(m1, common_keys) in
          let only_by2 = map_diff(m2, common_keys) in
          let fn key a1 =
            let a2 = StrM.find key only_by2
            in unify a1 a2
          in StrM.for_all fn only_by2 &&
          try
            let rhs = StrM.fold unify_has_field only_by1 b in
            let lhs = StrM.fold unify_has_field only_by2 a in
            true
          with RowFieldMismatch _ -> false *)
        (** TODO *)
      in failwith ""

let copy_tc : (module TState) -> (module TState) = failwith ""
