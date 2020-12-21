open Printer
open Typage 
open Lexing
open Printf

module MI = Mcparser.MenhirInterpreter

exception SyntaxError of ((int * int) option * string)

let get_pos (lexbuf: Lexing.lexbuf) =
  let curr_p = lexbuf.lex_curr_p in
  let line = curr_p.Lexing.pos_lnum in
  let col = curr_p.Lexing.pos_cnum - curr_p.Lexing.pos_bol in
  (line, col)
let get_parse_error env =
    match MI.stack env with
    | lazy Nil -> "Erreur de syntaxe"
    | lazy (Cons (MI.Element (state, _, _, _), _)) ->
        try (Mcparser_messages.message (MI.number state)) with
        | Not_found -> "Erreur de syntaxe"

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
      let line, pos = get_pos lexbuf in
      let err = get_parse_error _env in
      raise (SyntaxError (Some (line, pos), err))
  | MI.Accepted v -> v
  | MI.Rejected ->
       raise (SyntaxError (None, "Erreur de sytaxe"))


let () = 
  let cin = open_in Sys.argv.(1) in
  let lexbuf = Lexing.from_channel cin in
  let res =
    try Ok (parse lexbuf (Mcparser.Incremental.program lexbuf.lex_curr_p))
    with SyntaxError (pos, err) ->
      match pos with
        | Some (line, col) -> Error (sprintf "Erreur de syntaxe: %d:%d %s" line col err)
        | None -> Error (sprintf "Erreur de syntaxe: %s" err)
  in
  match res with
    | Ok prog ->
        if Lexer.verbose then printf "\n%s\n" (progToString prog);
        if check_type_prog prog 
        then (
          printf "Bien typé !\n";
          printf "\n---Interpretation---\n\n";
          Interpreter.eval_prog prog;
          exit 0
        );
        eprintf "Mal type, sans levee d'exception (ne devrait pas arriver)"; exit 1
    | Error err -> eprintf "Erreur de compilation sur: %s\n\t%s" Sys.argv.(1) err; exit 1
