%{
  open Lexing
  open Types
  open Printer
%}

%token <int> CST
%token <bool> BOOL
%token <string> IDENT
%token LPAR RPAR LBRACE RBRACE 
%token SEMI COMMA
%token INT_KW BOOL_KW VOID_KW RETURN_KW
%token PUTCHAR_KW SET IF_KW ELSE_KW WHILE_KW
%token PLUS STAR MINUS
%token LT
%token EOF 

%left COMMA
%left LT
%left PLUS
%left STAR

%start program
%type <Types.prog> program

%%

type_def:
| INT_KW  { Int }
| BOOL_KW { Bool }
| VOID_KW { Void }
;

program:
| gl=list(decl_var) fl=list(decl_function) EOF
  { 
    {globals=gl; functions=fl}
    (* match gl, fl with
    | [], [] -> Printf.printf "gf: [].."; {globals=[]; functions=[]}
    | _, []  -> Printf.printf "fl: [].."; {globals=gl; functions=[]}
    | [], _  -> Printf.printf "gl: [].."; {globals=[]; functions=fl}
    | _, _   -> Printf.printf "gf: ![] "; {globals=gl; functions=fl} *)
  }
| error 
  {
    let pos = $startpos in
    let message = Printf.sprintf "Syntax error: ln %d, col %d" pos.pos_lnum (pos.pos_cnum - pos.pos_bol) in
    failwith message
  }
;

decl:
| t=type_def id=IDENT 
  { (id, t) }
;

decl_var:
| decl=decl SEMI 
  { decl }
| decl=decl SET n=CST SEMI 
  { decl }
;

decl_function:
| decl=decl LPAR params=params RPAR block=fun_block
  {
    let locals, code = block in
    let id, ftype =  decl in
    {name=id; params=params; return=ftype; locals=locals; code=code} 
  }
;

fun_block:
| LBRACE locals=list(decl_var) code=list(instruction) RBRACE 
  { (locals, code) }
;

params:
| l=separated_list(COMMA, decl) 
  { l }
;

block:
| LBRACE block=list(instruction) RBRACE
  { block }
;

delimited_expr:
| LPAR e=expression RPAR 
  { e }
;

instruction:
| PUTCHAR_KW e=delimited_expr SEMI 
  { Putchar(e) }
| id=IDENT SET e=expression SEMI 
  { Set(id, e) }
| IF_KW cond=delimited_expr block1=block ELSE_KW block2=block 
  { If(cond, block1, block2) }
| WHILE_KW cond=delimited_expr block=block 
  { While(cond, block) }
| RETURN_KW e=expression SEMI
  { Return(e) }
| e=expression SEMI
  { Expr(e) }
;

expression:
| n=CST
  { Cst(n) }
| id=IDENT 
  { Get(id) }
| e=delimited_expr
  { e }
| e1=expression PLUS e2=expression 
  { Add(e1, e2) }
| e1=expression STAR e2=expression 
  { Mul(e1, e2) }
| e1=expression LT e2=expression 
  { Lt(e1, e2) }
| MINUS n=CST 
  { Cst(-n) }
| func=IDENT LPAR param=separated_list(COMMA, expression) RPAR 
  { Call(func, param) }
;