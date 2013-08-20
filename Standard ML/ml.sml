fun mapList(f, L) =
  case L of [] => []
     | l::L => f l::mapList(f,L)

fun positive n = if n > 0 then true else false;

fun squareList L =
  case L of [] => []
     | l::L => l*l::squareList L
