
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | TYPVOID
    | TYPINT
    | TYPBOOL
    | STAR
    | SET
    | SEMI
    | RPAR
    | RETURN
    | PUTCHAR
    | PLUS
    | MINUS
    | LT
    | LPAR
    | IF
    | IDENT of (
# 12 "parser.mly"
       (string)
# 26 "parser.ml"
  )
    | EOF
    | END
    | ELSE
    | CST of (
# 10 "parser.mly"
       (int)
# 34 "parser.ml"
  )
    | COMMA
    | BOOL of (
# 11 "parser.mly"
       (bool)
# 40 "parser.ml"
  )
    | BEGIN
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState88
  | MenhirState81
  | MenhirState78
  | MenhirState71
  | MenhirState69
  | MenhirState66
  | MenhirState61
  | MenhirState57
  | MenhirState56
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState38
  | MenhirState36
  | MenhirState33
  | MenhirState31
  | MenhirState30
  | MenhirState26
  | MenhirState21
  | MenhirState12
  | MenhirState8
  | MenhirState0

# 1 "parser.mly"
  
  open Lexing
  open Types
  open Printer

# 89 "parser.ml"

let rec _menhir_goto_nonempty_list_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState31 | MenhirState56 | MenhirState78 | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_instruction_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_nonempty_list_instruction_) : 'tv_nonempty_list_instruction_) = _v in
        ((let _v : 'tv_loption_nonempty_list_instruction__ = 
# 144 "<standard.mly>"
    ( x )
# 106 "parser.ml"
         in
        _menhir_goto_loption_nonempty_list_instruction__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_instruction_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_instruction_) : 'tv_nonempty_list_instruction_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_instruction)) = _menhir_stack in
        let _v : 'tv_nonempty_list_instruction_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 122 "parser.ml"
         in
        _menhir_goto_nonempty_list_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)) : 'freshtv346)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_decl_function_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_decl_function_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_decl_function_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_nonempty_list_decl_function_) : 'tv_nonempty_list_decl_function_) = _v in
        ((let _v : 'tv_loption_nonempty_list_decl_function__ = 
# 144 "<standard.mly>"
    ( x )
# 143 "parser.ml"
         in
        _menhir_goto_loption_nonempty_list_decl_function__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv337 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 151 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_decl_function_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv335 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 159 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_decl_function_) : 'tv_nonempty_list_decl_function_) = _v in
        ((let (((((_menhir_stack, _menhir_s, (return : 'tv_fun_type)), (name : (
# 12 "parser.mly"
       (string)
# 166 "parser.ml"
        ))), _, (params : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (locals : 'tv_loption_nonempty_list_decl_var__)), _, (code : 'tv_loption_nonempty_list_instruction__)) = _menhir_stack in
        let _9 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _v : 'tv_nonempty_list_decl_function_ = let x = 
# 51 "parser.mly"
  ( {name=name; params=params; return=return; locals=locals; code=code} )
# 175 "parser.ml"
         in
        
# 223 "<standard.mly>"
    ( x :: xs )
# 180 "parser.ml"
         in
        _menhir_goto_nonempty_list_decl_function_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)) : 'freshtv338)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expression__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv329 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 193 "parser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv325 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 203 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv323 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 210 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (func : (
# 12 "parser.mly"
       (string)
# 215 "parser.ml"
        ))), _, (param : 'tv_loption_separated_nonempty_list_COMMA_expression__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expression = 
# 92 "parser.mly"
                                                                                 ( Call(func, param) )
# 222 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 232 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | IDENT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | IF ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | PUTCHAR ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | RETURN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | WHILE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_instruction)) = _menhir_stack in
        let _v : 'tv_nonempty_list_instruction_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 268 "parser.ml"
         in
        _menhir_goto_nonempty_list_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv322)

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 144 "<standard.mly>"
    ( x )
# 291 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 308 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
    | _ ->
        _menhir_fail ()

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_goto_loption_nonempty_list_instruction__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_nonempty_list_instruction__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv285 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv281 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv277 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BEGIN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CST _v ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
                    | IDENT _v ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
                    | IF ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | LPAR ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | MINUS ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | PUTCHAR ->
                        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | RETURN ->
                        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | WHILE ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | END ->
                        _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState78
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv274)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv275 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv279 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv283 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv289 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv287 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (cond : 'tv_expression)), _, (block1 : 'tv_loption_nonempty_list_instruction__)), _, (block2 : 'tv_loption_nonempty_list_instruction__)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 75 "parser.mly"
  ( If(cond, block1, block2) )
# 463 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv291 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c : 'tv_expression)), _, (s : 'tv_loption_nonempty_list_instruction__)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 77 "parser.mly"
                                                    ( While(c, s) )
# 494 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv309 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 509 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv305 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 519 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPBOOL ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | TYPINT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | TYPVOID ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv303 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 535 "parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s, (return : 'tv_fun_type)), (name : (
# 12 "parser.mly"
       (string)
# 540 "parser.ml"
                ))), _, (params : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (locals : 'tv_loption_nonempty_list_decl_var__)), _, (code : 'tv_loption_nonempty_list_instruction__)) = _menhir_stack in
                let _9 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _v : 'tv_nonempty_list_decl_function_ = let x = 
