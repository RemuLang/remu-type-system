
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | XOR
    | STORE
    | SEMICOLON
    | RP
    | RBB
    | RB
    | QUOTE
    | OR
    | NOM
    | LP
    | LBB
    | LB
    | ID of (
# 9 "lib/rets_parser.mly"
       (string)
# 23 "lib/rets_parser.ml"
  )
    | FORALL
    | EOF
    | DECIMAL of (
# 5 "lib/rets_parser.mly"
       (int)
# 30 "lib/rets_parser.ml"
  )
    | COMMA
    | COLON
    | ASSIGN
    | ARROW
  
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
  | MenhirState56
  | MenhirState54
  | MenhirState40
  | MenhirState37
  | MenhirState27
  | MenhirState22
  | MenhirState21
  | MenhirState19
  | MenhirState16
  | MenhirState15
  | MenhirState12
  | MenhirState11
  | MenhirState9
  | MenhirState8
  | MenhirState5
  | MenhirState0

# 1 "lib/rets_parser.mly"
  
open Infer

# 73 "lib/rets_parser.ml"

let rec _menhir_goto_separated_nonempty_list_COMMA_rowfield_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_rowfield_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_rowfield_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_rowfield_) : 'tv_separated_nonempty_list_COMMA_rowfield_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_rowfield__ = 
# 144 "<standard.mly>"
    ( x )
# 90 "lib/rets_parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_rowfield__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state * 'tv_rowfield)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_rowfield_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_rowfield)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_rowfield_) : 'tv_separated_nonempty_list_COMMA_rowfield_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_rowfield)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_rowfield_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 107 "lib/rets_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_rowfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)) : 'freshtv266)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_typ_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_typ_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_typ_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_typ_) : 'tv_separated_nonempty_list_COMMA_typ_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_typ)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_typ_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 130 "lib/rets_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_typ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_typ_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_typ_) : 'tv_separated_nonempty_list_COMMA_typ_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_typ__ = 
# 144 "<standard.mly>"
    ( x )
# 145 "lib/rets_parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_typ__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_rowtail_ : _menhir_env -> 'ttv_tail -> 'tv_option_rowtail_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_rowfield__) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_rowtail_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_rowfield__) = Obj.magic _menhir_stack in
    let ((tl : 'tv_option_rowtail_) : 'tv_option_rowtail_) = _v in
    ((let (_menhir_stack, _menhir_s, (xs : 'tv_loption_separated_nonempty_list_COMMA_rowfield__)) = _menhir_stack in
    let _v : 'tv_rowtyp = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 163 "lib/rets_parser.ml"
     in
    
# 65 "lib/rets_parser.mly"
                                                              (
      begin match tl with
      | Some tl -> RowPoly tl
      | _ -> RowMono
      end |> record fs
  )
# 173 "lib/rets_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv245) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_rowtyp) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * 'tv_rowtyp) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * 'tv_rowtyp) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state * 'tv_rowtyp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (fs : 'tv_rowtyp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_typ = 
# 50 "lib/rets_parser.mly"
                      (Record(fs))
# 197 "lib/rets_parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)) : 'freshtv240)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * 'tv_rowtyp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)) : 'freshtv246)) : 'freshtv248)) : 'freshtv250)

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state * 'tv_typlit)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_typlit)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (arg : 'tv_typlit)), _, (ret : 'tv_typ)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_typ = 
# 47 "lib/rets_parser.mly"
                             ( Arrow(arg, ret) )
# 222 "lib/rets_parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * _menhir_state)) * _menhir_state * 'tv_list_ID_)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv159 * _menhir_state)) * _menhir_state * 'tv_list_ID_)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (ns : 'tv_list_ID_)), _, (ty : 'tv_typ)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_typ = 
# 49 "lib/rets_parser.mly"
                                      (Forall(ns, ty))
# 237 "lib/rets_parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
    | MenhirState27 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv163 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FORALL ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | LB ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LBB ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LP ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | QUOTE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | XOR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv164)
        | RB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_typ)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_typ_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 277 "lib/rets_parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_typ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 292 "lib/rets_parser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 298 "lib/rets_parser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (k : (
# 9 "lib/rets_parser.mly"
       (string)
# 303 "lib/rets_parser.ml"
        ))), _, (v : 'tv_typ)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_rowfield = 
# 75 "lib/rets_parser.mly"
                     ((k, v))
# 309 "lib/rets_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_rowfield) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_rowfield) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_rowfield) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv172)
        | OR | RBB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_rowfield) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_rowfield)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_rowfield_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 340 "lib/rets_parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_rowfield_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_rowfield) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)) : 'freshtv180)) : 'freshtv182)) : 'freshtv184)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (b : 'tv_typ)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_rowtail = 
