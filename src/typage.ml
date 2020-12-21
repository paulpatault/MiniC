open Types
open Printf
open Printer

let rec type_expr (e : expr) (env : env): typ =
  match e with
  | Cst _  -> Int
  | FCst _ -> Float
  | Bool _ -> Bool
  | Dereferencing e -> 
      begin match type_expr e env with
      | Pointeur p -> p
      | _          -> 
          raise ( TypeError (sprintf
            "\n\t%sErreur sur l'expression : %s%s\n\tTentative de dereferencement d'une expression qui n'est pas un pointeur\n"
            (red_error) (exprToString e) (nc_error)
         ))
      end
  | Addr e -> 
      begin match e with
      | Get _ -> Pointeur(type_expr e env)
      | _     -> 
          raise ( TypeError ( sprintf 
            "\n\t%sErreur sur l'expression : %s%s\n\tTentative d'acces a l'adresse d'une expression qui n'est pas une variable\n" 
            (red_error) (exprToString e) (nc_error)
          ))
      end
  | Cast(dest, source) ->
      let ts = type_expr source env in
      begin match dest, ts with
      | (Int|Float) as d, (Int|Float) -> d
      | Bool, (Int|Float) -> Bool
      | _ -> 
          raise ( TypeError ( sprintf 
            "\n\t%sErreur sur l'expression : %s%s\n\tMauvais cast : impossible de passer du type [%s] au type [%s]\n" 
            red_error (exprToString e) nc_error (typeToString ts) (typeToString dest) 
          ))
      end
  | Add (e1, e2) | Sub (e1, e2) | Mul (e1, e2) | Div (e1, e2) ->
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in 
      begin match t1, t2 with
      | Int, Int -> Int
      | (Int|Float), (Int|Float) -> Float
      | _ -> 
          raise ( TypeError (
            sprintf "\n\t%sErreur sur l'expression : %s%s\n\tOperation arithmetique entre un [%s] et un [%s]\n" 
            red_error (exprToString e) nc_error (typeToString t1) (typeToString t2) 
          ))
      end
  | Lt (e1, e2) | Le (e1, e2) | Gt (e1, e2) | Ge (e1, e2) | Eq (e1, e2) | Neq (e1, e2) -> 
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      begin match t1, t2 with
      | (Int|Float), (Int|Float) -> Bool
      | _ -> 
          raise ( TypeError ( sprintf 
            "\n\t%sErreur sur l'expression : %s%s\n\tComparaison entre un [%s] et un [%s]\n" 
            red_error (exprToString e ) nc_error (typeToString t1) (typeToString t2) 
      ))
      end
  | And (e1, e2) | Or (e1, e2) -> 
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      begin match t1, t2 with
      | Bool, Bool -> Bool
      | _ -> 
          raise ( TypeError ( sprintf 
            "\n\t%sErreur sur l'expression : %s%s\n\tOperation logique entre un [%s] et un [%s]\n" 
            red_error (exprToString e) nc_error (typeToString t1) (typeToString t2)
      ))
      end
  | Not e -> 
      let t = type_expr e env in
      if t = Bool then Bool
      else raise ( 
        TypeError (
          sprintf "\n\t%sErreur sur l'expression : %s%s\n\tNot avec un %s\n" 
          red_error (exprToString e) nc_error (typeToString t)
      ))
  | Get x -> 
      begin try Hashtbl.find (env.gl) x 
      with Not_found -> 
          raise ( TypeError ( sprintf 
              "\n\t%sErreur sur l'expression : %s%s\n\tLa variable [%s] appelee n'existe pas\n" 
              red_error (exprToString e) nc_error x
          )) 
      end
  | GetStructPtr (e1, ext) -> (*TODO*) 
      let te1 = type_expr (Dereferencing e1) env in
      begin match te1 with 
      | Struct name ->
          begin try 
            let exts = Hashtbl.find (env.st) name in
            List.assoc ext exts
          with Not_found -> raise ( TypeError "" )
          end
      | _ -> 
          raise ( TypeError ( sprintf 
            "\n\t%sErreur sur l'expression : %s%s\n\t%s n'est pas une structure et n'a donc pas de champs %s\n" 
            red_error (exprToString e) nc_error (typeToString te1) ext 
          ))
      end 
  | GetStruct (e1, ext) ->
      let te1 = type_expr e1 env in
      begin match te1 with 
      | Struct name ->
          begin try
            let exts = Hashtbl.find (env.st) name in
            List.assoc ext exts
          with Not_found -> raise ( TypeError "" )
          end
      | _ -> 
          raise ( TypeError ( sprintf 
            "\n\t%sErreur sur l'expression : %s%s\n\t%s n'est pas une structure et n'a donc pas de champs %s\n" 
            red_error (exprToString e) nc_error (typeToString te1) ext 
          ))
      end 

  | Call (f, a) ->
      try
        let func = Hashtbl.find env.fu f in 
        let params_typ = List.fold_left (fun acc e -> (type_expr e env) :: acc) [] a in
        let btype = List.for_all2 (fun t1 (_, t2) -> t1 = t2) (List.rev params_typ) func.params in
        if btype then func.return
        else raise ( TypeError ( sprintf 
          "\n\t%sErreur sur l'expression : %s%s\n\tParametre mal type\n"
          red_error (exprToString e) nc_error
        ))
      with Not_found -> 
        raise ( TypeError ( sprintf 
          "\n\t%sErreur sur l'expression : %s%s\n\tLa fonction [%s] appelee n'existe pas\n" 
          red_error (exprToString e) nc_error f 
        )) 
          | Invalid_argument _ -> 
              raise ( TypeError ( sprintf
                "\n\t%sErreur sur l'expression : %s%s\n\tLe nombre d'argument ne correspond pas avec la definition de la fonction\n" 
                red_error (exprToString e) nc_error
              ))
 

