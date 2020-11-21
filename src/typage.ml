open Types

let rec type_expr (e : expr) (env : env) : typ =
  match e with
  | Cst _ -> Int
  | Add (e1, e2) ->
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      if t1 = Int && t2 = Int then Int else raise TypeError
  | Mul (e1, e2) ->
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      if t1 = Int && t2 = Int then Int else raise TypeError
  | Lt (e1, e2) -> 
    let t1 = type_expr e1 env in
    let t2 = type_expr e2 env in
    if t1 = Int && t2 = Int then Bool else raise TypeError
  | Get x -> Hashtbl.find env x
  | Call (f, a) -> Int (* todo *)

let rec check_type_intr (i : instr) (env : env) (type_fun : typ): bool =
  match i with
  | Putchar e -> 
      type_expr e env = Int
  | Set(s, e) -> 
      Hashtbl.find env s = type_expr e env
  | If(c, b1, b2) ->
      if type_expr c env = Bool 
      then List.for_all (fun i -> check_type_intr i env type_fun) b1
           && List.for_all (fun i -> check_type_intr i env type_fun) b2
      else raise TypeError
  | While(c, b) -> 
    if type_expr c env = Bool 
    then List.for_all (fun i -> check_type_intr i env type_fun) b
    else raise TypeError
  | Return e ->
      begin match type_expr e env, type_fun with
      | Int, Int -> true
      | Bool, Bool -> true
      | _ -> raise TypeError
      end
  | Expr e -> type_expr e env = Void

let rec check_type_fun (f : fun_def) (env : env) : bool =
  List.iter (fun (s, t) -> Hashtbl.add env s t) f.params; 
  List.iter (fun (s, t) -> Hashtbl.add env s t) f.locals; 
  let res = match f.return with
  | Int -> List.for_all (fun i -> check_type_intr i env Int) f.code
  | Bool -> List.for_all (fun i -> check_type_intr i env Bool) f.code
  | Void -> List.for_all (fun i -> check_type_intr i env Void) f.code
  in
  List.iter (fun (s, _) -> Hashtbl.remove env s) f.params; 
  List.iter (fun (s, _) -> Hashtbl.remove env s) f.locals;
  res

let rec check_type_prog (p : prog) : bool = 
  let env = Hashtbl.create 100 in
  List.iter (fun (s, t) -> Hashtbl.add env s t) p.globals; 
  List.for_all (fun f -> check_type_fun f env) p.functions