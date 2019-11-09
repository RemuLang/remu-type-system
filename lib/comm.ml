module StrM = Map.Make(String)
module StrS = Set.Make(String)
module IntM = Map.Make(
    struct
      type t = int
      let compare = compare
    end
)

let fst (a, _) = a
let snd (_, a) = a

let (<.>) a b = (a, b)

let (>>) f g = fun x -> f (g x)
let (<<) f g = fun x -> g (f x)

let list2strmap : (string * 'a) list -> 'a StrM.t = fun xs ->
  StrM.of_seq @@ List.to_seq xs
