-- f x s | x > 0 = x^2 + s
--       | otherwise = s
--
sumOdd :: [Integer] -> Integer
sumOdd = foldr (\x s -> if x `mod` 2 == 1 then x + s else s) 0
