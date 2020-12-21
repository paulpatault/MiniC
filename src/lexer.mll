{
  open Lexing
  open Mcparser

  let verbose = 
   try 
    let _ = Sys.argv.(2) in 
    true 
   with Invalid_argument _ -> false
  

  let keyword_or_ident =
    let h = Hashtbl.create 17 in
    List.iter (fun (s, k) -> Hashtbl.add h s k)
      [ "putchar",       PUTCHAR_KW;
        "if",            IF_KW;
        "else",          ELSE_KW;
        "while",         WHILE_KW;
        "for",           FOR_KW;
        "int",           INT_KW;
        "float",         FLOAT_KW;
        "bool",          BOOL_KW;
        "void",          VOID_KW;
        "return",        RETURN_KW;
        "struct",        STRUCT_KW;
      ] ;
    fun s ->
      try  Hashtbl.find h s
      with Not_found -> IDENT(s)

  let print_token t =
    if verbose then 
    match t with
    | "->" | "." | ";" | "," | "=" | "=="| "!="| "+" | "-" | "*" | "/" | "<" | "<="| ">" | ">=" | "!" | "||" | "&&" | "(" | ")" | "{" | "}" -> Printf.printf "%s " t
    | "\n" -> Printf.printf "\n"
    | "true" -> Printf.printf "Bool(true) "
    | "false" -> Printf.printf "Bool(false) "
    | _ -> 
        try Printf.printf "Int(%d) " (int_of_string t) 
        with Failure _ ->
            try Printf.printf "Float(%f) " (float_of_string t)
            with Failure _ ->
              match keyword_or_ident t with 
              | IDENT _ -> Printf.printf "ID(%s) " t
              | _ -> Printf.printf "KW(%s) " t
}

let digit = ['0'-'9']
let number = digit+
let floatnum = digit+ '.' digit?
let alpha = ['a'-'z' 'A'-'Z']
let ident = alpha (alpha | '_' | digit)*
let comment_line = "//" [^ '\n']* "\n"

rule token = parse
  | ['\n']            { print_token "\n"; new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+  { token lexbuf }
  | comment_line      { new_line lexbuf; token lexbuf }
  | "/*"              { comment lexbuf; token lexbuf }
  | number as n       { print_token n; CST(int_of_string n) }
  | floatnum as f     { print_token f; FCST(float_of_string f) }
  | "true"            { print_token "true"; BOOL(true) }
  | "false"           { print_token "false"; BOOL(false) }
  | ident as id       { print_token id; keyword_or_ident id }
  | ";"  { print_token ";" ; SEMI }
  | ","  { print_token "," ; COMMA }
  | "."  { print_token "." ; DOT }
  | "="  { print_token "=" ; SET }
  | "==" { print_token "=="; DOUBLE_EQ }
  | "!=" { print_token "!="; NEQ }
  | "+"  { print_token "+" ; PLUS }
  | "-"  { print_token "-" ; MINUS }
  | "*"  { print_token "*" ; STAR }
  | "/"  { print_token "/" ; SLASH }
  | "<"  { print_token "<" ; LT }
  | "<=" { print_token "<="; LE }
  | ">"  { print_token ">" ; GT }
  | ">=" { print_token ">="; GE }
  | "!"  { print_token "!" ; NOT }
  | "||" { print_token "||"; OR }
  | "&&" { print_token "&&"; AND }
  | "&"  { print_token "&"; ADDR }
  | "("  { print_token "(" ; LPAR }
  | ")"  { print_token ")" ; RPAR }
  | "{"  { print_token "{" ; LBRACE }
  | "}"  { print_token "}" ; RBRACE }
  | "->" { print_token "->" ; ARROW }
  | _    { failwith ("Caractere inconnu : " ^ (lexeme lexbuf)) }
  | eof  { EOF }

and comment = parse
  | "*/" { () }
  | _    { comment lexbuf }
  | eof  { failwith "Commentaire non termine.." }
