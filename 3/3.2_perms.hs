perms :: [a] -> [[a]]
perms [] = [[]]
perms (x: []) = [[x]]
perms (x: xs) = concatMap (insertEverywere x) (perms xs)
    where insertEverywere :: a -> [a] -> [[a]]
          insertEverywere x [] = [[x]]
          insertEverywere x l@(y:ys) = (x:l) : map (y:) (insertEverywere x ys)
