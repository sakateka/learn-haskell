class Printable x where
    toString :: x -> [Char]

instance Printable Bool where
    toString True = "true"
    toString False = "false"

instance Printable () where
    toString () = "unit type"

instance (Printable a, Printable b) => Printable (a, b) where
    toString x = "(" ++ toString (fst x) ++ "," ++ toString (snd x) ++ ")"