# 51 "parser.mly"
  ( {name=name; params=params; return=return; locals=locals; code=code} )
# 549 "parser.ml"
                 in
                
# 221 "<standard.mly>"
    ( [ x ] )
# 554 "parser.ml"
                 in
                _menhir_goto_nonempty_list_decl_function_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv307 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 568 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | _ ->
        _menhir_fail ()

and _menhir_reduce2 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "parser.mly"
       (string)
# 578 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : (
# 12 "parser.mly"
       (string)
# 584 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_expression = 
# 86 "parser.mly"
           ( Get(id) )
# 589 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (string)
# 596 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | LT | PLUS | RPAR | SEMI | STAR ->
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 614 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "parser.mly"
       (string)
# 622 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState38 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 142 "<standard.mly>"
    ( [] )
# 643 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | IDENT _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | LPAR ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | MINUS ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv182)
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 692 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expression = 
# 89 "parser.mly"
                                   ( Mul(e1, e2) )
# 712 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv197 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | LT | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv193 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 88 "parser.mly"
                                   ( Add(e1, e2) )
# 731 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv203 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | LT | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv199 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 90 "parser.mly"
                                 ( Lt(e1, e2) )
# 759 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv201 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 87 "parser.mly"
                         ( e )
# 791 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)) : 'freshtv208)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv213 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
                | IDENT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
                | IF ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | LPAR ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | MINUS ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | PUTCHAR ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | RETURN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | WHILE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | END ->
                    _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv214)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv215 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 78 "parser.mly"
                           ( Return(e) )
# 885 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv237 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv233 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv231 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_instruction = 
# 70 "parser.mly"
                                      ( Putchar(e) )
# 927 "parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv235 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)) : 'freshtv242)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv243 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
                | IDENT _v ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
                | IF ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | LPAR ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | MINUS ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | PUTCHAR ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | RETURN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | WHILE ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | END ->
                    _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState69
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv244)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv245 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1011 "parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv255 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1025 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1032 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : (
# 12 "parser.mly"
       (string)
# 1037 "parser.ml"
            ))), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_instruction = 
# 71 "parser.mly"
                                 ( Set(id, e) )
# 1044 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1056 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState31 | MenhirState56 | MenhirState69 | MenhirState78 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_instruction = 
# 79 "parser.mly"
                    ( Expr(e) )
# 1081 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
        | STAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fun_type : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fun_type -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_fun_type) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_fun_type) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (string)
# 1110 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1121 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPBOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | TYPINT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState21 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 142 "<standard.mly>"
    ( [] )
# 1137 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1151 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_fun_type) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)

and _menhir_goto_loption_separated_nonempty_list_COMMA_params__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_params__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv167 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1170 "parser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv163 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1180 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv159 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1190 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPBOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | TYPINT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | CST _ | END | IDENT _ | IF | LPAR | MINUS | PUTCHAR | RETURN | WHILE ->
                _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv161 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1212 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv165 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1223 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)

