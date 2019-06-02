seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n > 2  = let
            rec a1 a2 a3 n
              | n == 0    = a1
              | otherwise = rec a2 a3 ((a3+a2) - 2*a1) (n-1)
          in rec 1 2 3 n
