open Types

type 't opi = int -> int -> 't
type 't opf = float -> float -> 't
type opb = bool -> bool -> bool

type value =
    | Int    of int
    | Float  of float
    | VBool  of bool 
    | Ptr    of value
    | Struct of (string * value) list
    | Null
  
type env = {
  vars: (string, value) Hashtbl.t;
  funcs: (string, Types.fun_def) Hashtbl.t;
  mutable return: value; 
}


let eval_cast (dest: typ) (source: value): value = 
  match dest, source with
  | Float, Int n -> Float (float_of_int n) 
  | Int, Float f -> Int (truncate f)
  | Bool, Int n -> VBool (n = 0)
  | Bool, Float f -> VBool (f = 0.)
  | _ -> failwith "Erreur de cast pendant l'interpretation (ne devrait pas arriver)" 

let eval_op (v1: value) (v2: value) (op: int opi) (fop: float opf): value = 
  match v1, v2 with
  | Int n1, Int n2 -> Int (op n1 n2)
  | Float f, Int n -> Float (fop f ((float)n))
  | Int n, Float f -> Float (fop f ((float)n))
  | Float f1, Float f2 -> Float (fop f1 f2)
  | _ -> failwith "Erreur avec une operation pendant l'interpretation (ne devrait pas arriver)" 

let eval_comp (v1: value) (v2: value) (op: bool opi) (fop: bool opf): value = 
  match v1, v2 with
  | Int n1, Int n2 -> VBool(op n1 n2)
  | Float f, Int n -> VBool(fop f ((float)n))
  | Int n, Float f -> VBool(fop f ((float)n))
  | Float f1, Float f2 -> VBool(fop f1 f2)
  | _ -> failwith "Erreur avec une comparaison pendant l'interpretation (ne devrait pas arriver)" 

let eval_bool_op (v1: value) (v2: value) (op: opb): value = 
  match v1, v2 with
  | VBool b1, VBool b2 -> VBool (op b1 b2) 
  | _ -> failwith "Erreur avec une operation pendant l'interpretation (ne devrait pas arriver)" 

let eval_bool_un (v: value) (op: bool -> bool): value = 
  match v with 
  | VBool b -> VBool (op b)
  | _ -> failwith "Erreur avec un not(...) (ne devrait pas arriver)"


let rec eval_expr (e : expr) (env : env): value =
  match e with
  | Cst n           -> Int n
  | FCst f          -> Float f
  | Bool b          -> VBool b
  | Dereferencing e' ->
      begin match eval_expr e' env with
      | Ptr e' -> e'
      | _ -> failwith "Erreur de dereferencement (ne devrait pas arriver)"
      end
  | Addr e          -> Ptr (eval_expr e env)
  | Cast(t, e)      -> eval_cast t (eval_expr e env)
  | Add (e1, e2)    -> eval_op (eval_expr e1 env) (eval_expr e2 env) (+) (+.)
  | Sub (e1, e2)    -> eval_op (eval_expr e1 env) (eval_expr e2 env) (-) (-.)
  | Mul (e1, e2)    -> eval_op (eval_expr e1 env) (eval_expr e2 env) (fun a b -> a * b) (fun a b -> a *.b)
  | Div (e1, e2)    -> eval_op (eval_expr e1 env) (eval_expr e2 env) (/) (/.)
  | Lt (e1, e2)     -> eval_comp (eval_expr e1 env) (eval_expr e2 env) (<) (<) 
  | Le (e1, e2)     -> eval_comp (eval_expr e1 env) (eval_expr e2 env) (<=) (<=)
  | Gt (e1, e2)     -> eval_comp (eval_expr e1 env) (eval_expr e2 env) (>) (>)
  | Ge (e1, e2)     -> eval_comp (eval_expr e1 env) (eval_expr e2 env) (>=) (>=)
  | Eq (e1, e2)     -> eval_comp (eval_expr e1 env) (eval_expr e2 env) (=) (=)
  | Neq (e1, e2)    -> eval_comp (eval_expr e1 env) (eval_expr e2 env) (<>) (<>)
  | And (e1, e2)    -> eval_bool_op (eval_expr e1 env) (eval_expr e2 env) (||)
  | Or (e1, e2)     -> eval_bool_op (eval_expr e1 env) (eval_expr e2 env) (&&)
  | Not e           -> eval_bool_un (eval_expr e env) (not)
  | Get name        ->
      begin try Hashtbl.find (env.vars) name
      with Not_found -> failwith "Erreur d'acces a une variable (ne devrait pas arriver)" end
  | GetStruct _ | GetStructPtr _ -> 
      failwith "Non implemente"
  | Call (f, a) -> 
      match eval_call f a env with
      | Some v -> v
      | None -> Null


