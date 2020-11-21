
(* The type of tokens. *)

type token = 
  | WHILE_KW
  | VOID_KW
  | STAR
  | SLASH
  | SET
  | SEMI
  | RPAR
  | RETURN_KW
  | RBRACE
  | PUTCHAR_KW
  | PLUS
  | OR
  | NOT
  | NEQ
  | MINUS
  | LT
  | LPAR
  | LE
  | LBRACE
  | INT_KW
  | IF_KW
  | IDENT of (string)
  | GT
  | GE
  | EOF
  | ELSE_KW
  | DOUBLE_EQ
  | CST of (int)
  | COMMA
  | BOOL_KW
  | BOOL of (bool)
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.prog)
