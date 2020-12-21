open Types
open Printf

let red_error = "\027[0;31m"
let nc_error = "\027[0m"

let space = ref 1

let spaces () = String.make !space ' '


let rec typeToString t = 
  match t with 
  | Int   -> "int"
  | Float -> "float"
  | Bool  -> "bool"
  | Void  -> "void"
  | Pointeur t -> sprintf "pointeur(%s)" (typeToString t)
  | Struct name -> sprintf "struct %s" name


let rec exprToString e = 
  match e with 
  | Cst n           -> string_of_int n
  | FCst f          -> string_of_float f
  | Bool b          -> string_of_bool b
  | Dereferencing e -> sprintf "*%s" (exprToString e)
  | Addr e          -> sprintf "&%s" (exprToString e) 
  | Cast(t, e)      -> sprintf "(%s)%s" (typeToString t) (exprToString e) 
  | Add (e1, e2)    -> sprintf "%s + %s" (exprToString e1) (exprToString e2)
  | Sub (e1, e2)    -> sprintf "%s - %s" (exprToString e1) (exprToString e2)
  | Mul (e1, e2)    -> sprintf "%s * %s" (exprToString e1) (exprToString e2)
  | Div (e1, e2)    -> sprintf "%s / %s" (exprToString e1) (exprToString e2)
  | Lt  (e1, e2)    -> sprintf "%s < %s" (exprToString e1) (exprToString e2)
  | Le  (e1, e2)    -> sprintf "%s <= %s" (exprToString e1) (exprToString e2)
  | Gt  (e1, e2)    -> sprintf "%s > %s" (exprToString e1) (exprToString e2)
  | Ge  (e1, e2)    -> sprintf "%s >= %s" (exprToString e1) (exprToString e2)
  | And (e1, e2)    -> sprintf "%s and %s" (exprToString e1) (exprToString e2)
  | Or  (e1, e2)    -> sprintf "%s or %s" (exprToString e1) (exprToString e2)
  | Eq  (e1, e2)    -> sprintf "%s == %s" (exprToString e1) (exprToString e2)
  | Neq (e1, e2)    -> sprintf "%s != %s" (exprToString e1) (exprToString e2)
  | Not e           -> sprintf "Not %s" (exprToString e)
  | Get s           -> sprintf "%s" s
  | GetStruct (name, ext)    -> sprintf "%s.%s" (exprToString name) ext
  | GetStructPtr (name, ext) -> sprintf "%s->%s" (exprToString name) ext
  | Call (name, argL) -> 
    let args = String.concat "," (List.map exprToString argL) in
    sprintf "%s(%s)" name args

let rec instrToString i =
  let res = ref (spaces ()) in

  match i with
  | Putchar e  -> sprintf "%sputchar(%s);" !res (exprToString e)
  | Set (s, e) -> sprintf "%s%s = %s;" !res (exprToString s) (exprToString e)
  | If (cond, seq1, seq2) ->
    res := sprintf "%sif(%s){\n" !res (exprToString cond);
    let b1 = String.concat ("\n" ^ spaces () ) (List.map instrToString seq1) in
    res := sprintf "%s%s%s\n%s}" !res (spaces ()) b1 (spaces ());
    if seq2 = [] then !res
    else (
      let b = String.concat "\n" (List.map (fun e -> spaces () ^ instrToString e) seq2) in
      sprintf "%s else {\n%s\n%s}" !res b (spaces ())
    )

  | While (cond, seq) -> 
    res := sprintf "%swhile(%s){\n" !res (exprToString cond);
    let b = String.concat "\n" (List.map instrToString seq) in
    res := sprintf "%s%s%s\n%s}"  !res (spaces ()) b (spaces ());
    decr space;
    !res
  | For (d, cond, e, seq) -> 
    res := sprintf "%sfor(%s%s;%s){\n" !res (instrToString d) (exprToString cond) (instrToString e);
    let b = String.concat "\n" (List.map instrToString seq) in
    res := sprintf "%s%s%s\n%s}" !res (spaces ()) b (spaces ());
    decr space;
    !res
  | Return e -> sprintf "%sreturn(%s);" !res (exprToString e)
  | Expr e   -> sprintf "%s%s;" !res (exprToString e)


let globToString (s, t) =
  sprintf "%s %s;\n" (typeToString t) s


let structToString s =
  let name, args = s in
  let core = 
    List.fold_left 
    (fun acc g -> sprintf "%s%s%s" acc (spaces ()) (globToString g)) 
    "" args 
  in
  sprintf "%s {\n%s}\n" name core


let funToString f = 
  let params = 
    List.fold_left 
    (fun acc (s, t) -> sprintf "%s %s" (typeToString t) s :: acc) 
    [] f.params in
  incr space; 
  let locals = 
    List.fold_left 
    (fun acc (s, t) -> sprintf "%s%s%s %s;\n" acc (spaces ()) (typeToString t) s) 
    "" f.locals in
  let code = 
    List.fold_left 
    (fun acc e -> acc ^ instrToString e ^ "\n") 
    "" f.code in
  decr space;
  sprintf "%s %s(%s) {\n%s%s}\n" (typeToString f.return) (f.name) (String.concat ", " params) locals code

let progToString p =
  let structs = String.concat "\n" (List.map structToString p.structs) in
  let globs = String.concat "\n" (List.map globToString p.globals) in
  let funcs = String.concat "\n" (List.map funToString p.functions) in
  sprintf "%s\n%s\n%s" structs globs funcs
