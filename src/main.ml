open Types
open Printer
open Typage

let () =
  let cin = open_in Sys.argv.(1) in
  let lexbuf = Lexing.from_channel cin in
  let () = 
    try
      let ast = Parser.program Lexer.token lexbuf in
      ast
      |> check_type_prog
      |> Printf.printf "%b\n"; 
      Printf.printf "%s" (progToString ast);
    with TypeError s -> close_in cin; failwith ("Il y a un probleme de typage : " ^ s) in
  close_in cin