list :: [Int]
list = [5,2,10,8,1]

get_small :: [Int] -> Int
get_small [x] = x
get_small (x:xs) | (x < get_small xs) = x
                 | otherwise = get_small xs
