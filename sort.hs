list :: [Int]
list = [5,2,10,8,1]

get_smaller :: [Int] -> Int
get_smaller [x] = x
get_smaller (x:xs) | (x < get_smaller xs) = x
                 | otherwise = get_smaller xs

remove_smaller :: [Int] -> [Int]
remove_smaller [] = []
remove_smaller (x:xs) | (x == (get_smaller (x:xs))) = xs
                      | otherwise = (x:remove_smaller xs)
