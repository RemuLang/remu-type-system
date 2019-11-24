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

let dump out = fun ((module M: TState), r, ns) ->
  let print s = output_string out s in
  let _ = match r with
    | Some i ->
      print @@ sprintf "Error(%d)\n" i
    | _ -> ()
  in
  (* (!(M.global).store |> Map.keys |> List.of_enum) *)
  (flip List.iter) ns @@ fun i ->
    let pruned = M.prune @@ M.load_tvar i
    in
      print @@ string_of_int i;
      print " ";
      print @@ show pruned;
      print "\n"
