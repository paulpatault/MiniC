type typ =
  | Int
  | Bool
  | Void
  | Float
  | Pointeur of typ
  | Struct of string

type expr =
  | Cst           of int
  | FCst          of float
  | Bool          of bool
  | Dereferencing of expr
  | Addr          of expr
  | Add           of expr * expr
  | Sub           of expr * expr
  | Mul           of expr * expr
  | Div           of expr * expr
  | Eq            of expr * expr
  | Neq           of expr * expr
  | Lt            of expr * expr
  | Le            of expr * expr
  | Gt            of expr * expr
  | Ge            of expr * expr
  | And           of expr * expr
  | Or            of expr * expr
  | Not           of expr
  | Get           of string
  | Call          of string * expr list
  | GetStruct     of expr * string
  | GetStructPtr  of expr * string
  | Cast          of typ * expr


type instr =
  | Putchar      of expr
  | Set          of expr * expr
  | If           of expr * seq * seq
  | While        of expr * seq
  | For          of instr * expr * instr * seq
  | Return       of expr
  | Expr         of expr
and seq = instr list

type fun_def = {
  name:   string;
  params: (string * typ) list;
  return: typ;
  locals: (string * typ) list;
  code:   seq;
}

type prog = {
  structs: (string * (string * typ) list) list;
  globals: (string * typ) list;
  functions: fun_def list;
}


exception Eof
exception TypeError of string
exception Undefined_Symbol of string
