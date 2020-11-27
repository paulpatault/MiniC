open Types

val type_expr : expr -> env -> fun_env -> typ 
val check_type_intr : instr -> env -> typ -> fun_env -> bool
val check_type_fun : fun_def -> env -> fun_env -> bool
val check_type_prog : prog -> bool
