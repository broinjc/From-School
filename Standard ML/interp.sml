datatype OP = PLUS | TIMES

datatype EXP
  = INTEGER of int
  | BOOLEAN of bool
  | BINARY of OP * EXP * EXP
  | COND of EXP * EXP * EXP

datatype VAL
  = INT of int
  | BOOL of bool

fun interp(e) =
  case e of
      INTEGER(x) => INT(x)
    | BOOLEAN(x) => BOOL(x)
    | BINARY(oper,e1,e2) =>
        let val INT(v1) = interp(e1)
            val INT(v2) = interp(e2)
        in 
            case oper of
                  PLUS => INT(v1 + v2)
                | TIMES => INT(v1 * v2)
        end
    | COND(e1,e2,e3) =>
        let val BOOL(v) = interp(e1)
        in
            if v then interp(e2)
            else interp(e3)
        end 
