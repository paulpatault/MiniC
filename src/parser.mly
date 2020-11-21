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
| gl=loption(nonempty_list(decl_var))
  fl=loption(nonempty_list(decl_function))
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

%inline decl_var:
| t=var_type id=IDENT SET n=CST SEMI { (id, t) (*(id, Cst n)*) }
;

%inline decl_function:
| return=fun_type name=IDENT 
  LPAR params=loption(separated_nonempty_list(COMMA, params)) RPAR
  BEGIN locals=loption(nonempty_list(decl_var)) code=loption(nonempty_list(instruction)) END
  { {name=name; params=params; return=return; locals=locals; code=code} }
;

params:
| t=var_type name=IDENT { (name, t) }
;

var_type:
| TYPINT  { Int }
| TYPBOOL { Bool }
;

fun_type:
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