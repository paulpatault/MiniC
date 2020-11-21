
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
  | MenhirState93
  | MenhirState86
  | MenhirState83
  | MenhirState76
  | MenhirState74
  | MenhirState71
  | MenhirState66
  | MenhirState62
  | MenhirState61
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState43
  | MenhirState41
  | MenhirState38
  | MenhirState36
  | MenhirState33
  | MenhirState28
  | MenhirState24
  | MenhirState19
  | MenhirState11
  | MenhirState8
  | MenhirState0

# 1 "parser.mly"
  
  open Lexing
  open Types
  open Printer

# 90 "parser.ml"

let rec _menhir_goto_nonempty_list_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 | MenhirState61 | MenhirState83 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_instruction_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_nonempty_list_instruction_) : 'tv_nonempty_list_instruction_) = _v in
        ((let _v : 'tv_loption_nonempty_list_instruction__ = 
# 144 "<standard.mly>"
    ( x )
# 107 "parser.ml"
         in
        _menhir_goto_loption_nonempty_list_instruction__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_instruction_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_instruction_) : 'tv_nonempty_list_instruction_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_instruction)) = _menhir_stack in
        let _v : 'tv_nonempty_list_instruction_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 123 "parser.ml"
         in
        _menhir_goto_nonempty_list_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expression__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv355 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 136 "parser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 146 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 153 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (func : (
# 12 "parser.mly"
       (string)
# 158 "parser.ml"
        ))), _, (param : 'tv_loption_separated_nonempty_list_COMMA_expression__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expression = 
# 92 "parser.mly"
                                                                                 ( Call(func, param) )
# 165 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 175 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | IF ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | PUTCHAR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | RETURN ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | WHILE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_instruction)) = _menhir_stack in
        let _v : 'tv_nonempty_list_instruction_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 211 "parser.ml"
         in
        _menhir_goto_nonempty_list_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv348)

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 144 "<standard.mly>"
    ( x )
# 234 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 251 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
    | _ ->
        _menhir_fail ()

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IDENT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IDENT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IDENT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_goto_loption_nonempty_list_instruction__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_nonempty_list_instruction__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv313 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv309 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv305 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BEGIN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CST _v ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                    | IDENT _v ->
                        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                    | IF ->
                        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | LPAR ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | MINUS ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | PUTCHAR ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | RETURN ->
                        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | WHILE ->
                        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | END ->
                        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv302)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv311 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv321 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv317 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv315 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
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
# 406 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv319 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv329 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv325 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv323 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (c : 'tv_expression)), _, (s : 'tv_loption_nonempty_list_instruction__)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 77 "parser.mly"
                                                    ( While(c, s) )
# 437 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv327 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)) : 'freshtv330)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv335 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 452 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv331 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 462 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPBOOL ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TYPINT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TYPVOID ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | EOF ->
                _menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv333 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 486 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | _ ->
        _menhir_fail ()

and _menhir_reduce2 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "parser.mly"
       (string)
# 496 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : (
# 12 "parser.mly"
       (string)
# 502 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_expression = 
# 86 "parser.mly"
           ( Get(id) )
# 507 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (string)
# 514 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
    | COMMA | LT | PLUS | RPAR | SEMI | STAR ->
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 532 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "parser.mly"
       (string)
# 540 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IDENT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState43 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 142 "<standard.mly>"
    ( [] )
# 561 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CST _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | IDENT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | LPAR ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | MINUS ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv210)
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 610 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expression = 
# 89 "parser.mly"
                                   ( Mul(e1, e2) )
# 630 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | LT | PLUS | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 88 "parser.mly"
                                   ( Add(e1, e2) )
# 649 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | LT | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 90 "parser.mly"
                                 ( Lt(e1, e2) )
# 677 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 87 "parser.mly"
                         ( e )
# 709 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)) : 'freshtv236)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv241 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
                | IDENT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
                | IF ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | LPAR ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | MINUS ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | PUTCHAR ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | RETURN ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | WHILE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | END ->
                    _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv242)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv243 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_instruction = 
# 78 "parser.mly"
                           ( Return(e) )
