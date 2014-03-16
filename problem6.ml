open Printf;;
open Int64;;

let _ =
  let rec range a b =
    if a > b then []
    else a :: range (add a 1L) b in
  let a =
    List.fold_left (add) 0L (range 1L 100L) in 
  let b =
    List.fold_left (fun a b -> (Int64.add a  (Int64.mul b  b))) 0L (range 1L 100L) in
  print_string (Printf.sprintf ("Foo %Ld") (sub (mul a a) b))
;;
