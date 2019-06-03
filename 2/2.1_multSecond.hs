import Data.Function

multSecond = g `on` h

g a1 a2 = (*) a1 a2

h (y, b) = b
