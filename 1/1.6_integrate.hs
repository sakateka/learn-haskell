integration :: (Double -> Double) -> Double -> Double -> Double
integration fn a b | a == b    = 0
                   | otherwise = helper a b
  where
    n = 1000
    h = (b - a) / n
    sumList = sum (map fn [a + h, a + 2*h .. b - h])
    helper x1 x2 = ((fn x1 + fn x2)/2 + sumList) * h
