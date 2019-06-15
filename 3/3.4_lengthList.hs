lengthList :: [a] -> Int
-- lengthList = foldr (\x s -> 1+s) 0
lengthList = foldr (const (+1)) 0
