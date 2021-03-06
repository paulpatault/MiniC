open Types

val red_error : string
val nc_error : string
val typeToString : typ -> string
val exprToString : expr -> string
val instrToString : instr -> string
val funToString : fun_def -> string
val globToString : (string * typ) -> string
val progToString : prog -> string
