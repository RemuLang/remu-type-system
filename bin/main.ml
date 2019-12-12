open Remu_ts.Rets_lang
open Remu_ts.Infer
open Remu_ts.Builder

let _ =
  let buf = Lexing.from_channel stdin in
  let bs = List.fold_right List.cons (run_parser buf) [] in
  let mk_show _ = {name_of = string_of_int} in
  from_builder bs (dump mk_show stdout)