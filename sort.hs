list :: [Int]
list = [5,2,10,8,1,1,11]

get_smaller :: [Int] -> Int
get_smaller [x] = x
get_smaller (x:xs) | (x < get_smaller xs) = x
                 | otherwise = get_smaller xs

remove_smaller :: [Int] -> [Int]
remove_smaller [] = []
remove_smaller (x:xs) | (x == (get_smaller (x:xs))) = xs
                      | otherwise = (x:remove_smaller xs)

aux_sort :: [Int] -> [Int] -> [Int]
aux_sort ordered_list [] = ordered_list
aux_sort ordered_list (x:xs) = aux_sort (ordered_list++[get_smaller (x:xs)]) (remove_smaller (x:xs))

sort :: [Int] -> [Int]
sort [] = []
sort list = aux_sort [] list
