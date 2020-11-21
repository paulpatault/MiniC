open Types

let space = ref 1

let pspace () = 
  for i=0 to !space do 
    Printf.printf " "
  done

let typeToString t = 
  match t with 
  | Int  -> "int"
  | Bool -> "bool"
  | Void -> "void"

let rec print_expr e = 
  match e with 
  | Cst n          -> Printf.printf "%d" n
  | Add (e1, e2)   -> print_expr e1; Printf.printf " + "; print_expr e2
  | Mul (e1, e2)   -> print_expr e1; Printf.printf " * "; print_expr e2
  | Lt  (e1, e2)   -> print_expr e1; Printf.printf " + "; print_expr e2
  | Get s          -> Printf.printf "%s" s
  | Call (s, expL) -> 
    Printf.printf "%s(" s;  
    List.iter (fun e -> print_expr e; Printf.printf ",") expL;
    Printf.printf ")"

let rec exprToString e = 
  match e with 
  | Cst n          -> string_of_int n
  | Add (e1, e2)   -> (exprToString e1) ^ " + " ^ (exprToString e2)
  | Mul (e1, e2)   -> (exprToString e1) ^ " * " ^ (exprToString e2)
  | Lt  (e1, e2)   -> (exprToString e1) ^ " < " ^ (exprToString e2)
  | Get s          -> s
  | Call (s, expL) -> 
    let m = List.fold_left (fun acc e -> acc ^ exprToString e  ^ ",") "" expL in 
    s ^ "(" ^ m  ^ ")"

let rec print_instr i =
  pspace ();
  match i with
  | Putchar e -> Printf.printf "Putchar("; print_expr e; Printf.printf ");"
  | Set (s, e) -> Printf.printf "Set(%s : " s; print_expr e; Printf.printf ");"
  | If (cond, seq1, seq2) -> 
    Printf.printf "If("; print_expr cond;  Printf.printf ") {\n"; 
    pspace ();
    List.iter (fun e -> print_instr e; Printf.printf "\n") seq1;
    pspace ();
    Printf.printf "} else {\n";
    List.iter (fun e -> pspace (); print_instr e; Printf.printf "\n") seq2;
    pspace (); Printf.printf "}";
    decr space
  | While (e, seq) -> 
    Printf.printf "While("; print_expr e;  Printf.printf ") {\n"; 
    List.iter (fun e -> print_instr e; Printf.printf "\n") seq;
    Printf.printf "}";
    decr space
  | Return e -> Printf.printf "return ("; print_expr e; Printf.printf ");"
  | Expr e -> print_expr e

let rec print_fun f = 
  Printf.printf "%s %s(" (typeToString f.return) (f.name);
  List.iter (fun (s, t) -> Printf.printf "%s %s," (typeToString t) s) f.params;
  Printf.printf ") {\n";
  incr space; 
  List.iter (fun (s, t) -> pspace (); Printf.printf "%s %s\n" (typeToString t) s) f.locals;
  List.iter (fun e -> print_instr e; Printf.printf "\n") f.code;
  Printf.printf "}\n";
  decr space

let print_glob (s, t) =
  Printf.printf "%s %s\n" (typeToString t) s

let rec print_prog p =
  Printf.printf "\n---Globals---\n";
  List.iter print_glob p.globals;
  Printf.printf "\n---Functions---\n";
  List.iter print_fun p.functions