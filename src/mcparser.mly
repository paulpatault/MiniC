%{
  open Types

  type assign_globs = seq ref

  let ag_list : assign_globs = ref []

  let makeDereferencing len id = 
    let rec md acc i =
      if i = 0 then acc
      else md (Dereferencing acc) (i-1)
    in
    md (Get id) len
%}

%token <int> CST
%token <float> FCST
%token <bool> BOOL
%token <string> IDENT
%token LPAR RPAR LBRACE RBRACE 
%token SEMI COMMA DOT ARROW
%token INT_KW BOOL_KW VOID_KW FLOAT_KW RETURN_KW STRUCT_KW
%token PUTCHAR_KW SET IF_KW ELSE_KW WHILE_KW
%token PLUS MINUS STAR SLASH ADDR
%token LT LE GT GE AND OR NOT DOUBLE_EQ NEQ
%token EOF

%left OR
%left AND
%left LT LE GT GE DOUBLE_EQ NEQ
%left PLUS MINUS
%left STAR SLASH
(*%left DOT ARROW*)
%nonassoc NOT ADDR


%start program
%type <Types.prog> program

%%

type_def:
| INT_KW  { Int }
| FLOAT_KW { Float }
| BOOL_KW { Bool }
| VOID_KW { Void }
| t=type_def STAR
  {
    Pointeur t
  }
| STRUCT_KW t=IDENT
  { Struct(t) }
;

program:
| st=decl_struct prog=program
  {
    {
      structs=st::prog.structs;
      globals=prog.globals; 
      functions=prog.functions;
    }
  }
| gl=decl_var_glob prog=program 
  {
    {
      structs=[];
      globals=gl::prog.globals; 
      functions=prog.functions
    }  
  }
| fl=nonempty_list(decl_function) EOF 
  { 
    { 
      structs=[]; 
      globals=[];
      functions=
        {
          name="__assignGlobsVars";
          params=[];
          return=Void;
          locals=[];
          code= List.rev !ag_list;
        }::fl; 
    } 
  }
;

decl_struct:
| STRUCT_KW id=IDENT LBRACE core=struct_core RBRACE SEMI 
  { (id, core) }
; 

decl:
| t=type_def id=IDENT 
  { (id, t) }
;

struct_core:
| dl = nonempty_list(d=decl SEMI { d }) { dl }
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

ext:
| el=nonempty_list(DOT e=IDENT { e }) { el }
| el=nonempty_list(ARROW e=IDENT { e }) { el }
;

instruction:
| PUTCHAR_KW e=delimited_expr SEMI 
  { Putchar(e) }
| id=IDENT SET e=expression SEMI 
  { Set(id, e) }
| id=IDENT el=ext SET e=expression SEMI
  { SetSubStruct(Get id, el, e) }
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

cast:
| LPAR t=type_def RPAR 
  { t }
;

expression:
| n=CST
  { Cst(n) }
| f=FCST
  { FCst(f) }
| b=BOOL
  { Bool(b) }
| stars=nonempty_list(STAR) id=IDENT 
  {
    let len = List.length stars in
    makeDereferencing len id
  }
| id=IDENT 
  { Get(id) }
| ADDR e=expression 
  { Addr(e) }
(*| id=IDENT el=ext*)
  (*{ GetStruct(id, el) }*)
| e=expression el=ext
  { GetStruct(e, el) } 
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
| t=cast e=expression %prec NOT
  { Cast(t, e) }
| MINUS n=CST 
  { Cst(-n) }
| func=IDENT LPAR param=separated_list(COMMA, expression) RPAR 
  { Call(func, param) }
;
