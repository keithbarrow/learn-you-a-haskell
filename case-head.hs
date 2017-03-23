head' :: [a] -> a
head' xs = case xs of [] -> error "Cannot head an empty list"
                      (x:_) -> xs

-- Functionally equivalent to:
--head' :: [a] -> a  
--head' [] = error "No head for empty lists!"  
--head' (x:_) = x  

--Like lets vs where clauses - cases are functions in themselves and can be used anytwhere, whereas the straight pattern matching 