open Types

val type_expr : expr -> env -> typ 
val check_type_intr : instr -> env -> typ -> bool
val check_type_fun : fun_def -> env -> bool
val check_type_prog : prog -> bool