# 72 "lib/rets_parser.mly"
                  (b)
# 360 "lib/rets_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = _menhir_stack in
        let (_v : 'tv_rowtail) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
        let (_v : 'tv_rowtail) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
        let ((x : 'tv_rowtail) : 'tv_rowtail) = _v in
        ((let _v : 'tv_option_rowtail_ = 
# 116 "<standard.mly>"
    ( Some x )
# 374 "lib/rets_parser.ml"
         in
        _menhir_goto_option_rowtail_ _menhir_env _menhir_stack _v) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)) : 'freshtv194)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv195 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (nest : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typlit = 
# 62 "lib/rets_parser.mly"
                   (nest)
# 395 "lib/rets_parser.ml"
             in
            _menhir_goto_typlit _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv215 * _menhir_state) * (
# 5 "lib/rets_parser.mly"
       (int)
# 410 "lib/rets_parser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv213 * _menhir_state) * (
# 5 "lib/rets_parser.mly"
       (int)
# 416 "lib/rets_parser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (n : (
# 5 "lib/rets_parser.mly"
       (int)
# 421 "lib/rets_parser.ml"
        ))), _, (ty : 'tv_typ)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_store = 
# 37 "lib/rets_parser.mly"
                                     ( Store(n, ty) )
# 428 "lib/rets_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_store) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_store) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_store) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_store) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_store)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_toplevel = 
# 32 "lib/rets_parser.mly"
                            (a)
# 451 "lib/rets_parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_store) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)
    | MenhirState56 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FORALL ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | LB ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LBB ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LP ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | QUOTE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | XOR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv235 * _menhir_state * 'tv_typ)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_typ)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (lhs : 'tv_typ)), _, (rhs : 'tv_typ)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_unify = 
# 42 "lib/rets_parser.mly"
                              ( MKUnify(lhs, rhs) )
# 508 "lib/rets_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_unify) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_unify) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_unify) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_unify) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_unify)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_toplevel = 
# 34 "lib/rets_parser.mly"
                      (a)
# 531 "lib/rets_parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_unify) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)) : 'freshtv236)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_typeapp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typeapp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_typeapp) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LP ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | QUOTE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | XOR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ASSIGN | COMMA | OR | RB | RBB | RP | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_typeapp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (tapp : 'tv_typeapp)) = _menhir_stack in
        let _v : 'tv_typ = 
# 46 "lib/rets_parser.mly"
                 (tapp)
# 572 "lib/rets_parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv154)

and _menhir_goto_list_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 589 "lib/rets_parser.ml"
        )) * _menhir_state * 'tv_list_ID_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 595 "lib/rets_parser.ml"
        )) * _menhir_state * 'tv_list_ID_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "lib/rets_parser.mly"
       (string)
# 600 "lib/rets_parser.ml"
        ))), _, (xs : 'tv_list_ID_)) = _menhir_stack in
        let _v : 'tv_list_ID_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 605 "lib/rets_parser.ml"
         in
        _menhir_goto_list_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state)) * _menhir_state * 'tv_list_ID_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state)) * _menhir_state * 'tv_list_ID_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FORALL ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
            | LB ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | LBB ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | LP ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | QUOTE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | XOR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv147 * _menhir_state)) * _menhir_state * 'tv_list_ID_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_toplevel_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_toplevel_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_toplevel) * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_toplevel) * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_toplevel)), _, (xs : 'tv_list_toplevel_)) = _menhir_stack in
        let _v : 'tv_list_toplevel_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 661 "lib/rets_parser.ml"
         in
        _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (stmts : 'tv_list_toplevel_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "lib/rets_parser.mly"
       (Infer.builder list)
# 680 "lib/rets_parser.ml"
            ) = 
