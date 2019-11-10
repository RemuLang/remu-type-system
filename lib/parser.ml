open Comm
type location = {line: int; col: int}

type ('a, 'b) result = Err of 'a | Ok of 'b

type 't parser =
    (char list * location) ->
    (string * location, 't * char list * location) result

let (>>=) m k = fun arg ->
  match m arg with
  | Ok(a, s, loc) -> k a (s, loc)
  | Err(msg, loc) -> Err(msg, loc)

let eof_err cs = "got eof, expect " ^ cs
let expect expected actual = "expect " ^ expected ^ ", got"  ^ actual

let fail_p msg: 'a parser = fun (_, {line; col}) ->
  let line_s = string_of_int line in
  let col_s = string_of_int col in
  let msg = msg ^ ", at line " ^ line_s ^ ", column " ^ col_s
  in Err(msg, {line; col})


let token : (char -> bool) * string -> char parser = fun (f, cs) ->
  function
  | [], loc -> Err(eof_err cs, loc)
  | hd::tl, loc when f hd ->
    let loc = match hd with
      | '\n' -> {col = 0; line = loc.line + 1}
      | _    -> {loc with col = loc.col + 1}
    in Ok(hd, tl, loc)
  | hd::_, loc -> Err(expect cs (String.of_char hd), loc)

let eps: unit parser = fun (s, loc) -> Ok((), s, loc)

let (<|>) : 'a parser -> 'a parser -> 'a parser =
  fun p1 p2 ->
  fun (s, loc as arg) -> match p1 (s, loc) with
  | Err(_, loc') as err -> if loc = loc' then p2 arg else err
  | a -> a

let none_of : char list -> char parser =
  fun chrs ->
  let chrs' = Array.of_list chrs in
  let pred =  fun chr -> not @@ Array.mem chr chrs' in
  token(pred, "none of \"" ^ String.of_list chrs ^ "\"")
