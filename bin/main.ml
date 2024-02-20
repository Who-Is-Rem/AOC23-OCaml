(* Day 1 *)

(* 
- need a function to find the two digit number from an input string
- need a fcuntion to add the numbers
ascii chars 49-57 represent 1-9 numerically
*)

let rec get_digits (input:string) : int list = 
    let hd = String.sub input 0 1 in 
    try
        let irep = int_of_string hd in 
        match String.length input with 
        | 1 -> [irep] 
        | _ -> irep :: get_digits (String.sub input 1 ((String.length input) - 1))
    with 
    | _ -> 
            match String.length input with 
            | 1 -> []
            | _ -> get_digits (String.sub input 1 ((String.length input) - 1))

let get_2digit (input:string) : int = 
    let digits = get_digits input in
    (List.nth digits 0)*10 + List.nth digits (List.length digits-1)

let () = 
    let input = read_line() in
    print_int (get_2digit input);
