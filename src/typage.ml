open Types
open Printer

let rec type_expr (e : expr) (env : env) (fun_env : fun_env): typ =
  match e with
  | Cst _ -> Int
  | Bool _ -> Bool
  | Add (e1, e2) | Sub (e1, e2) | Mul (e1, e2) ->
      let t1 = type_expr e1 env fun_env in
      let t2 = type_expr e2 env fun_env in
      if t1 = Int && t2 = Int then Int 
      else raise ( TypeError ("Operation entre un "^(typeToString t1)^" et un "^(typeToString t2) ))
  | Lt (e1, e2) | Le (e1, e2) | Gt (e1, e2) | Ge (e1, e2) | Eq (e1, e2) | Neq (e1, e2) -> 
      let t1 = type_expr e1 env fun_env in
      let t2 = type_expr e2 env fun_env in
      if t1 = Int && t2 = Int then Bool
      else raise ( TypeError ("Comparaison entre un "^(typeToString t1)^" et un "^(typeToString t2) ))
  | And (e1, e2) -> 
      let t1 = type_expr e1 env fun_env in
      let t2 = type_expr e2 env fun_env in
      if t1 = Bool && t2 = Bool then Bool
      else raise ( TypeError ("AND entre un "^(typeToString t1)^" et un "^(typeToString t2) ))
  | Or (e1, e2) -> 
      let t1 = type_expr e1 env fun_env in
      let t2 = type_expr e2 env fun_env in
      if t1 = Bool && t2 = Bool then Bool
      else raise ( TypeError ("OR entre un "^(typeToString t1)^" et un "^(typeToString t2) ))
  | Not e -> 
      let t = type_expr e env fun_env in
      if t = Bool then Bool
      else raise ( TypeError ("Not avec un "^(typeToString t)))
  | Get x -> 
      Hashtbl.find env x
  | Call (f, a) ->
      try
        let func = Hashtbl.find fun_env f in 
        let params_typ = List.fold_left (fun acc e -> (type_expr e env fun_env) :: acc) [] a in
        let btype = List.for_all2 (fun t1 (_, t2) -> t1 = t2) params_typ func.params in
        if btype then func.return
        else raise ( TypeError ("Parametre mal type")) 
      with Not_found -> raise ( TypeError ("La fonction [" ^ f ^ "] appelee n'existe pas" )) 
          | Invalid_argument _ -> raise ( TypeError ("Le nombre de parametre le correspond pas avec la definition de la fonction" ))

let rec check_type_intr (i : instr) (env : env) (type_fun : typ) (fun_env : fun_env): bool =
  match i with
  | Putchar e -> 
      type_expr e env fun_env = Int
  | Set(s, e) -> 
      Hashtbl.find env s = type_expr e env fun_env
  | If(c, b1, b2) ->
      if type_expr c env fun_env = Bool 
      then List.for_all (fun i -> check_type_intr i env type_fun fun_env) b1
           && List.for_all (fun i -> check_type_intr i env type_fun fun_env) b2
      else raise (TypeError ("L'expression suivante aurait du etre un boolean : " ^ exprToString c) )
  | While(c, b) -> 
      if type_expr c env fun_env = Bool 
      then List.for_all (fun i -> check_type_intr i env type_fun fun_env) b
      else raise (TypeError ("L'expression suivante aurait du etre un boolean : " ^ exprToString c) )
  | Return e ->
      begin match type_expr e env fun_env, type_fun with
      | Int, Int -> true
      | Bool, Bool -> true
      | t1, t2 -> raise ( TypeError ("La fonction rend un "^(typeToString t1)^" au lien d'un "^(typeToString t2) ))

      end
  | Expr e -> type_expr e env fun_env = Void

let rec check_type_fun (f : fun_def) (env : env) (fun_env : fun_env): bool =
  List.iter (fun (s, t) -> Hashtbl.add env s t) f.params; 
  List.iter (fun (s, t) -> Hashtbl.add env s t) f.locals; 
  let res = match f.return with
  | Int -> List.for_all (fun i -> check_type_intr i env Int fun_env) f.code
  | Bool -> List.for_all (fun i -> check_type_intr i env Bool fun_env) f.code
  | Void -> List.for_all (fun i -> check_type_intr i env Void fun_env) f.code
  in
  List.iter (fun (s, _) -> Hashtbl.remove env s) f.params; 
  List.iter (fun (s, _) -> Hashtbl.remove env s) f.locals;
  res

let rec check_type_prog (p : prog) : bool = 
  let env = Hashtbl.create 100 in
  let fun_env = Hashtbl.create 100 in
  List.iter (fun (s, t) -> Hashtbl.add env s t) p.globals;
  List.iter (fun e -> Hashtbl.add fun_env e.name e) p.functions; 
  List.for_all (fun f -> check_type_fun f env fun_env) p.functions