# 30 "lib/rets_parser.mly"
                                ( stmts )
# 684 "lib/rets_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 26 "lib/rets_parser.mly"
       (Infer.builder list)
# 692 "lib/rets_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 26 "lib/rets_parser.mly"
       (Infer.builder list)
# 700 "lib/rets_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 26 "lib/rets_parser.mly"
       (Infer.builder list)
# 708 "lib/rets_parser.ml"
            )) : (
# 26 "lib/rets_parser.mly"
       (Infer.builder list)
# 712 "lib/rets_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv128)) : 'freshtv130)) : 'freshtv132)) : 'freshtv134)) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | _ ->
        _menhir_fail ()

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_toplevel -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_toplevel) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FORALL ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LB ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LBB ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LP ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOM ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | QUOTE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | STORE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | XOR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | EOF ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv122)

and _menhir_goto_loption_separated_nonempty_list_COMMA_rowfield__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_rowfield__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_rowfield__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FORALL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | LB ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LBB ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LP ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | QUOTE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | XOR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv114)
    | RBB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_rowtail_ = 
# 114 "<standard.mly>"
    ( None )
# 796 "lib/rets_parser.ml"
         in
        _menhir_goto_option_rowtail_ _menhir_env _menhir_stack _v) : 'freshtv116)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_rowfield__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/rets_parser.mly"
       (string)
# 810 "lib/rets_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 822 "lib/rets_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FORALL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ID _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | LB ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LBB ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LP ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | QUOTE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | XOR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv110)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 852 "lib/rets_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)

and _menhir_goto_loption_separated_nonempty_list_COMMA_typ__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_typ__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_typ__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_typ__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_typ__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_typ__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_typ = let elts = 
# 232 "<standard.mly>"
    ( xs )
# 877 "lib/rets_parser.ml"
         in
        
# 48 "lib/rets_parser.mly"
                                          (Tuple elts)
# 882 "lib/rets_parser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)) : 'freshtv104)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_typ__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)

and _menhir_goto_typlit : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typlit -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState56 | MenhirState54 | MenhirState0 | MenhirState5 | MenhirState8 | MenhirState40 | MenhirState11 | MenhirState27 | MenhirState12 | MenhirState21 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_typlit) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_typlit) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FORALL ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | LB ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LBB ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | LP ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | QUOTE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | XOR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv90)
        | ASSIGN | COMMA | ID _ | LP | OR | QUOTE | RB | RBB | RP | SEMICOLON | XOR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_typlit) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_typlit)) = _menhir_stack in
            let _v : 'tv_typeapp = 
# 55 "lib/rets_parser.mly"
             (a)
# 934 "lib/rets_parser.ml"
             in
            _menhir_goto_typeapp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_typlit) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_typeapp) * _menhir_state * 'tv_typlit) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_typeapp) * _menhir_state * 'tv_typlit) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (f : 'tv_typeapp)), _, (arg : 'tv_typlit)) = _menhir_stack in
        let _v : 'tv_typeapp = 
# 54 "lib/rets_parser.mly"
                         (App(f, arg))
# 953 "lib/rets_parser.ml"
         in
        _menhir_goto_typeapp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)
    | _ ->
        _menhir_fail ()

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_ID_ = 
# 211 "<standard.mly>"
    ( [] )
# 964 "lib/rets_parser.ml"
     in
    _menhir_goto_list_ID_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/rets_parser.mly"
       (string)
# 971 "lib/rets_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | RBB ->
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * 'tv_toplevel) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv62)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_rowfield)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_typ)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_typeapp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_typlit)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv71 * _menhir_state)) * _menhir_state * 'tv_list_ID_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 1034 "lib/rets_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * (
# 9 "lib/rets_parser.mly"
       (string)
# 1053 "lib/rets_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 5 "lib/rets_parser.mly"
       (int)
# 1072 "lib/rets_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_toplevel_ = 
# 211 "<standard.mly>"
    ( [] )
# 1086 "lib/rets_parser.ml"
     in
    _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DECIMAL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "lib/rets_parser.mly"
       (int)
# 1102 "lib/rets_parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        let ((tid : (
# 5 "lib/rets_parser.mly"
       (int)
