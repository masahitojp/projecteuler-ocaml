let rec loop n p =
  match n with
    n when (n < p * p) ->
    [n]
  | n when (n mod p = 0) ->
     p :: loop (n / p) p
  | _ ->
    loop n (p + 1)
    in 

    let factor n =
      loop n 2
    in 

    print_int (List.hd (List.rev (factor 600851475143)));;
