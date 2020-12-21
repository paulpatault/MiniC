open Types
open Printf
open Printer

type 't opi = int -> int -> 't
type 't opf = float -> float -> 't
type opb = bool -> bool -> bool

type value =
    | Int of int
    | Float of float
    | VBool of bool 
    | Ptr of value
    | Null

type env = {
  vars: (string, value) Hashtbl.t;
  funcs: (string, Types.fun_def) Hashtbl.t;
}


let eval_cast (dest: typ) (source: value): value = 
  match dest, source with
  | Float, Int n -> Float (float_of_int n) 
  | Int, Float f -> Int (truncate f)
  | Bool, Int n -> VBool (n = 0)
  | Bool, Float f -> VBool (f = 0.)
  | _ -> failwith "?"

let eval_op (v1: value) (v2: value) (op: int opi) (fop: float opf): value = 
  match v1, v2 with
  | Int n1, Int n2 -> Int (op n1 n2)
  | Float f, Int n -> Float (fop f ((float)n))
  | Int n, Float f -> Float (fop f ((float)n))
  | Float f1, Float f2 -> Float (fop f1 f2)
  | _ -> failwith "?"

let eval_comp (v1: value) (v2: value) (op: bool opi) (fop: bool opf): value = 
  match v1, v2 with
  | Int n1, Int n2 -> VBool(op n1 n2)
  | Float f, Int n -> VBool(fop f ((float)n))
  | Int n, Float f -> VBool(fop f ((float)n))
  | Float f1, Float f2 -> VBool(fop f1 f2)
  | _ -> failwith "?"

let eval_bool_op (v1: value) (v2: value) (op: opb): value = 
  match v1, v2 with
  | VBool b1, VBool b2 -> VBool (op b1 b2) 
  | _ -> failwith "?"

let eval_bool_un (v: value) (op: bool -> bool): value = 
  match v with 
  | VBool b -> VBool (op b)
  | _ -> failwith "?"

let rec eval_expr (e : expr) (env : env): value =
  match e with
  | Cst n           -> Int n
  | FCst f          -> Float f
  | Bool b          -> VBool b
  | Dereferencing e -> eval_expr e env
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
  | Get x                 -> let _ = x in failwith "?"
  | GetStruct    (x, ext) -> let _ = x, ext in failwith "?"
  | GetStructPtr (x, ext) -> let _ = x, ext in failwith "?"
  | Call (f, a)           -> let _ = f, a in failwith "?"


 
let rec eval_instr (i : instr) (env: env): unit =
  match i with
  | Putchar e -> 
    begin match eval_expr e env with
    | Int n -> print_int n; print_newline ()
    | _     -> failwith "?"
    end
  | Set(x, e) ->
      Hashtbl.add (env.vars) (eval_expr x env) (eval_expr e env)
  | If(cond, b1, b2) ->
      begin match eval_expr cond env with
      | VBool b -> 
        if b then eval_seq b1 env
        else eval_seq b2 env
      | _ -> failwith "?" 
      end
  | While(cond, b) -> 
      begin match eval_expr cond env with
      | VBool b' -> if b' then eval_seq (b@[While(cond, b)]) env
      | _        -> failwith "?"
      end
  | For(e1, cond, e2, b) ->
      eval_instr e1 env; 
      begin match eval_expr cond env with
      | VBool b' -> if b' then eval_instr (While(cond, b@[e2])) env
      | _        -> failwith "?"
      end
  | Return e -> let _ = eval_expr e env in ()
  | Expr e -> let _ = eval_expr e env in ()

and eval_seq (s: seq) (env: env): unit = 
  List.iter (fun e -> eval_instr e env) s



let init_env (p : prog): env = 
  let vars= Hashtbl.create 100 in
  let funcs = Hashtbl.create 100 in
  List.iter (fun (s, _) -> Hashtbl.add vars s Null) p.globals;
  List.iter (fun e -> Hashtbl.add funcs e.name e) p.functions;
  {vars; funcs}

let eval_prog (p : prog) : unit = 
  let env = init_env p in
  let _ = env in
  ()
