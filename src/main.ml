open Printf 
open Types
open Printer

let file = Sys.argv.(1)
let cout = open_out (file ^ ".out")
let print s = fprintf cout s

let cin = open_in file
let lexbuf = Lexing.from_channel cin
  
(* let () = print "%s" (toString (Parser.program Lexer.token lexbuf)) *)

let () = print_prog (Parser.program Lexer.token lexbuf)

let () = close_in cin

let () = close_out cout