
(* The type of tokens. *)

type token = 
  | WHILE
  | TYPVOID
  | TYPINT
  | TYPBOOL
  | STAR
  | SET
  | SEMI
  | RPAR
  | RETURN
  | PUTCHAR
  | PLUS
  | MINUS
  | LT
  | LPAR
  | IF
  | IDENT of (string)
  | EOF
  | END
  | ELSE
  | CST of (int)
  | COMMA
  | BOOL of (bool)
  | BEGIN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.prog)
