open Remu_ts.Infer
open Remu_ts.Comm
open Remu_ts.Builder

module TC : TState = (val crate_tc empty_tctx : TState)
let _ = let open TC in
   let intt = new_type "int" in
   let boolt = new_type "bool" in
   let x = new_tvar() in
   let y = new_tvar() in
   let f = Forall(["a"], Arrow(Fresh "a", Arrow(Fresh "a", boolt))) in
   (* x = 1 *)
   assert (unify x intt);
   (* f x y *)
   let arg1 = new_tvar() in
   let arg2 = new_tvar() in
   assert (unify arg1 x);
   assert (unify arg2 y);
   let func = Arrow(arg1, Arrow(arg2, boolt)) in
   assert (unify f func);
   let print_ty name x =
        Printf.printf "%s: %s\n" name   @@
        dumpstr
        (mk_show_named_nom (module TC)) @@
        prune x
    in
   print_ty "x" x;
   print_ty "y" y;
   print_ty "func" func
