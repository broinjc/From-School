(* A *)
exception NotFound

fun lookup(key, L) =
  case L of [] => raise NotFound
     | (key', arg)::tailOfList =>
         if key = key'
         then arg
         else lookup(key, tailOfList);

(* B *)
fun update(key, value, L) =
  case L of [] => (key, value)::nil
     | L       => (key, value)::L;

(* C *)
fun map_fun(f, L) =
  case L of [] => []
     | L => f(hd(L))::map_fun(f, tl(L))

(* D *)

fun maxmin(L) =
  case L of [] => raise Empty
     | [x]     => (x,x)
     | l::L    =>
         let
           fun max(L) =
             case L of [x] => x
                | L     => if l > max(tl(L)) then l else max(tl(L))
           fun min(L) =
             case L of [x] => x
                | L     => if l < min(tl(L)) then l else min(tl(L))
         in
           (max(L),min(L))
         end

         
         
(* A *)
fun curry(f) x y z = f(x, y, z)

(* B *)
fun uncurry(f) (x, y, z) = f x y z

(* C *)
fun applyList L value =
  case L of [] => []
     | h::L    => h value::applyList L value
         
