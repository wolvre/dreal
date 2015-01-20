type token =
  | AFTER
  | BEFORE
  | PRUNING
  | BRANCHED
  | IS
  | IN
  | ON
  | CONFLICT
  | DETECTED
  | PRECISION
  | LB
  | RB
  | COMMA
  | COLON
  | SEMICOLON
  | CARET
  | NOT
  | LP
  | RP
  | PLUS
  | MINUS
  | AST
  | SLASH
  | EQ
  | GE
  | LE
  | GT
  | LT
  | INFTY
  | SIN
  | COS
  | TAN
  | SQRT
  | SAFESQRT
  | ASIN
  | ACOS
  | ATAN
  | ATAN2
  | MATAN
  | SINH
  | COSH
  | TANH
  | LOG
  | EXP
  | UNSAT
  | HOLE
  | TIME_PRECISION
  | EOF
  | FNUM of (float)
  | ID of (string)

open Parsing;;
let _ = parse_error;;
# 7 "parser.mly"
# 57 "parser.ml"
let yytransl_const = [|
  257 (* AFTER *);
  258 (* BEFORE *);
  259 (* PRUNING *);
  260 (* BRANCHED *);
  261 (* IS *);
  262 (* IN *);
  263 (* ON *);
  264 (* CONFLICT *);
  265 (* DETECTED *);
  266 (* PRECISION *);
  267 (* LB *);
  268 (* RB *);
  269 (* COMMA *);
  270 (* COLON *);
  271 (* SEMICOLON *);
  272 (* CARET *);
  273 (* NOT *);
  274 (* LP *);
  275 (* RP *);
  276 (* PLUS *);
  277 (* MINUS *);
  278 (* AST *);
  279 (* SLASH *);
  280 (* EQ *);
  281 (* GE *);
  282 (* LE *);
  283 (* GT *);
  284 (* LT *);
  285 (* INFTY *);
  286 (* SIN *);
  287 (* COS *);
  288 (* TAN *);
  289 (* SQRT *);
  290 (* SAFESQRT *);
  291 (* ASIN *);
  292 (* ACOS *);
  293 (* ATAN *);
  294 (* ATAN2 *);
  295 (* MATAN *);
  296 (* SINH *);
  297 (* COSH *);
  298 (* TANH *);
  299 (* LOG *);
  300 (* EXP *);
  301 (* UNSAT *);
  302 (* HOLE *);
  303 (* TIME_PRECISION *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  304 (* FNUM *);
  305 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\006\000\006\000\007\000\007\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\010\000\010\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\002\000\002\000\002\000\002\000\011\000\013\000\005\000\
\009\000\014\000\008\000\008\000\015\000\015\000\015\000\015\000\
\015\000\015\000\015\000\012\000\012\000\000\000"

let yylen = "\002\000\
\005\000\004\000\005\000\000\000\003\000\001\000\002\000\005\000\
\005\000\005\000\005\000\005\000\008\000\008\000\008\000\008\000\
\001\000\002\000\001\000\001\000\004\000\004\000\005\000\004\000\
\005\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\005\000\004\000\004\000\004\000\004\000\004\000\004\000\
\005\000\003\000\005\000\004\000\005\000\004\000\004\000\005\000\
\004\000\002\000\001\000\002\000\007\000\008\000\008\000\007\000\
\009\000\008\000\003\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\062\000\000\000\000\000\000\000\000\000\
\000\000\005\000\000\000\000\000\000\000\000\000\000\000\000\000\
\007\000\000\000\000\000\000\000\000\000\000\000\000\000\019\000\
\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\002\000\000\000\000\000\000\000\000\000\052\000\050\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\059\000\000\000\
\000\000\000\000\001\000\000\000\000\000\003\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\008\000\011\000\009\000\012\000\010\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\042\000\000\000\
\000\000\000\000\000\000\000\000\000\000\018\000\021\000\022\000\
\000\000\024\000\000\000\028\000\029\000\030\000\026\000\027\000\
\031\000\032\000\033\000\000\000\035\000\036\000\037\000\038\000\
\039\000\040\000\000\000\000\000\046\000\000\000\049\000\044\000\
\061\000\000\000\000\000\000\000\000\000\000\000\000\000\041\000\
\023\000\025\000\034\000\000\000\000\000\000\000\000\000\048\000\
\000\000\043\000\045\000\015\000\013\000\016\000\014\000\000\000\
\056\000\053\000\000\000\000\000\000\000\047\000\055\000\000\000\
\058\000\054\000\057\000"

let yydgoto = "\002\000\
\004\000\034\000\008\000\085\000\035\000\005\000\009\000\019\000\
\036\000\086\000\037\000\076\000\120\000\020\000\077\000"

let yysindex = "\015\000\
\051\255\000\000\016\255\000\000\046\255\017\255\058\255\046\255\
\029\255\000\000\063\255\020\255\020\255\020\255\020\255\020\255\
\000\000\073\255\001\000\029\255\078\255\241\254\076\255\000\000\
\000\000\020\255\020\255\020\255\020\255\020\255\018\255\119\255\
\000\000\090\000\029\255\100\000\029\255\000\000\000\000\020\255\
\020\255\020\255\020\255\020\255\020\255\020\255\020\255\020\255\
\020\255\020\255\020\255\020\255\020\255\020\255\020\255\020\255\
\020\255\020\255\020\255\020\255\020\255\020\255\020\255\082\255\
\083\255\084\255\085\255\086\255\074\255\103\255\000\000\122\255\
\121\255\117\255\000\000\118\255\115\255\000\000\120\255\020\255\
\020\255\020\255\020\255\087\255\020\255\113\255\008\255\114\255\
\020\255\123\255\124\255\125\255\126\255\127\255\128\255\129\255\
\130\255\020\255\131\255\132\255\133\255\134\255\135\255\136\255\
\000\000\000\000\000\000\000\000\000\000\143\255\105\255\145\255\
\088\255\146\255\075\255\118\255\029\255\062\255\000\000\029\255\
\140\255\141\255\142\255\144\255\147\255\000\000\000\000\000\000\
\148\255\000\000\149\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\150\255\000\000\000\000\000\000\000\000\
\000\000\000\000\236\254\151\255\000\000\153\255\000\000\000\000\
\000\000\137\255\012\255\152\255\154\255\155\255\156\255\000\000\
\000\000\000\000\000\000\107\255\157\255\158\255\047\255\000\000\
\160\255\000\000\000\000\000\000\000\000\000\000\000\000\159\255\
\000\000\000\000\109\255\161\255\165\255\000\000\000\000\162\255\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\164\255\000\000\000\000\000\000\000\000\000\000\000\000\090\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\013\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\166\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\195\255\000\000\247\255\000\000\000\000\133\000\142\000\
\104\000\231\255\000\000\227\255\000\000\000\000\005\000"

let yytablesize = 269
let yytable = "\164\000\
\033\000\051\000\026\000\027\000\028\000\029\000\030\000\079\000\
\165\000\040\000\041\000\042\000\043\000\021\000\116\000\001\000\
\064\000\065\000\066\000\067\000\068\000\088\000\115\000\060\000\
\021\000\023\000\128\000\166\000\069\000\006\000\080\000\081\000\
\082\000\083\000\084\000\070\000\087\000\023\000\089\000\090\000\
\091\000\092\000\093\000\094\000\095\000\096\000\097\000\098\000\
\099\000\100\000\101\000\102\000\103\000\104\000\152\000\024\000\
\025\000\170\000\060\000\126\000\003\000\129\000\154\000\007\000\
\010\000\071\000\179\000\024\000\025\000\074\000\121\000\122\000\
\123\000\124\000\011\000\180\000\072\000\018\000\073\000\131\000\
\022\000\012\000\013\000\014\000\015\000\016\000\031\000\153\000\
\140\000\075\000\155\000\044\000\039\000\171\000\181\000\045\000\
\046\000\047\000\048\000\078\000\105\000\106\000\107\000\108\000\
\109\000\049\000\050\000\051\000\052\000\053\000\054\000\055\000\
\056\000\057\000\058\000\059\000\060\000\061\000\062\000\063\000\
\072\000\110\000\073\000\111\000\112\000\114\000\074\000\113\000\
\115\000\117\000\118\000\127\000\130\000\148\000\125\000\176\000\
\150\000\184\000\006\000\169\000\017\000\132\000\133\000\134\000\
\135\000\136\000\137\000\138\000\139\000\141\000\142\000\143\000\
\144\000\145\000\146\000\147\000\149\000\151\000\156\000\157\000\
\158\000\038\000\159\000\167\000\168\000\160\000\161\000\162\000\
\163\000\178\000\172\000\182\000\173\000\174\000\175\000\177\000\
\186\000\183\000\000\000\185\000\187\000\004\000\119\000\000\000\
\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\032\000\051\000"

let yycheck = "\020\001\
\000\000\000\000\012\000\013\000\014\000\015\000\016\000\037\000\
\029\001\025\001\026\001\027\001\028\001\009\000\076\000\001\000\
\026\000\027\000\028\000\029\000\030\000\047\000\011\001\011\001\
\020\000\018\001\019\001\048\001\011\001\014\001\040\000\041\000\
\042\000\043\000\044\000\018\001\046\000\018\001\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\058\000\059\000\060\000\061\000\062\000\063\000\116\000\048\001\
\049\001\046\001\046\001\085\000\010\001\087\000\001\001\018\001\
\048\001\048\001\020\001\048\001\049\001\008\001\080\000\081\000\
\082\000\083\000\017\001\029\001\002\001\049\001\004\001\089\000\
\018\001\024\001\025\001\026\001\027\001\028\001\014\001\117\000\
\098\000\000\000\120\000\016\001\015\001\155\000\048\001\020\001\
\021\001\022\001\023\001\000\000\019\001\019\001\019\001\019\001\
\019\001\030\001\031\001\032\001\033\001\034\001\035\001\036\001\
\037\001\038\001\039\001\040\001\041\001\042\001\043\001\044\001\
\002\001\048\001\004\001\021\001\003\001\009\001\008\001\007\001\
\011\001\015\001\011\001\019\001\019\001\029\001\048\001\029\001\
\049\001\029\001\049\001\003\001\008\000\019\001\019\001\019\001\
\019\001\019\001\019\001\019\001\019\001\019\001\019\001\019\001\
\019\001\019\001\019\001\013\001\012\001\012\001\019\001\019\001\
\019\001\020\000\019\001\013\001\012\001\019\001\019\001\019\001\
\019\001\012\001\019\001\012\001\019\001\019\001\019\001\019\001\
\012\001\019\001\255\255\019\001\019\001\018\001\079\000\255\255\
\019\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\011\001\011\001"

let yynames_const = "\
  AFTER\000\
  BEFORE\000\
  PRUNING\000\
  BRANCHED\000\
  IS\000\
  IN\000\
  ON\000\
  CONFLICT\000\
  DETECTED\000\
  PRECISION\000\
  LB\000\
  RB\000\
  COMMA\000\
  COLON\000\
  SEMICOLON\000\
  CARET\000\
  NOT\000\
  LP\000\
  RP\000\
  PLUS\000\
  MINUS\000\
  AST\000\
  SLASH\000\
  EQ\000\
  GE\000\
  LE\000\
  GT\000\
  LT\000\
  INFTY\000\
  SIN\000\
  COS\000\
  TAN\000\
  SQRT\000\
  SAFESQRT\000\
  ASIN\000\
  ACOS\000\
  ATAN\000\
  ATAN2\000\
  MATAN\000\
  SINH\000\
  COSH\000\
  TANH\000\
  LOG\000\
  EXP\000\
  UNSAT\000\
  HOLE\000\
  TIME_PRECISION\000\
  EOF\000\
  "

let yynames_block = "\
  FNUM\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'precision) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'con_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'init_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ptree.t) in
    Obj.repr(
# 33 "parser.mly"
     ( (_1, _2, _4) )
# 359 "parser.ml"
               : float * Basic.formula list * Ptree.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'precision) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'con_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'init_list) in
    Obj.repr(
# 35 "parser.mly"
     ( (_1, _2, Ptree.Axiom (Env.make _3)) )
# 368 "parser.ml"
               : float * Basic.formula list * Ptree.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'precision) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'con_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'init_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'conflict_detected) in
    Obj.repr(
# 37 "parser.mly"
     ( (_1, _2, Ptree.Axiom (Env.make _3)) )
# 378 "parser.ml"
               : float * Basic.formula list * Ptree.t))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
                         ( 0.001 )
# 384 "parser.ml"
               : 'precision))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 40 "parser.mly"
                         ( _3 )
# 391 "parser.ml"
               : 'precision))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Basic.formula) in
    Obj.repr(
# 42 "parser.mly"
                       ( [_1] )
# 398 "parser.ml"
               : 'con_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Basic.formula) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'con_list) in
    Obj.repr(
# 43 "parser.mly"
                       ( _1::_2 )
# 406 "parser.ml"
               : 'con_list))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 46 "parser.mly"
                        ( (Basic.Eq (_3, _4)) )
# 414 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 47 "parser.mly"
                        ( (Basic.Le (_3, _4)) )
# 422 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 48 "parser.mly"
                        ( (Basic.Le (_3, _4)) )
# 430 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 49 "parser.mly"
                        ( (Basic.Ge (_3, _4)) )
# 438 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 50 "parser.mly"
                        ( (Basic.Ge (_3, _4)) )
# 446 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _5 = (Parsing.peek_val __caml_parser_env 3 : Func.t) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    Obj.repr(
# 51 "parser.mly"
                                  ( (Basic.Ge (_5, _6)) )
# 454 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _5 = (Parsing.peek_val __caml_parser_env 3 : Func.t) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    Obj.repr(
# 52 "parser.mly"
                                  ( (Basic.Ge (_5, _6)) )
# 462 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _5 = (Parsing.peek_val __caml_parser_env 3 : Func.t) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    Obj.repr(
# 53 "parser.mly"
                                  ( (Basic.Le (_5, _6)) )
# 470 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _5 = (Parsing.peek_val __caml_parser_env 3 : Func.t) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    Obj.repr(
# 54 "parser.mly"
                                  ( (Basic.Le (_5, _6)) )
# 478 "parser.ml"
               : Basic.formula))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Func.t) in
    Obj.repr(
# 57 "parser.mly"
                          ( [_1] )
# 485 "parser.ml"
               : 'func_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'func_list) in
    Obj.repr(
# 58 "parser.mly"
                          ( _1::_2 )
# 493 "parser.ml"
               : 'func_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 61 "parser.mly"
                             ( Basic.Num _1 )
# 500 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 62 "parser.mly"
                             ( Basic.Var _1 )
# 507 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'func_list) in
    Obj.repr(
# 63 "parser.mly"
                             ( Basic.Add _3 )
# 514 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 64 "parser.mly"
                             ( Basic.Neg _3 )
# 521 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'func_list) in
    Obj.repr(
# 65 "parser.mly"
                                  ( Basic.Sub (_3::_4) )
# 529 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'func_list) in
    Obj.repr(
# 66 "parser.mly"
                             ( Basic.Mul _3 )
# 536 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 67 "parser.mly"
                             ( Basic.Div (_3, _4) )
# 544 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 68 "parser.mly"
                             ( Basic.Sqrt _3 )
# 551 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 69 "parser.mly"
                             ( Basic.Safesqrt _3 )
# 558 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 70 "parser.mly"
                             ( Basic.Sin _3 )
# 565 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 71 "parser.mly"
                             ( Basic.Cos _3 )
# 572 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 72 "parser.mly"
                             ( Basic.Tan _3 )
# 579 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 73 "parser.mly"
                             ( Basic.Asin _3 )
# 586 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 74 "parser.mly"
                             ( Basic.Acos _3 )
# 593 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 75 "parser.mly"
                             ( Basic.Atan _3 )
# 600 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 76 "parser.mly"
                             ( Basic.Atan2 (_3, _4) )
# 608 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 77 "parser.mly"
                             ( Basic.Matan _3 )
# 615 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 78 "parser.mly"
                             ( Basic.Sinh _3 )
# 622 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 79 "parser.mly"
                             ( Basic.Cosh _3 )
# 629 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 80 "parser.mly"
                             ( Basic.Tanh _3 )
# 636 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 81 "parser.mly"
                             ( Basic.Log _3 )
# 643 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Func.t) in
    Obj.repr(
# 82 "parser.mly"
                             ( Basic.Exp _3 )
# 650 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : Func.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : float) in
    Obj.repr(
# 83 "parser.mly"
                             ( Basic.Pow (_3, Basic.Num _4) )
# 658 "parser.ml"
               : Func.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'before_pruning) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'entry_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'conflict_detected) in
    Obj.repr(
# 88 "parser.mly"
         ( Ptree.Axiom (Env.make _2) )
# 667 "parser.ml"
               : Ptree.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'before_pruning) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'entry_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'after_pruning) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'entry_list) in
    Obj.repr(
# 91 "parser.mly"
         ( Ptree.Prune (Env.make _2, Env.make _4, Ptree.Hole) )
# 677 "parser.ml"
               : Ptree.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'entry_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Ptree.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Ptree.t) in
    Obj.repr(
# 94 "parser.mly"
         ( Ptree.Branch (Env.make _2, _3, _4) )
# 687 "parser.ml"
               : Ptree.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'before_pruning) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'entry_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'after_pruning) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'entry_list) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : Ptree.t) in
    Obj.repr(
# 97 "parser.mly"
         ( Ptree.Prune (Env.make _2, Env.make _4, _5)
)
# 699 "parser.ml"
               : Ptree.t))
; (fun __caml_parser_env ->
    Obj.repr(
# 101 "parser.mly"
                                     ( )
# 705 "parser.ml"
               : 'before_pruning))
; (fun __caml_parser_env ->
    Obj.repr(
# 104 "parser.mly"
                                   ( )
# 711 "parser.ml"
               : 'after_pruning))
; (fun __caml_parser_env ->
    let _4 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 107 "parser.mly"
                                  ( _4 )
# 718 "parser.ml"
               : string))
; (fun __caml_parser_env ->
    Obj.repr(
# 110 "parser.mly"
                                           ( )
# 724 "parser.ml"
               : 'conflict_detected))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'entry) in
    Obj.repr(
# 113 "parser.mly"
                      ( _1 )
# 731 "parser.ml"
               : 'init))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'init) in
    Obj.repr(
# 116 "parser.mly"
                ( [_1] )
# 738 "parser.ml"
               : 'init_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'init) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'init_list) in
    Obj.repr(
# 117 "parser.mly"
                          ( _1::_2 )
# 746 "parser.ml"
               : 'init_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : float) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : float) in
    Obj.repr(
# 120 "parser.mly"
                                      ( (_1, Intv.make _4 _6) )
# 755 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _7 = (Parsing.peek_val __caml_parser_env 1 : float) in
    Obj.repr(
# 121 "parser.mly"
                                             ( (_1, Intv.make neg_infinity _7) )
# 763 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : float) in
    Obj.repr(
# 122 "parser.mly"
                                            ( (_1, Intv.make _4 infinity) )
# 771 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : float) in
    Obj.repr(
# 123 "parser.mly"
                                       ( (_1, Intv.make _4 infinity) )
# 779 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : string) in
    Obj.repr(
# 124 "parser.mly"
                                                   ( (_1, Intv.make neg_infinity infinity) )
# 786 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : string) in
    Obj.repr(
# 125 "parser.mly"
                                              ( (_1, Intv.make neg_infinity infinity) )
# 793 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 126 "parser.mly"
                     ( (_1, Intv.make _3 _3) )
# 801 "parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'entry) in
    Obj.repr(
# 129 "parser.mly"
                  ( [_1] )
# 808 "parser.ml"
               : 'entry_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'entry) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'entry_list) in
    Obj.repr(
# 130 "parser.mly"
                                  ( _1::_3 )
# 816 "parser.ml"
               : 'entry_list))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : float * Basic.formula list * Ptree.t)