let rec check_type_intr (i : instr) (env : env) (type_fun : typ): bool =
  match i with
  | Putchar e ->
      let t = type_expr e env in 
      if t = Int then true
      else raise ( TypeError ( sprintf 
        "\n\t%sErreur sur l'instruction : %s%s\n\tLa fonction putchar attend un [int] mais un [%s] lui a ete donnee\n" 
        red_error (instrToString i) nc_error (typeToString t)
      ))
  | Set(x, e) ->
      let te = type_expr e env in
      let tx = type_expr x env in 
      if tx = te then true
      else raise ( TypeError ( sprintf 
        "\n\t%sErreur sur l'instruction : %s%s\n\tLa variable %s est de type [%s] mais un [%s] lui a ete donnee\n" 
        red_error (instrToString i) nc_error (exprToString x) (typeToString tx) (typeToString te) 
      ))
  | If(c, b1, b2) ->
      if type_expr c env = Bool 
      then (
          let bb1 = List.for_all (fun i -> check_type_intr i env type_fun) b1 in
          let bb2 = List.for_all (fun i -> check_type_intr i env type_fun) b2 in
          if bb1 
          then
            if bb2 then true
            else raise (TypeError (sprintf "\n\tIl y a une erreur dans le block du if(%s)\n" (exprToString c)) )
          else raise (TypeError (sprintf "\n\tIl y a une erreur dans le block else du if(%s)\n" (exprToString c)) )
        )
      else raise ( TypeError ( sprintf
        "\n\tL'expression %s aurait du etre un [boolean]\n" 
        (exprToString c) 
      ))
  | While(c, b) -> 
      if type_expr c env = Bool 
      then List.for_all (fun i -> check_type_intr i env type_fun) b
      else raise ( TypeError ( sprintf 
        "\n\tL'expression %s aurait du etre un [boolean]\n" 
        (exprToString c) 
      ))
  | For(i1, c, i2, b) -> 
      if not (check_type_intr i1 env type_fun) 
      then raise ( TypeError ( sprintf 
        "\n\tErreur sur l'instruction : %s\n" 
        (instrToString i)
      ))
      else if not (check_type_intr i2 env type_fun) 
        then raise ( TypeError ( sprintf
          "\n\tErreur sur l'instruction : %s\n" 
          (instrToString i)
        )) 
      else 
        if type_expr c env = Bool 
        then List.for_all (fun i -> check_type_intr i env type_fun) b
        else raise ( TypeError ( sprintf 
          "\n\tL'expression %s aurait du etre un [boolean]\n" 
          (exprToString c) 
        ))
  | Return e ->
      let te = type_expr e env in
      if te = type_fun then true
      else raise ( TypeError ( sprintf 
        "\n\tLa fonction de type [%s] retourne un [%s]\n" 
        (typeToString type_fun) (typeToString te) 
      ))
  | Expr e -> let _ = type_expr e env in true

       
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
  {st=str_env; gl=glo_env; fu=fun_env}

let check_main (fl : fun_def list): bool = 
  List.exists (fun f -> f.name = "main") fl

let check_type_prog (p : prog) : bool = 
  let env = init_env p in
  if check_main p.functions 
  then List.for_all (fun f -> check_type_fun f env) p.functions
  else raise (Undefined_Symbol ("\n\tIl n'y a pas de fonction [main]\n"))
