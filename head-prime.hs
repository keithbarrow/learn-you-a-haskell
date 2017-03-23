head' :: [a] -> a 
head' [] = error "Can't head an empty list"
head' (x:_) = x -- x:_ means match x, and all the things. could x:y:_ for the first two elements (which become x & y)

-- For good measure

length' :: (Num b) => [a] -> b  -- b is a Num, list of a becomes a "b" (number)
length' [] = 0
length' (_:xs) = 1 + length' xs   -- skip the first and recurse the remaining xs.


--As patterns - allows access to the the whole pattern
capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:_) = "The first letter of " ++ all ++ " is " ++ [x]   -- all (before "@") is assinged the whole pattern