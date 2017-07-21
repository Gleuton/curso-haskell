reverse_list :: [t] -> [t]
reverse_list [] = []
reverse_list (x:xs) = reverse_list xs ++ [x]
