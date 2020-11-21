{
  open Lexing
  open Parser

  let keyword_or_ident =
    let h = Hashtbl.create 17 in
    List.iter (fun (s, k) -> Hashtbl.add h s k)
      [ "putchar",  PUTCHAR;
        "if",       IF;
        "else",     ELSE;
        "while",    WHILE;
        "true",     BOOL true;
        "false",    BOOL false;
        "int",      TYPINT;
        "bool",     TYPBOOL;
        "void",     TYPVOID;
        "return",   RETURN;
      ] ;
    fun s ->
      try  Hashtbl.find h s; Printf.printf "KEY_%s " s; Hashtbl.find h s
      with Not_found -> Printf.printf "%s " s; IDENT(s)
}

let digit = ['0'-'9']
let number = digit+
let alpha = ['a'-'z' 'A'-'Z']
let ident = alpha (alpha | '_' | digit)*


(* let typ_var = ident " "+ ident
let params = "(" (typ_var " "+",")* " "+ typ_var ")"

let fun_def = (ident as typ) (ident as name) params *)

rule token = parse
  | ['\n']
      { Printf.printf "\n"; new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+
      { token lexbuf }
  | "//" [^ '\n']* "\n"
      { new_line lexbuf; token lexbuf }
  | "/*" 
      { comment lexbuf; token lexbuf }
  | number as n
      { Printf.printf "CST_%s " n; CST(int_of_string n) }
  | ident as id
      { keyword_or_ident id }
  | ";"
      {  Printf.printf "SEMI "; SEMI }
  | ","
      {  Printf.printf "COMMA "; COMMA }
  | "="
      {  Printf.printf "SET "; SET }
  | "+"
      {  Printf.printf "PLUS ";PLUS }
  | "-"
      {  Printf.printf "MINUS ";MINUS }
  | "*"
      { Printf.printf "STAR ";STAR }
  | "<"
      { Printf.printf "LT ";LT }
  | "("
      { Printf.printf "LPAR ";LPAR }
  | ")"
      { Printf.printf "RPAR ";RPAR }
  | "{"
      { Printf.printf "BEGIN ";BEGIN }
  | "}"
      { Printf.printf "END ";END }
  | _
      { failwith ("Unknown character : " ^ (lexeme lexbuf)) }
  | eof
      { EOF }

and comment = parse
  | "*/"
      { () }
  | _
      { comment lexbuf }
  | eof
      { failwith "unfinished comment" }
