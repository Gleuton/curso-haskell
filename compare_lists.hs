compare_lists :: [Int] -> [Int] -> Bool
compare_lists [] [] = True
compare_lists [] _ = False
compare_lists _ [] = False
compare_lists (a:b) (c:d) | (a == c) = compare_lists b d
                          | otherwise = False
