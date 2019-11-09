open Remu_ts.Infer
open Remu_ts.Comm
module TC : TState = (val crate_tc empty_tctx : TState)

let _ = let open TC in
  let i32 = new_type "int32" in
  let a = new_tvar() in
  let b = new_tvar() in
  let is_ok = unify (Tuple [a; a]) (Tuple [i32; b]) in
  let _ = assert (is_ok && prune a = i32 && prune b = i32) in
  let rho = new_tvar() in
  let record1 = record ["k", i32] (ExtRef rho) in
  let record2 = record ["a", i32; "k", a] Mono in
  let is_ok = unify record1 record2 in
  assert is_ok;
  let rho = prune rho in
  print_endline @@ show rho