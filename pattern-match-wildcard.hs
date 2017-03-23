-- creates a set up functions analagous to fst and snd for 3-tuples
first :: (a, b, c) -> a
second :: (a, b, c) -> b
third :: (a, b, c) -> c
first (x, _, _) = x
second (_, y, _) = y
third (_, _, z) = z

--can pattern match in a comprehension
let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]  
[a+b | (a,b) <- xs] -- pattern match a pair, anything not matching is rejected.