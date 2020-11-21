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
%token LT LE GT GE AND OR NOT DOUBLE_EQ NEQ
%token EOF

%left OR
%left AND
%left LT LE GT GE DOUBLE_EQ NEQ
%left PLUS MINUS
%left STAR
%nonassoc NOT

%start program
%type <Types.prog> program

%%

type_def:
| INT_KW  { Int }
| BOOL_KW { Bool }
| VOID_KW { Void }
;

program:
| gl=var_list fl=list(decl_function) EOF
  { 
    {globals=gl; functions=fl}
  }
| error 
  {
    let pos = $startpos in
    let message = Printf.sprintf "Syntax error: ln %d, col %d" pos.pos_lnum (pos.pos_cnum - pos.pos_bol) in
    failwith message
  }
;

var_list:
  { [] }
  | decl_var { [$1] } 
  | var_list decl_var { $1@[$2] }
;

decl:
| t=type_def id=IDENT 
  { (id, t) }
;

decl_var:
| decl=decl SEMI 
  { decl }
| decl=decl SET CST SEMI 
  { decl }
;

decl_function:
| decl=decl params=params block=fun_block
  {
    let locals, code = block in
    let id, ftype =  decl in
    {name=id; params=params; return=ftype; locals=locals; code=code} 
  }
;

fun_block:
| LBRACE locals=var_list code=list(instruction) RBRACE 
  { (locals, code) }
;

params:
| LPAR l=separated_list(COMMA, decl) RPAR
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
| b=BOOL
  { Bool(b) }
| id=IDENT 
  { Get(id) }
| e=delimited_expr
  { e }
| e1=expression PLUS e2=expression 
  { Add(e1, e2) }
| e1=expression MINUS e2=expression 
  { Sub(e1, e2) }
| e1=expression STAR e2=expression 
  { Mul(e1, e2) }
| e1=expression LT e2=expression 
  { Lt(e1, e2) }
| e1=expression LE e2=expression 
  { Le(e1, e2) }
| e1=expression GT e2=expression 
  { Gt(e1, e2) }
| e1=expression GE e2=expression 
  { Ge(e1, e2) }
| e1=expression AND e2=expression 
  { And(e1, e2) }
| e1=expression OR e2=expression 
  { Or(e1, e2) }
| e1=expression DOUBLE_EQ e2=expression 
  { Eq(e1, e2) }
| e1=expression NEQ e2=expression 
  { Neq(e1, e2) }
| NOT e=expression
  { Not(e) }
| MINUS n=CST 
  { Cst(-n) }
| func=IDENT LPAR param=separated_list(COMMA, expression) RPAR 
  { Call(func, param) }
;