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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> float * Basic.formula list * Ptree.t
