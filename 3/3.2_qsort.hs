qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [x] = [x]
qsort xs@(x: xs') =
  qsort (filter (x >) xs)
  ++
  (x: qsort (filter (x <=) xs'))
