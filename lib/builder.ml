open Infer
open Comm
open Printf

type builder =
  | Store of int * t
  | DefNom of int * string
  | MKUnify of t * t
  [@@deriving show  { with_path = false }]

module type Built = sig
  val m : (module TState)
  val err_index : int option
end

type ('a, 'b) cps = ('a -> 'b) -> 'b

module IntSet = BatISet

let from_builder : 'r . builder list -> ((module TState) * int option *  int list, 'r) cps =
  fun xs cont ->
    let (module TC) = crate_tc empty_tctx in
    let requires = ref @@ IntSet.empty in
    let rec loop xs ind =
      match xs with
      | [] -> None
      | Store(i, t)::tl ->
        requires := IntSet.add i !requires;
        TC.mut_tvar i t;
        loop tl (1 + ind)
      | DefNom(i, s)::tl -> TC.mut_tnom i s; loop tl (1 + ind)
      | MKUnify(a, b)::tl ->
        if TC.unify a b
        then loop tl (1 + ind)
        else Some ind
    in
    let e: int option = loop xs 0 in
    let m = (module TC: TState) in
    cont (m, e, IntSet.elements !requires)

let is_simple = function
  | Var _ | Fresh _ | Nom _ | Record _ | Tuple _  -> true
  | _ -> false

type show_nom = {name_of: int -> string}

let rec dumpstr ({name_of} as show) x =
  let dumpstr = dumpstr show in
  match x with
  | App(f, arg) when is_simple arg -> dumpstr f ^ " " ^ dumpstr arg
  | App(f, arg)  -> dumpstr f ^ " (" ^ dumpstr arg ^ ")"
  | Arrow(arg, ret) when is_simple arg -> dumpstr arg ^ " -> " ^ dumpstr ret
  | Arrow(arg, ret) -> "(" ^ dumpstr arg ^ ") -> " ^ dumpstr ret
  | Implicit(wit, t) -> "{" ^ dumpstr wit ^ "} => " ^ dumpstr t
  | Forall(ns, t) -> "forall {" ^ String.join " " ns ^ "} " ^ dumpstr t
  | Tuple(elts) -> "[" ^ String.join ", " (List.map dumpstr elts) ^ "]"
  | Record rowt -> begin match dumpstr_row show rowt with
    | xs, Some tho -> "{" ^ String.join ", " xs ^ " | " ^ tho ^ "}"
    | xs, None     -> "{" ^ String.join ", " xs ^ "}"
    end
  | Var i -> "'" ^ string_of_int i
  | Nom i -> "^" ^ name_of i
  | Fresh a -> a

and dumpstr_row show x =
  let dumpstr_row = dumpstr_row show in
  let dumpstr = dumpstr show in
  match x with
  | RowCons(n, t, rowt) ->
    let (xs, o) = dumpstr_row rowt in (n ^ ": " ^ dumpstr t)::xs, o
  | RowPoly (Record rowt) -> dumpstr_row rowt
  | RowPoly t -> [], Some (dumpstr t)
  | RowMono -> [], None

let mk_show_named_nom = fun (module M: TState) -> {name_of = fun i -> Map.find_default "unknown-type" i (!M.global).qualns}
let dump mk_show out = fun ((module M: TState) as m, r, ns) ->
  let show = mk_show m in
  let print s = output_string out s in
  let _ = match r with
    | Some i ->
      print @@ sprintf "Error(%d);\n" i
    | _ -> ()
  in
  (* (!(M.global).store |> Map.keys |> List.of_enum) *)
  (flip List.iter) ns @@ fun i ->
    let pruned = M.prune @@ M.load_tvar i
    in
      print @@ string_of_int i;
      print " ";
      print @@ dumpstr show pruned;
      print ";\n"