and get_id x =
  match x with
  | Get name           -> name
  | Dereferencing name -> get_id name
  | GetStruct _ | GetStructPtr _ -> 
      failwith "Non implemente"
  | _ -> failwith "Erreur d'acces (ne devrait pas arriver)"


and eval_call (name: string) (args: expr list) (env: env): value option =

  let f = Hashtbl.find (env.funcs) name in
  List.iter2 (fun e1 e2 -> Hashtbl.add (env.vars) (fst e1) (eval_expr e2 env)) f.params args;
  List.iter (
    fun ((s, t): string * typ) ->
      match t with
      | Int                 -> Hashtbl.add (env.vars) s (Int 0)
      | Float               -> Hashtbl.add (env.vars) s (Float 0.)
      | Bool                -> Hashtbl.add (env.vars) s (VBool false)
      | Void                -> failwith "Erreur: variable de type void"
      | Pointeur (Struct _ )
      | Pointeur _          -> failwith "Non implemente"
      | Struct _            -> Hashtbl.add (env.vars) s (Struct [])
    ) f.locals;

  let _ = eval_seq (f.code) env in 
  List.iter (fun e -> Hashtbl.remove (env.vars) (fst e)) f.locals;
  List.iter (fun e -> Hashtbl.remove (env.vars) (fst e)) f.params;
  match f.return with
  | Int | Bool | Float | Pointeur _ | Struct _ -> 
      Some env.return
  | Void       -> None


and eval_instr (i : instr) (env: env): bool =
  match i with
  | Putchar e -> 
      begin match eval_expr e env with
      | Int n -> print_int n; print_newline (); false
      | _     -> failwith "13"
      end
  | Set(x, e) ->

      let name = get_id x in

      begin try 
        let x = Hashtbl.find (env.vars) name in
        match x with
        | Struct _ | Ptr (Struct _) -> failwith "Non implemente"
        | _ -> raise Not_found 

      with Not_found -> Hashtbl.replace (env.vars) name (eval_expr e env); false
      end


  | If(cond, b1, b2) ->
      begin match eval_expr cond env with
      | VBool b -> 
        if b then eval_seq b1 env
        else eval_seq b2 env
      | _ -> failwith "14" 
      end
  | While(cond, b) -> 
      begin match eval_expr cond env with
      | VBool b' -> if b' then eval_seq (b@[While(cond, b)]) env else false
      | _        -> failwith "15"
      end
  | For(e1, cond, e2, b) ->
      let _ = eval_instr e1 env in
      begin match eval_expr cond env with
      | VBool b' -> if b' then let _ = eval_instr (While(cond, b@[e2])) env in ()
      | _        -> failwith "16"
      end;
      false
  | Return e -> env.return <- eval_expr e env; true
  | Expr e -> let _ = eval_expr e env in false

and eval_seq (s: seq) (env: env): bool = 
  match s with
  | [] -> false
  | e::k -> if eval_instr e env then true else eval_seq k env

let init_glob_vars agv env: unit = 
  List.iter (
    fun e ->
      match e with
      | Set(x, e') -> 
          let name = get_id x in
          Hashtbl.replace (env.vars) name (eval_expr e' env)
      | _ -> failwith "17"
  ) agv.code


let init_env (p : prog): env = 
  let vars = Hashtbl.create 100 in
  let funcs = Hashtbl.create 100 in
  let return = Null in
  List.iter (
    fun ((s, t): string * typ) ->
      match t with
      | Int         -> Hashtbl.add vars s (Int 0)
      | Float       -> Hashtbl.add vars s (Float 0.)
      | Bool        -> Hashtbl.add vars s (VBool false)
      | Void        -> failwith "18"
      | Pointeur (Struct _) -> failwith "Non implemente"
      | Pointeur _ -> Hashtbl.add vars s Null
      | Struct _   -> failwith "Non implemente"
    ) p.globals;
  List.iter (fun e -> Hashtbl.add funcs e.name e) p.functions;
  
  {vars; funcs; return}

let eval_prog (p : prog) : unit = 
  let env = init_env p in
  init_glob_vars (Hashtbl.find (env.funcs) "__assignGlobsVars") env;  
  let _ = eval_call "main" [] env in
  ()