# 803 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv261 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv259 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_instruction = 
# 70 "parser.mly"
                                      ( Putchar(e) )
# 845 "parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv263 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv271 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                | IDENT _v ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
                | IF ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | LPAR ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | MINUS ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | PUTCHAR ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | RETURN ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | WHILE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | END ->
                    _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv272)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 929 "parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 943 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 950 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : (
# 12 "parser.mly"
       (string)
# 955 "parser.ml"
            ))), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_instruction = 
# 71 "parser.mly"
                                 ( Set(id, e) )
# 962 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 974 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | MenhirState36 | MenhirState61 | MenhirState74 | MenhirState83 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_instruction = 
# 79 "parser.mly"
                    ( Expr(e) )
# 999 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)) : 'freshtv292)
        | STAR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
    | _ ->
        _menhir_fail ()

and _menhir_reduce24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_nonempty_list_instruction__ = 
# 142 "<standard.mly>"
    ( [] )
# 1019 "parser.ml"
     in
    _menhir_goto_loption_nonempty_list_instruction__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IDENT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | LPAR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv206)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IDENT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | IDENT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | LPAR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv202)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (int)
# 1118 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        let ((n : (
# 10 "parser.mly"
       (int)
# 1126 "parser.ml"
        )) : (
# 10 "parser.mly"
       (int)
# 1130 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expression = 
# 91 "parser.mly"
              ( Cst(-n) )
# 1137 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IDENT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | IDENT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LPAR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv192)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "parser.mly"
       (string)
# 1202 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
    | SET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1216 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CST _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | IDENT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | LPAR ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | MINUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv188)
    | LT | PLUS | SEMI | STAR ->
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 1242 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (int)
# 1250 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 10 "parser.mly"
       (int)
# 1260 "parser.ml"
    )) : (
# 10 "parser.mly"
       (int)
# 1264 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expression = 
# 85 "parser.mly"
        ( Cst(n) )
# 1269 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

and _menhir_goto_list_decl_function_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_decl_function_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_list_decl_var_) * _menhir_state * 'tv_list_decl_function_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_list_decl_var_) * _menhir_state * 'tv_list_decl_function_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_list_decl_var_) * _menhir_state * 'tv_list_decl_function_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (gl : 'tv_list_decl_var_)), _, (fl : 'tv_list_decl_function_)) = _menhir_stack in
            let _3 = () in
            let _v : (
# 23 "parser.mly"
      (Types.prog)
# 1293 "parser.ml"
            ) = 
# 31 "parser.mly"
    ( {globals=gl; functions=fl} )
# 1297 "parser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_list_decl_var_) * _menhir_state * 'tv_list_decl_function_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv183 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1312 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) * _menhir_state * 'tv_list_decl_function_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv181 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1318 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) * _menhir_state * 'tv_list_decl_function_) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, (return : 'tv_fun_type)), (name : (
# 12 "parser.mly"
       (string)
# 1323 "parser.ml"
        ))), _, (params : 'tv_loption_separated_nonempty_list_COMMA_params__)), _, (locals : 'tv_loption_nonempty_list_decl_var__)), _, (code : 'tv_loption_nonempty_list_instruction__)), _, (xs : 'tv_list_decl_function_)) = _menhir_stack in
        let _9 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _v : 'tv_list_decl_function_ = let x = 
# 51 "parser.mly"
  ( {name=name; params=params; return=return; locals=locals; code=code} )
# 1332 "parser.ml"
         in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 1337 "parser.ml"
         in
        _menhir_goto_list_decl_function_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)) : 'freshtv184)
    | _ ->
        _menhir_fail ()

and _menhir_goto_fun_type : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_fun_type -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_fun_type) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_fun_type) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "parser.mly"
       (string)
# 1357 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1368 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPBOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | TYPINT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState19 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 142 "<standard.mly>"
    ( [] )
# 1384 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1398 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_fun_type) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)

and _menhir_goto_loption_nonempty_list_decl_var__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_nonempty_list_decl_var__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv159 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1417 "parser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CST _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IDENT _v ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAR ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | PUTCHAR ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | RETURN ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | WHILE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | END ->
        _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv160)

