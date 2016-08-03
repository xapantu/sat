module Sat = Sat_solver__Sat
module Bigint = Why3extract.Why3__BigInt

let test1 () =
  let file_test = [[(1, true); (2, true)]; [(2, false); (1, false)]; [(2, true); (1, false)]; [(2, false); (1, false)]] in
  let file_test = List.map (List.map (fun (a, b) -> (Bigint.of_int a, b))) file_test in
  match Sat.is_sat file_test with
  | None -> print_endline "unsat"
  | Some s -> print_endline "sat"

let _ = test1 ()
