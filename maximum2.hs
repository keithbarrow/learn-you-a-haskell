maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Cannot find maxium of an empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)