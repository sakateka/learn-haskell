class (Eq a, Enum a, Bounded a) => SafeEnum a where
  ssucc :: a -> a
  ssucc a = if maxBound == a then minBound else succ a

  spred :: a -> a
  spred a = if minBound == a then maxBound else pred a
