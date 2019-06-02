sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
      | x == 0    = (0, 1)
      | otherwise = helper 0 0 (if x > 0 then x else (-x))
    where
        helper sum count n
          | n > 0  = helper  (sum + mod n 10) (count + 1) (div n 10)
          | n == 0 = (sum, count)
