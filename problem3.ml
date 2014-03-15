
let rec loop n p =
  if (n < p * p) then [n]
  else if (n mod p = 0) then p :: loop (n / p) p
  else loop n (p + 1) in 

    let factor n =
      loop n 2 in 

    print_int (List.hd (List.rev (factor 600851475143)));;
