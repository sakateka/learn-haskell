oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly (x: ys)
    | (x `mod` 2) == 1 = x : oddsOnly ys
    | otherwise  = oddsOnly ys
