let rec range a b =
    if a > b then []
    else a :: range (a+1) b;;

let mult_list x y =
  List.map (fun a -> x * a) y;;

let rec mult_list_loop x y acc  = match x with
    [] -> acc
  | x::xs -> mult_list_loop xs y ((mult_list x y ) :: acc);;

let double_for x y =
  mult_list_loop (range x y) (range x y) [];;

let reverse s = 
  let len = String.length s - 1 in
  let s' = String.create (len + 1) in
  for i = 0 to len do
    s'.[i] <- s.[len - i]
  done;
  s';;

let palindrome n =
  let n_str = string_of_int n in
  n_str = reverse n_str;;

let max l =
  List.fold_left (fun a b -> if a > b then a else b) 0 l;;

let _ =
  print_int (max (List.filter (fun x -> palindrome x) (List.flatten (double_for 1 1000))));;
