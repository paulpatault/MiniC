open Printf 
open Types
open Printer
open Typage


let () =
  let cin = open_in Sys.argv.(1) in
  let lexbuf = Lexing.from_channel cin in
  let () = 
    try
      Parser.program Lexer.token lexbuf 
      |> check_type_prog 
      |> Printf.printf "%b"
    with TypeError -> close_in cin; failwith "Il y a un probleme de typage" in
  close_in cin