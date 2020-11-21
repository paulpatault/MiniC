open Types

val typeToString : typ -> string
val print_expr : expr -> unit
val exprToString : expr -> string
val print_instr : instr -> unit
val print_fun : fun_def -> unit
val print_glob : (string * typ) -> unit
val print_prog : prog -> unit
