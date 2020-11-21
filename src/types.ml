type typ =
  | Int
  | Bool
  | Void

type expr =
  | Cst  of int
  | Bool of bool
  | Add  of expr * expr
  | Sub  of expr * expr
  | Mul  of expr * expr
  | Eq   of expr * expr
  | Neq  of expr * expr
  | Lt   of expr * expr
  | Gt   of expr * expr
  | And  of expr * expr
  | Or   of expr * expr
  | Not  of expr
  | Get  of string
  | Call of string * expr list

type instr =
  | Putchar of expr
  | Set     of string * expr
  | If      of expr * seq * seq
  | While   of expr * seq
  | Return  of expr
  | Expr    of expr
and seq = instr list

type fun_def = {
  name:   string;
  params: (string * typ) list;
  return: typ;
  locals: (string * typ) list;
  code:   seq;
}

type prog = {
  globals:   (string * typ) list;
  functions: fun_def list;
}

type env = (string, typ) Hashtbl.t
type fun_env = (string, fun_def) Hashtbl.t

exception Eof
exception TypeError of string