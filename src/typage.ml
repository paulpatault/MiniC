open Types
open Printf
open Printer

let type_sub_struct x ext env =
  let rec aux lext type_acc name =
    match lext with
    | [] -> type_acc
    | cur_ext::k -> 
        begin 
          try 
            let list_curr_ext = Hashtbl.find env.st name in 
            let typ_curr_ext = List.assoc cur_ext list_curr_ext in
            begin match typ_curr_ext with
            | Struct name -> aux k typ_curr_ext name
            | typ -> typ
            end
          with Not_found -> 
            raise 
              ( TypeError (sprintf 
                "Le champs [%s] appelee n'existe pas dans la structure [%s]" 
                cur_ext (typeToString type_acc))) 
        end
  in
  try 
    begin match Hashtbl.find (env.gl) x with
    | Struct name -> aux ext (Struct name) name 
    | _ -> raise (TypeError "jsp encore")
    end
  with Not_found -> raise ( TypeError (sprintf "La variable [%s] appelee n'existe pas" x)) 
 
let rec type_expr (e : expr) (env : env): typ =
  match e with
  | Cst _ -> Int
  | Bool _ -> Bool
  | Dereferencing e -> 
      begin match type_expr e env with
      | Pointeur p -> p
      | _          -> raise ( TypeError "Tentative de dereferencement d'une expression qui n'est pas un pointeur" )
      end
  | Addr e -> 
      begin match e with
      | Get _ -> Pointeur(type_expr e env)
      | _     -> raise ( TypeError "Tentative d'acces a l'adresse d'une expression qui n'est pas une variable" )
      end
  | Add (e1, e2) | Sub (e1, e2) | Mul (e1, e2) | Div (e1, e2) ->
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      if t1 = Int && t2 = Int then Int 
      else raise ( TypeError (sprintf "Operation arithmetique entre un [%s] et un [%s]" (typeToString t1) (typeToString t2) ))
  | Lt (e1, e2) | Le (e1, e2) | Gt (e1, e2) | Ge (e1, e2) | Eq (e1, e2) | Neq (e1, e2) -> 
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      if t1 = Int && t2 = Int then Bool
      else raise ( TypeError (sprintf "Comparaison entre un [%s] et un [%s]" (typeToString t1) (typeToString t2) ))
  | And (e1, e2) | Or (e1, e2) -> 
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      if t1 = Bool && t2 = Bool then Bool
      else raise ( TypeError (sprintf "Operation logique entre un [%s] et un [%s]" (typeToString t1) (typeToString t2)))
  | Not e -> 
      let t = type_expr e env in
      if t = Bool then Bool
      else raise ( TypeError (sprintf "Not avec un %s" (typeToString t)))
  | Get x -> 
      begin try Hashtbl.find (env.gl) x 
      with Not_found -> raise ( TypeError (sprintf "La variable [%s] appelee n'existe pas" x)) 
      end
  | GetStruct (x, ext) ->
      (*TODO*)
      Printf.printf "%s\n" (exprToString e);
      type_sub_struct x ext env
  | Call (f, a) ->
      try
        let func = Hashtbl.find env.fu f in 
        let params_typ = List.fold_left (fun acc e -> (type_expr e env) :: acc) [] a in
        let btype = List.for_all2 (fun t1 (_, t2) -> t1 = t2) params_typ func.params in
        if btype then func.return
        else raise ( TypeError ("Parametre mal type"))
      with Not_found -> raise ( TypeError (sprintf "La fonction [%s] appelee n'existe pas" f )) 
          | Invalid_argument _ -> raise ( TypeError ("Le nombre d'argmuent ne correspond pas avec la definition de la fonction" ))
 

let rec check_type_intr (i : instr) (env : env) (type_fun : typ): bool =
  match i with
  | Putchar e ->
      let t = type_expr e env in 
      if t = Int then true
      else raise (TypeError (sprintf "La fonction putchar attend un [int] mais un [%s] lui a ete donnee" (typeToString t)))
  | Set(x, e) ->
      let te = type_expr e env in
      begin try 
        let ts = Hashtbl.find env.gl x in 
        if ts = te then true
        else raise ( TypeError (sprintf "La variable [%s] de type [%s] est assigee a un [%s]" x (typeToString ts) (typeToString te)))
      with Not_found -> raise ( TypeError (sprintf "La variable [%s] appelee n'existe pas" x)) 
      end
  | If(c, b1, b2) ->
      if type_expr c env = Bool 
      then (
          let bb1 = List.for_all (fun i -> check_type_intr i env type_fun) b1 in
          let bb2 = List.for_all (fun i -> check_type_intr i env type_fun) b2 in
          if bb1 
          then
            if bb2 then true
            else raise (TypeError (sprintf "Il y a une erreur dans le block du if(%s)" (exprToString c)) )
          else raise (TypeError (sprintf "Il y a une erreur dans le block (else) du if(%s)" (exprToString c)) )
        )
      else raise (TypeError (sprintf "L'expression %s aurait du etre un [boolean]" (exprToString c) ) )
  | While(c, b) -> 
      if type_expr c env = Bool 
      then List.for_all (fun i -> check_type_intr i env type_fun) b
      else raise (TypeError (sprintf "L'expression %s aurait du etre un [boolean]" (exprToString c) ) )
  | Return e ->
      let te = type_expr e env in
      if te = type_fun then true
      else raise ( TypeError (sprintf "La fonction de type [%s] retourne un [%s]" (typeToString type_fun) (typeToString te) ))
  | Expr e -> let _ = type_expr e env in true
  | SetSubStruct (x, ext, e) -> 
      let te = type_expr e env in
      let ts = type_sub_struct x ext env in
      if te = ts then true
      else raise ( TypeError (sprintf "La variable [%s] de type [%s] est assigee a un [%s]" x (typeToString ts) (typeToString te)) )
  
let check_type_fun (f : fun_def) (env : env): bool =
  List.iter (fun (s, t) -> Hashtbl.add env.gl s t) f.params; 
  List.iter (fun (s, t) -> Hashtbl.add env.gl s t) f.locals; 
  let res = List.for_all (fun i -> check_type_intr i env f.return) f.code in
  List.iter (fun (s, _) -> Hashtbl.remove env.gl s) f.locals;
  List.iter (fun (s, _) -> Hashtbl.remove env.gl s) f.params; 
  res

let init_env (p : prog): env = 
  let glo_env = Hashtbl.create 100 in
  let fun_env = Hashtbl.create 100 in
  let str_env = Hashtbl.create 100 in
  List.iter (fun (s, t) -> Hashtbl.add glo_env s t) p.globals;
  List.iter (fun e -> Hashtbl.add fun_env e.name e) p.functions;
  List.iter (fun (name, core) -> Hashtbl.add str_env name core) p.structs;
  (*List.iter (fun (_, core) -> List.iter (fun (n, _) -> Printf.printf "%s\n" n) core ) p.structs;*)
  {st=str_env; gl=glo_env; fu=fun_env}

let check_main (fl : fun_def list): bool = 
  List.exists (fun f -> f.name = "main") fl

let check_type_prog (p : prog) : bool = 
  let env = init_env p in
  if check_main p.functions 
  then List.for_all (fun f -> check_type_fun f env) p.functions
  else raise (Undefined_Symbol ("Il n'y a pas de fonction [main]"))
