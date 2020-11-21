{
  open Lexing
  open Parser

  let keyword_or_ident =
    let h = Hashtbl.create 17 in
    List.iter (fun (s, k) -> Hashtbl.add h s k)
      [ "putchar",  PUTCHAR_KW;
        "if",       IF_KW;
        "else",     ELSE_KW;
        "while",    WHILE_KW;
        "true",     BOOL true;
        "false",    BOOL false;
        "int",      INT_KW;
        "bool",     BOOL_KW;
        "void",     VOID_KW;
        "return",   RETURN_KW;
      ] ;
    fun s ->
      try  Hashtbl.find h s
      with Not_found -> IDENT(s)
}

let digit = ['0'-'9']
let number = digit+
let alpha = ['a'-'z' 'A'-'Z']
let ident = alpha (alpha | '_' | digit)*
let comment_line = "//" [^ '\n']* "\n"

rule token = parse
  | ['\n']            { new_line lexbuf; token lexbuf }
  | [' ' '\t' '\r']+  { token lexbuf }
  | comment_line      { new_line lexbuf; token lexbuf }
  | "/*"              { comment lexbuf; token lexbuf }
  | number as n       {  CST(int_of_string n) }
  | ident as id       { keyword_or_ident id }
  | ";"  { SEMI }
  | ","  { COMMA }
  | "="  { SET }
  | "+"  { PLUS }
  | "-"  { MINUS }
  | "*"  { STAR }
  | "<"  { LT }
  | "("  { LPAR }
  | ")"  { RPAR }
  | "{"  { LBRACE }
  | "}"  { RBRACE }
  | _    { failwith ("Caractere inconnu : " ^ (lexeme lexbuf)) }
  | eof  { EOF }

and comment = parse
  | "*/" { () }
  | _    { comment lexbuf }
  | eof  { failwith "Commentaire non termine.." }
