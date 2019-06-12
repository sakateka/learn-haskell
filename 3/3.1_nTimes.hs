nTimes:: a -> Int -> [a]
nTimes a n = let
  hlp x y lst
    | y == 0    = lst
    | y > 0     = hlp x (y-1) (x : lst)
    | otherwise = undefined
  in hlp a n []
