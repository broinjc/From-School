(* fun maxmin(L) = [] 
     | maxmin(L) =
            let fun max( maxVal, []) = max
                     | max( maxVal, list) = if maxVal < the head of 
                     the list then we say that the head of the list is 
                     the new max and we call max(head of list, rest of list) 
    else maxVal is still the max of the list so we call max(maxVal,
            rest of list).
                fun min( minVal, empty list) = min
                    | vise versa for the min function
            in
            end;
*)


fun maxmin([]) = raise Empty
    | L =
        let fun max(big, L) = if big > hd(L) then big else max(big, tl(L)) 
        fun min(small, L) = if small < hd(L) then small else min(small, tl(L)) 
        in
           (max(hd(L), L), min(hd(L), L))
        end