and _menhir_goto_loption_separated_nonempty_list_COMMA_params__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_params__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv157 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1452 "parser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv153 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1462 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv149 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1472 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPBOOL ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | TYPINT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | CST _ | END | IDENT _ | IF | LPAR | MINUS | PUTCHAR | RETURN | WHILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState28 in
                ((let _v : 'tv_loption_nonempty_list_decl_var__ = 
# 142 "<standard.mly>"
    ( [] )
# 1488 "parser.ml"
                 in
                _menhir_goto_loption_nonempty_list_decl_var__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv151 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1502 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 1513 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)

and _menhir_reduce18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_decl_function_ = 
# 211 "<standard.mly>"
    ( [] )
# 1523 "parser.ml"
     in
    _menhir_goto_list_decl_function_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_fun_type = 
# 66 "parser.mly"
          ( Void )
# 1537 "parser.ml"
     in
    _menhir_goto_fun_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_fun_type = 
# 64 "parser.mly"
          ( Int )
# 1551 "parser.ml"
     in
    _menhir_goto_fun_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_fun_type = 
# 65 "parser.mly"
          ( Bool )
# 1565 "parser.ml"
     in
    _menhir_goto_fun_type _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_nonempty_list_decl_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_decl_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv135 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1582 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 1586 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_decl_var_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv133 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1594 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 1598 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_decl_var_) : 'tv_nonempty_list_decl_var_) = _v in
        ((let (((_menhir_stack, _menhir_s, (t : 'tv_var_type)), (id : (
# 12 "parser.mly"
       (string)
# 1605 "parser.ml"
        ))), (n : (
# 10 "parser.mly"
       (int)
# 1609 "parser.ml"
        ))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _v : 'tv_nonempty_list_decl_var_ = let x = 
# 44 "parser.mly"
                                     ( (id, t) (*(id, Cst n)*) )
# 1616 "parser.ml"
         in
        
# 223 "<standard.mly>"
    ( x :: xs )
# 1621 "parser.ml"
         in
        _menhir_goto_nonempty_list_decl_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)) : 'freshtv136)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_decl_var_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_nonempty_list_decl_var_) : 'tv_nonempty_list_decl_var_) = _v in
        ((let _v : 'tv_loption_nonempty_list_decl_var__ = 
# 144 "<standard.mly>"
    ( x )
# 1636 "parser.ml"
         in
        _menhir_goto_loption_nonempty_list_decl_var__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)) : 'freshtv140)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_params_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_params_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_params__ = 
# 144 "<standard.mly>"
    ( x )
# 1657 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_params__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)) : 'freshtv128)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_params_) : 'tv_separated_nonempty_list_COMMA_params_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1674 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_params_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)) : 'freshtv132)
    | _ ->
        _menhir_fail ()

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Types.prog)
# 1683 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 23 "parser.mly"
      (Types.prog)
# 1692 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 23 "parser.mly"
      (Types.prog)
# 1700 "parser.ml"
    )) : (
# 23 "parser.mly"
      (Types.prog)
# 1704 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv122)) : 'freshtv124)

and _menhir_goto_list_decl_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_decl_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv117 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1717 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 1721 "parser.ml"
        ))) * _menhir_state * 'tv_list_decl_var_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv115 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1727 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 1731 "parser.ml"
        ))) * _menhir_state * 'tv_list_decl_var_) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (t : 'tv_var_type)), (id : (
# 12 "parser.mly"
       (string)
# 1736 "parser.ml"
        ))), (n : (
# 10 "parser.mly"
       (int)
# 1740 "parser.ml"
        ))), _, (xs : 'tv_list_decl_var_)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _v : 'tv_list_decl_var_ = let x = 
# 44 "parser.mly"
                                     ( (id, t) (*(id, Cst n)*) )
# 1747 "parser.ml"
         in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 1752 "parser.ml"
         in
        _menhir_goto_list_decl_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_list_decl_var_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYPBOOL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | TYPINT ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | TYPVOID ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | EOF ->
            _menhir_reduce18 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv120)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_type : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var_type -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 | MenhirState0 ->
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
# 1792 "parser.ml"
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
# 1803 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv63 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1813 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 10 "parser.mly"
       (int)
