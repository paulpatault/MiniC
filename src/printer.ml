open Types
open Printf

let space = ref 1

let spaces () = String.make !space ' '

let typeToString t = 
  match t with 
  | Int  -> "int"
  | Bool -> "bool"
  | Void -> "void"

let rec exprToString e = 
  match e with 
  | Cst n          -> string_of_int n
  | Bool b         -> string_of_bool b
  | Add (e1, e2)   -> sprintf "%s + %s" (exprToString e1) (exprToString e2)
  | Sub (e1, e2)   -> sprintf "%s - %s" (exprToString e1) (exprToString e2)
  | Mul (e1, e2)   -> sprintf "%s * %s" (exprToString e1) (exprToString e2)
  | Div (e1, e2)   -> sprintf "%s / %s" (exprToString e1) (exprToString e2)
  | Lt  (e1, e2)   -> sprintf "%s < %s" (exprToString e1) (exprToString e2)
  | Le  (e1, e2)   -> sprintf "%s <= %s" (exprToString e1) (exprToString e2)
  | Gt  (e1, e2)   -> sprintf "%s > %s" (exprToString e1) (exprToString e2)
  | Ge  (e1, e2)   -> sprintf "%s >= %s" (exprToString e1) (exprToString e2)
  | And (e1, e2)   -> sprintf "%s and %s" (exprToString e1) (exprToString e2)
  | Or  (e1, e2)   -> sprintf "%s or %s" (exprToString e1) (exprToString e2)
  | Eq  (e1, e2)   -> sprintf "%s == %s" (exprToString e1) (exprToString e2)
  | Neq (e1, e2)   -> sprintf "%s != %s" (exprToString e1) (exprToString e2)
  | Not e          -> sprintf "Not %s" (exprToString e)
  | Get s          -> s
  | Call (name, argL) -> 
    (* let m = List.fold_left (fun acc e -> acc ^ exprToString e  ^ ",") "" expL in  *)
    let args = String.concat "," (List.map exprToString argL) in
    sprintf "%s(%s)" name args

let rec instrToString i =
  let res = ref (spaces ()) in
  match i with
  | Putchar e -> !res ^ sprintf "Putchar(%s);" (exprToString e)
  | Set (s, e) -> !res ^ sprintf "Set(%s : %s);" s (exprToString e)
  | If (cond, seq1, seq2) -> 
    res := !res ^ sprintf "If(%s){\n" (exprToString cond);

    let b1 = String.concat "\n" (List.map instrToString seq1) ^ "\n" in
    res := !res ^ spaces () ^ b1 ^ spaces () ^ "} else {\n";

    let b2 = String.concat "\n" (List.map (fun e -> spaces () ^ instrToString e) seq2) ^ "\n" in
    res := !res ^ b2 ^ spaces () ^ "}";
    decr space;
    !res

  | While (cond, seq) -> 
    res := !res ^ sprintf "While(%s){\n" (exprToString cond);
    let b = String.concat "\n" (List.map instrToString seq) ^ "\n" in
    res := !res ^ spaces () ^ b ^ spaces () ^ "}";
    decr space;
    !res
  | Return e -> sprintf "return(%s)" (exprToString e)
  | Expr e -> sprintf "%s" (exprToString e)

let rec funToString f = 
  let fdef = sprintf "%s %s(" (typeToString f.return) (f.name) in
  let params = List.fold_left (fun acc (s, t) -> acc ^ (sprintf "%s %s," (typeToString t) s)) "" f.params in
  let fin_def = sprintf ") {\n" in
  incr space; 
  let locals = List.fold_left (fun acc (s, t) -> acc ^ spaces () ^ sprintf "%s %s\n" (typeToString t) s) "" f.locals in
  let code = List.fold_left (fun acc e -> acc ^ instrToString e ^ "\n") "" f.code in
  decr space;
  fdef ^ params ^ fin_def ^ locals ^ code ^ "}\n"

let globToString (s, t) =
  sprintf "%s %s\n" (typeToString t) s

let rec progToString p =
  let entete1 =  "\n---Globals---\n" in
  let globs = String.concat "" (List.map globToString p.globals) in
  let entete2 =  "\n---Functions---\n" in
  let funcs = String.concat "" (List.map funToString p.functions) in
  entete1 ^ globs ^ entete2 ^ funcs
