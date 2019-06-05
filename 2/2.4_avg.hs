avg :: Int -> Int -> Int -> Double
avg a b c =  (f a + f b + f c) / 3 where
    f = fromIntegral