# 1110 "lib/rets_parser.ml"
        )) : (
# 5 "lib/rets_parser.mly"
       (int)
# 1114 "lib/rets_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_typlit = 
# 59 "lib/rets_parser.mly"
                    (Nom tid)
# 1121 "lib/rets_parser.ml"
         in
        _menhir_goto_typlit _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)) : 'freshtv54)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DECIMAL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "lib/rets_parser.mly"
       (int)
# 1144 "lib/rets_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state) * (
# 5 "lib/rets_parser.mly"
       (int)
# 1155 "lib/rets_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FORALL ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | ID _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | LB ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LBB ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LP ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | QUOTE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | XOR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv44)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state) * (
# 5 "lib/rets_parser.mly"
       (int)
# 1185 "lib/rets_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DECIMAL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "lib/rets_parser.mly"
       (int)
# 1209 "lib/rets_parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        let ((vid : (
# 5 "lib/rets_parser.mly"
       (int)
# 1217 "lib/rets_parser.ml"
        )) : (
# 5 "lib/rets_parser.mly"
       (int)
# 1221 "lib/rets_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_typlit = 
# 60 "lib/rets_parser.mly"
                      (Var vid)
# 1228 "lib/rets_parser.ml"
         in
        _menhir_goto_typlit _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)) : 'freshtv40)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "lib/rets_parser.mly"
       (string)
# 1251 "lib/rets_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 9 "lib/rets_parser.mly"
       (string)
# 1262 "lib/rets_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DECIMAL _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv25 * _menhir_state) * (
# 9 "lib/rets_parser.mly"
       (string)
# 1272 "lib/rets_parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "lib/rets_parser.mly"
       (int)
# 1277 "lib/rets_parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv23 * _menhir_state) * (
# 9 "lib/rets_parser.mly"
       (string)
# 1284 "lib/rets_parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((n : (
# 5 "lib/rets_parser.mly"
       (int)
# 1289 "lib/rets_parser.ml"
                )) : (
# 5 "lib/rets_parser.mly"
       (int)
# 1293 "lib/rets_parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), (name : (
# 9 "lib/rets_parser.mly"
       (string)
# 1298 "lib/rets_parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_nom = 
# 40 "lib/rets_parser.mly"
                                  ( DefNom(n, name) )
# 1305 "lib/rets_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv21) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_nom) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_nom) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | SEMICOLON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_nom) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv13 * _menhir_state * 'tv_nom) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, (a : 'tv_nom)) = _menhir_stack in
                    let _2 = () in
                    let _v : 'tv_toplevel = 
# 33 "lib/rets_parser.mly"
                    (a)
# 1328 "lib/rets_parser.ml"
                     in
                    _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)) : 'freshtv16)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_nom) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv27 * _menhir_state) * (
# 9 "lib/rets_parser.mly"
       (string)
# 1345 "lib/rets_parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)) : 'freshtv30)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state) * (
# 9 "lib/rets_parser.mly"
       (string)
# 1356 "lib/rets_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FORALL ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LB ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LBB ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LP ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | QUOTE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | XOR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | OR | RBB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState9 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_rowfield__ = 
# 142 "<standard.mly>"
    ( [] )
# 1408 "lib/rets_parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_rowfield__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FORALL ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LB ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | LBB ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | LP ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | QUOTE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | XOR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | RB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState12 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_typ__ = 
# 142 "<standard.mly>"
    ( [] )
# 1443 "lib/rets_parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_typ__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/rets_parser.mly"
       (string)
# 1454 "lib/rets_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : (
# 9 "lib/rets_parser.mly"
       (string)
# 1464 "lib/rets_parser.ml"
    )) : (
# 9 "lib/rets_parser.mly"
       (string)
# 1468 "lib/rets_parser.ml"
    )) = _v in
    ((let _v : 'tv_typlit = 
# 61 "lib/rets_parser.mly"
         (Fresh a)
# 1473 "lib/rets_parser.ml"
     in
    _menhir_goto_typlit _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | RBB ->
            _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

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

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "lib/rets_parser.mly"
       (Infer.builder list)
# 1520 "lib/rets_parser.ml"
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
    | FORALL ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LB ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBB ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LP ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOM ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | QUOTE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STORE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | XOR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 1567 "lib/rets_parser.ml"