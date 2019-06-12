groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems (x:[]) = [[x]]
groupElems (x : xs) = helper xs [[x]]
    where
        helper [] z = reverse z
        helper (x: xs) ((y: ys) : z) =
          if x == y then
              helper xs ((x: y : ys) : z)
          else
              helper xs ([x] : (y : ys) : z)
