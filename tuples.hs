-- This won't display anything, copypasta into the ghci to see what they do
-- Tuples are sets like lists but can contain more than one type, and list of int can only have ints.
-- How about the following for three co-ordinates on a triange:
[[1,2],[8,11],[4,5]] -- This can be made to works
--BUT this is valid in haskell:
[[1,2],[8,11,5],[4,5]] -- still a list of number lists.
--TADA, Tuples to the enrescument:
[(1,2),(8,11),(4,5)] -- Our co-ordinates defined
[(1,2),(8,11,5),(4,5) -- Nope, compile error, expect a list of tuples of two numbers.

--n-tuple
[("Christopher", "Walken", 73), ("Natalie", "Portman", 35)]

--functions (2-tuples only)
fst (8,11) -- First
snd (8,11) -- Second

--other functions
 zip [1 .. 5] ["one", "two", "three", "four", "five"]   --[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]  -- Will shorten to the shortest list