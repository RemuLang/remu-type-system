open Remu_ts.Rets_lang
open Remu_ts.Infer

let _ =
  let buf = Lexing.from_channel stdin in
  List.iter (fun x -> print_endline @@ show_builder x) @@ run_parser buf