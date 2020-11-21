%{
  open Lexing
  open Types
  open Printer
%}

%token PLUS STAR MINUS
%token LT

%token <int> CST
%token <bool> BOOL
%token <string> IDENT
%token TYPINT TYPBOOL TYPVOID RETURN
%token LPAR RPAR BEGIN END SEMI COMMA
%token PUTCHAR SET IF ELSE WHILE
%token EOF /* STOP */

%left LT
%left PLUS /* MINUS */
%left STAR

%start program
%type <Types.prog> program

%%

program:
| gl=list(decl_var)
  fl=list(decl_function)
  EOF
    { {globals=gl; functions=fl} }
| error {
    let pos = $startpos in
    let message =
      Printf.sprintf
        "Syntax error: ln %d, col %d"
        pos.pos_lnum (pos.pos_cnum - pos.pos_bol)
    in
    failwith message 
  }
;

decl:
| t=types id=IDENT {  (id, t) }
;

decl_var:
| d=decl SEMI { d }
| d=decl SET n=CST SEMI { d }
;

decl_function:
| decl=decl LPAR params=params RPAR
  BEGIN locals=list(decl_var) code=list(instruction) END
  { 
    let (name, return) = decl in
    {name=name; params=params; return=return; locals=locals; code=code} 
  }
;

params:
| l=separated_list(COMMA, decl) { l }
;

types:
| TYPINT  { Int }
| TYPBOOL { Bool }
| TYPVOID { Void }
;

instruction:
| PUTCHAR LPAR e=expression RPAR SEMI { Putchar(e) }
| id=IDENT SET e=expression SEMI { Set(id, e) }
| IF LPAR cond=expression RPAR
  BEGIN block1=loption(nonempty_list(instruction)) END
  ELSE BEGIN block2=loption(nonempty_list(instruction)) END 
  { If(cond, block1, block2) }
| WHILE LPAR c=expression RPAR
    BEGIN s=loption(nonempty_list(instruction)) END { While(c, s) }
| RETURN e=expression SEMI { Return(e) }
| e=expression SEMI { Expr(e) }
;



expression:
| n=CST { Cst(n) }
| id=IDENT { Get(id) }
| LPAR e=expression RPAR { e }
| e1=expression PLUS e2=expression { Add(e1, e2) }
| e1=expression STAR e2=expression { Mul(e1, e2) }
| e1=expression LT e2=expression { Lt(e1, e2) }
| MINUS n=CST { Cst(-n) }
| func=IDENT LPAR param=loption(separated_nonempty_list(COMMA, expression)) RPAR { Call(func, param) }
;

/* 
| e1=expression b=binop e2=expression { b(e1, e2) }
%inline binop:
| PLUS  { Plus }
| STAR  { Mul }
| LT  { Lt } */