and _menhir_reduce22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_nonempty_list_instruction__ = 
# 142 "<standard.mly>"
    ( [] )
# 1233 "parser.ml"
     in
    _menhir_goto_loption_nonempty_list_instruction__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IDENT _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | LPAR ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MINUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv156)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | IDENT _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | LPAR ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MINUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv152)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (int)
# 1332 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        let ((n : (
# 10 "parser.mly"
       (int)
# 1340 "parser.ml"
        )) : (
# 10 "parser.mly"
       (int)
# 1344 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expression = 
# 91 "parser.mly"
              ( Cst(-n) )
# 1351 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IDENT _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LPAR ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | IDENT _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | LPAR ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (string)
# 1416 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
    | SET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1430 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | IDENT _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LPAR ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv138)
    | LT | PLUS | SEMI | STAR ->
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1456 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 1464 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 10 "parser.mly"
       (int)
# 1474 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int)
# 1478 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expression = 
# 85 "parser.mly"
        ( Cst(n) )
# 1483 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)

and _menhir_goto_loption_nonempty_list_decl_function__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_nonempty_list_decl_function__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv133 * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_decl_function__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_decl_function__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_decl_function__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (gl : 'tv_loption_nonempty_list_decl_var__)), _, (fl : 'tv_loption_nonempty_list_decl_function__)) = _menhir_stack in
        let _3 = () in
        let _v : (
# 23 "parser.mly"
      (Types.prog)
# 1505 "parser.ml"
        ) = 
# 31 "parser.mly"
    ( {globals=gl; functions=fl} )
# 1509 "parser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_decl_function__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_fun_type = 
# 66 "parser.mly"
          ( Void )
# 1530 "parser.ml"
     in
    _menhir_goto_fun_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_fun_type = 
# 64 "parser.mly"
          ( Int )
# 1544 "parser.ml"
     in
    _menhir_goto_fun_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_fun_type = 
# 65 "parser.mly"
          ( Bool )
# 1558 "parser.ml"
     in
    _menhir_goto_fun_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_COMMA_params_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_params_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 144 "<standard.mly>"
    ( x )
# 1582 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1599 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)) : 'freshtv120)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_decl_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_decl_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv107 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1613 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 1617 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_decl_var_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv105 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1625 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 1629 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_decl_var_) : 'tv_nonempty_list_decl_var_) = _v in
        ((let (((_menhir_stack, _menhir_s, (t : 'tv_var_type)), (id : (
# 12 "parser.mly"
       (string)
# 1636 "parser.ml"
        ))), (n : (
# 10 "parser.mly"
       (int)
# 1640 "parser.ml"
        ))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _v : 'tv_nonempty_list_decl_var_ = let x = 
# 44 "parser.mly"
                                     ( (id, t) (*(id, Cst n)*) )
# 1647 "parser.ml"
         in
        
# 223 "<standard.mly>"
    ( x :: xs )
# 1652 "parser.ml"
         in
        _menhir_goto_nonempty_list_decl_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
    | MenhirState30 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_decl_var_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_nonempty_list_decl_var_) : 'tv_nonempty_list_decl_var_) = _v in
        ((let _v : 'tv_loption_nonempty_list_decl_var__ = 
# 144 "<standard.mly>"
    ( x )
# 1667 "parser.ml"
         in
        _menhir_goto_loption_nonempty_list_decl_var__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)
    | _ ->
        _menhir_fail ()

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Types.prog)
# 1676 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 23 "parser.mly"
      (Types.prog)
# 1685 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 23 "parser.mly"
      (Types.prog)
# 1693 "parser.ml"
    )) : (
# 23 "parser.mly"
      (Types.prog)
# 1697 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv102)) : 'freshtv104)

and _menhir_goto_loption_nonempty_list_decl_var__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_nonempty_list_decl_var__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_loption_nonempty_list_decl_var__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYPBOOL ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TYPINT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TYPVOID ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState12 in
            ((let _v : 'tv_loption_nonempty_list_decl_function__ = 
# 142 "<standard.mly>"
    ( [] )
# 1724 "parser.ml"
             in
            _menhir_goto_loption_nonempty_list_decl_function__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv98)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv99 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1736 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IDENT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LPAR ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | MINUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | PUTCHAR ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | RETURN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | WHILE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | END ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv100)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_type : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var_type -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 | MenhirState8 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "parser.mly"
       (string)
# 1782 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1793 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv63 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1803 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 10 "parser.mly"
       (int)
# 1808 "parser.ml"
                    )) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | SEMI ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv59 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1819 "parser.ml"
                        ))) * (
# 10 "parser.mly"
       (int)
# 1823 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | TYPBOOL ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                        | TYPINT ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                        | CST _ | END | EOF | IDENT _ | IF | LPAR | MINUS | PUTCHAR | RETURN | TYPVOID | WHILE ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv57 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1837 "parser.ml"
                            ))) * (
# 10 "parser.mly"
       (int)
# 1841 "parser.ml"
                            ))) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s, (t : 'tv_var_type)), (id : (
# 12 "parser.mly"
       (string)
# 1846 "parser.ml"
                            ))), (n : (
# 10 "parser.mly"
       (int)
# 1850 "parser.ml"
                            ))) = _menhir_stack in
                            let _5 = () in
                            let _3 = () in
                            let _v : 'tv_nonempty_list_decl_var_ = let x = 
