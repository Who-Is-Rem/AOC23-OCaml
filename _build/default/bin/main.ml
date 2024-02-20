open Printf

(* Day 1 *)

(* 
- need a function to find the two digit number from an input string
- need a fcuntion to add the numbers
ascii chars 49-57 represent 1-9 numerically
*)

let rec get_digits (input:string) : string = 
    try 
        let num = int_of_string(String.sub input 0 1) in 
        string_of_int num ^ get_digits(String.sub input 1 ((String.length input) - 1))
    with
        | _ -> get_digits (String.sub input 1 (String.length input - 1))

let () = 
    let input = read_line() in
    printf "%s" (get_digits input)
