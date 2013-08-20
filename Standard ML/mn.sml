



fun maxmin(L) =
  case L of [] => raise Empty
     | [x]     => (x,x)
     | l::L    =>
         let
           fun max(L) = 
             case L of [x] => x 
                | l::L     => if l > max(L) then l else max(L)

           fun min(L) =
             case L of [x] => x
                | l::L     => if l < min(L) then l else min(L)
         in
           (max(L),min(L))
         end

(*
fun maxmin(L) =
    case L of [] => raise Empty
    | [x]        => (x,x)
    | l::L       =>
        let fun maxmin(L) = ?????
        in
          if l > maxmin(L) then (l,maxmin(L)) else (maxmin(L),l)
        end
        *)
