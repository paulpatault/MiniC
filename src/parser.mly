%{
  open Lexing
  open Types
  open Printer


  type assign_globs = seq ref

  let ag_list : assign_globs = ref []
%}

%token <int> CST
%token <bool> BOOL
%token <string> IDENT
%token LPAR RPAR LBRACE RBRACE 
%token SEMI COMMA
%token INT_KW BOOL_KW VOID_KW RETURN_KW
%token PUTCHAR_KW SET IF_KW ELSE_KW WHILE_KW
%token PLUS MINUS STAR SLASH
%token LT LE GT GE AND OR NOT DOUBLE_EQ NEQ
%token EOF

%left OR
%left AND
%left LT LE GT GE DOUBLE_EQ NEQ
%left PLUS MINUS
%left STAR SLASH
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
| gl=decl_var_glob prog=program 
  {
    { 
      globals=gl::prog.globals; 
      functions=prog.functions
    }  
  }
| fl=nonempty_list(decl_function) EOF 
  { 
    let assign_globs_fun = {
      name="assign_globs_fun";
      params=[];
      return=Void;
      locals=[];
      code= List.rev !ag_list;
    } in
    { globals=[]; functions=assign_globs_fun::fl } 
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

decl_var_glob:
| decl=decl SEMI 
  { decl }
| decl=decl SET e=expression SEMI 
  { 
    let id, _ = decl in
    ag_list := Set(id, e) :: !ag_list;
    decl 
  }
;

decl_var_local:
| decl=decl SEMI 
  { decl, None }
| decl=decl SET e=expression SEMI 
  { decl, Some(e) }
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
| LBRACE locals=list(decl_var_local) code=list(instruction) RBRACE 
  { 
    let decls, asss = 
      List.fold_left 
        (
          fun (decls, ass) (d, a) -> 
            match a with 
            None -> (d::decls, ass) 
            | Some(e') -> (d::decls, Set(fst d, e') :: ass)
        ) 
        ([],[]) locals 
    in
    (List.rev decls, (List.rev asss)@code) 
  }
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
| IF_KW cond=delimited_expr block=block
  { If(cond, block, []) }
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
| e1=expression SLASH e2=expression 
  { Div(e1, e2) }
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