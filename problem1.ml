open Misc;;

print_int (List.fold_left (+) 0 (List.filter (fun x -> (x mod 3) = 0 || (x mod 5) = 0) (range 1 999)));;
