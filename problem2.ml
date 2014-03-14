let rec fiblist f0 f1 lim =
  let f2 = f0 + f1 in
  if (f2 > lim) then []
     else f2 :: fiblist f1 f2 lim;;

let fiblistlim lim =
  1 :: 2 :: fiblist 1 2 lim;;

print_int (List.fold_left (+) 0 (List.filter (fun x -> (x mod 2) = 0) (fiblistlim 4000000)));;
