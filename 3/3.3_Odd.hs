-- data Odd = Odd Integer deriving (Eq,Show)
-- не убирайте комментарий с предыдущей строки
-- определение Odd уже присутствует в вызывающей программе
instance Enum Odd where
  succ  (Odd x) = Odd (x+2)
  pred  (Odd x) = Odd (x-2)
  toEnum x | abs (x `mod` 2) == 1 = Odd (toInteger x)
           | otherwise            = error "not odd"
  fromEnum (Odd x) = fromIntegral x
  enumFrom (Odd x) = ((Odd x): enumFrom (Odd (x+2)))
  enumFromTo (Odd x) (Odd y) = take (fromIntegral (div (y-x) 2) + 1) $ enumFrom (Odd x)
  enumFromThen (Odd x) (Odd y) = ((Odd x):enumFromThen (Odd y) (Odd (2*y-x)))
  enumFromThenTo (Odd x) (Odd y) (Odd z) =
      take (fromIntegral (div (z-y) (y-x)) + 2) $ enumFromThen (Odd x) (Odd y)
