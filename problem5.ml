let rec range a b =
  if a > b then []
  else a :: range (a+1) b in 

    let rec gcd a b =
      if b = 0 then a
      else gcd b (a mod b) in

    let lcm a b =
      a * b / (gcd a b) in

    print_int (List.fold_left (fun a b -> lcm a b) 1 (range 1 20))
;;