# 44 "parser.mly"
                                     ( (id, t) (*(id, Cst n)*) )
# 1857 "parser.ml"
                             in
                            
# 221 "<standard.mly>"
    ( [ x ] )
# 1862 "parser.ml"
                             in
                            _menhir_goto_nonempty_list_decl_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv60)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv61 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1876 "parser.ml"
                        ))) * (
# 10 "parser.mly"
       (int)
# 1880 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv65 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1891 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1902 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)) : 'freshtv72)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
    | MenhirState26 | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "parser.mly"
       (string)
# 1925 "parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            let ((name : (
# 12 "parser.mly"
       (string)
# 1933 "parser.ml"
            )) : (
# 12 "parser.mly"
       (string)
# 1937 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (t : 'tv_var_type)) = _menhir_stack in
            let _v : 'tv_params = 
# 55 "parser.mly"
                        ( (name, t) )
# 1943 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_params) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TYPBOOL ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                | TYPINT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv78)
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1976 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)) : 'freshtv86)) : 'freshtv88)) : 'freshtv90)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv7 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2004 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv11 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 2023 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv15 * _menhir_state)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv23 * _menhir_state)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 2077 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv39 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2096 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv41 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2105 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2119 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_loption_nonempty_list_decl_var__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv49 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2133 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 2137 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_startpos__1_ : Lexing.position) = _startpos in
        ((let _1 = () in
        let _v : (
# 23 "parser.mly"
      (Types.prog)
# 2156 "parser.ml"
        ) = let _startpos = _startpos__1_ in
        
# 32 "parser.mly"
        (
    let pos = _startpos in
    let message =
      Printf.sprintf
        "Syntax error: ln %d, col %d"
        pos.pos_lnum (pos.pos_cnum - pos.pos_bol)
    in
    failwith message 
  )
# 2169 "parser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)) : 'freshtv54)) : 'freshtv56)

and _menhir_reduce20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_nonempty_list_decl_var__ = 
# 142 "<standard.mly>"
    ( [] )
# 2178 "parser.ml"
     in
    _menhir_goto_loption_nonempty_list_decl_var__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_var_type = 
# 59 "parser.mly"
          ( Int )
# 2192 "parser.ml"
     in
    _menhir_goto_var_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_var_type = 
# 60 "parser.mly"
          ( Bool )
# 2206 "parser.ml"
     in
    _menhir_goto_var_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 23 "parser.mly"
      (Types.prog)
# 2225 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TYPBOOL ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPINT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF | TYPVOID ->
        _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2258 "parser.ml"