# 1818 "parser.ml"
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
# 1829 "parser.ml"
                        ))) * (
# 10 "parser.mly"
       (int)
# 1833 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | TYPBOOL ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                        | TYPINT ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8
                        | EOF | TYPVOID ->
                            _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState8
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
# 1855 "parser.ml"
                        ))) * (
# 10 "parser.mly"
       (int)
# 1859 "parser.ml"
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
# 1870 "parser.ml"
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
# 1881 "parser.ml"
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
    | MenhirState24 | MenhirState19 ->
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
# 1904 "parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            let ((name : (
# 12 "parser.mly"
       (string)
# 1912 "parser.ml"
            )) : (
# 12 "parser.mly"
       (string)
# 1916 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (t : 'tv_var_type)) = _menhir_stack in
            let _v : 'tv_params = 
# 55 "parser.mly"
                        ( (name, t) )
# 1922 "parser.ml"
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
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | TYPINT ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv78)
            | RPAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_params) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_params)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_params_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1955 "parser.ml"
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
    | MenhirState33 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "parser.mly"
       (string)
# 1984 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 1995 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CST _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv101 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2005 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 10 "parser.mly"
       (int)
# 2010 "parser.ml"
                    )) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | SEMI ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv97 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2021 "parser.ml"
                        ))) * (
# 10 "parser.mly"
       (int)
# 2025 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | TYPBOOL ->
                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                        | TYPINT ->
                            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
                        | CST _ | END | IDENT _ | IF | LPAR | MINUS | PUTCHAR | RETURN | WHILE ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv95 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2039 "parser.ml"
                            ))) * (
# 10 "parser.mly"
       (int)
# 2043 "parser.ml"
                            ))) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s, (t : 'tv_var_type)), (id : (
# 12 "parser.mly"
       (string)
# 2048 "parser.ml"
                            ))), (n : (
# 10 "parser.mly"
       (int)
# 2052 "parser.ml"
                            ))) = _menhir_stack in
                            let _5 = () in
                            let _3 = () in
                            let _v : 'tv_nonempty_list_decl_var_ = let x = 
# 44 "parser.mly"
                                     ( (id, t) (*(id, Cst n)*) )
# 2059 "parser.ml"
                             in
                            
# 221 "<standard.mly>"
    ( [ x ] )
# 2064 "parser.ml"
                             in
                            _menhir_goto_nonempty_list_decl_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv98)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv99 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2078 "parser.ml"
                        ))) * (
# 10 "parser.mly"
       (int)
# 2082 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv103 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2093 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2104 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_var_type) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv7 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2126 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) * _menhir_state * 'tv_loption_nonempty_list_instruction__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv11 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_loption_nonempty_list_instruction__)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 2145 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv15 * _menhir_state)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv23 * _menhir_state)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 12 "parser.mly"
       (string)
# 2199 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv39 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2218 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) * _menhir_state * 'tv_loption_nonempty_list_decl_var__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv41 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2227 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 2231 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv43 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2240 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_params__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_params)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_fun_type) * (
# 12 "parser.mly"
       (string)
# 2254 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * 'tv_list_decl_var_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv51 * _menhir_state * 'tv_var_type) * (
# 12 "parser.mly"
       (string)
# 2268 "parser.ml"
        ))) * (
# 10 "parser.mly"
       (int)
# 2272 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_startpos__1_ : Lexing.position) = _startpos in
        ((let _1 = () in
        let _v : (
# 23 "parser.mly"
      (Types.prog)
# 2291 "parser.ml"
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
# 2304 "parser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)) : 'freshtv58)

and _menhir_reduce20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_decl_var_ = 
# 211 "<standard.mly>"
    ( [] )
# 2313 "parser.ml"
     in
    _menhir_goto_list_decl_var_ _menhir_env _menhir_stack _menhir_s _v

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
# 2327 "parser.ml"
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
# 2341 "parser.ml"
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
# 2360 "parser.ml"
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
  

# 2393 "parser.ml"
