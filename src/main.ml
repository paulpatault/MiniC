(* open Types*)
open Printer
open Typage 

open Lexing

module MI = Mcparser.MenhirInterpreter

exception SyntaxError of ((int * int) option * string)

let get_parse_error env =
    match MI.stack env with
    | lazy Nil -> "Invalid syntax"
    | lazy (Cons (MI.Element (state, _, _, _), _)) ->
        try (Parser_messages.message (MI.number state)) with
        | Not_found -> "invalid syntax (no specific message for this error)"

let rec parse lexbuf (checkpoint : Types.prog MI.checkpoint) =
  match checkpoint with
  | MI.InputNeeded _env ->
      let token = Lexer.token lexbuf in
      let startp = lexbuf.lex_start_p
      and endp = lexbuf.lex_curr_p in
      let checkpoint = MI.offer checkpoint (token, startp, endp) in
      parse lexbuf checkpoint
  | MI.Shifting _ | MI.AboutToReduce _ ->
      let checkpoint = MI.resume checkpoint in
      parse lexbuf checkpoint
  | MI.HandlingError _env ->
      let line, pos = Utils.get_pos lexbuf in
      let err = get_parse_error _env in
      raise (SyntaxError (Some (line, pos), err))
  | MI.Accepted v -> v
  | MI.Rejected ->
       raise (SyntaxError (None, "invalid syntax (parser rejected the input)"))


let () = 
  let cin = open_in Sys.argv.(1) in
  let lexbuf = Lexing.from_channel cin in
  let res =
    try Ok (parse lexbuf (Mcparser.Incremental.program lexbuf.lex_curr_p))
    with SyntaxError (pos, err) ->
      match pos with
        | Some (line, col) -> Error (Printf.sprintf "Syntax error: %d:%d %s" line col err)
        | None -> Error (Printf.sprintf "Syntax error: %s" err)
  in
  match res with
    | Ok prog -> check_type_prog prog |> Printf.printf "%s\n ---> %b\n" (progToString prog);  exit 0
    | Error err -> Printf.eprintf "MiniC Error compiling: %s\n\t%s" Sys.argv.(1) err; exit 1
