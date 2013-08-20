fun claire(L) = 
  case L of [] => 0
     | l::L => l + claire(L)
fun fact(n) =
  case n of 0 => 1
     | n => n * fact(n-1)
