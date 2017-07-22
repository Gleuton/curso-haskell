todos_pares :: [Int] -> Boll
todos_pares [] = True
todos_pares (x:xs) | (mod x 2 /= 0) = False
                   | otherwise = todos_pares xs
