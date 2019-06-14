delAllUpper :: String -> String
delAllUpper = unwords . filter (any (\x -> or [(fromEnum x) < 65, (fromEnum x) > 90])) . words
