fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n | n > 0     = fibonacci (n - 1) + fibonacci (n - 2)
            | otherwise = - fibonacci (n + 1) + fibonacci (n + 2)

fibonacci' n | n > 0     = helper 1 0 n
             | n == 0    = 0
             | n == 1    = 1
             | otherwise = helper' 1 0 n

helper prev prevprev n | n == 0    = prev
                       | n == 1    = prev
                       | otherwise = helper (prev + prevprev) prev (n - 1)

helper' prev prevprev n | n == 0    = prevprev
                        | n == 1    = prevprev
                        | otherwise = helper' (-prev + prevprev) prev (n + 1)
