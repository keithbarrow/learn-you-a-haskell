-- This won't display anything, copypasta into the ghci to see what they do
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
[1..20]
['a'..'z']
['K'..'T']
[2,4..20] 
[3,6..20] 
[20,19..1]
[0.1, 0.3 .. 1]  -- Warning, floats are not normally suitable for ranges

--Cycle
cycle [1,2,3] -- DO NOT RUN IF YOU WANT TO KEEP YOUR ghci session - creates an infinite list of 1,2,3,1,2,3,1,2,3......
take 10 (cycle [1,2,3])
repeat 5  -- DO NOT RUN IF YOU WANT TO KEEP YOUR ghci session - creates an infinite list of 5,5,5,5,5,5,5,5,5,5,5......
take 7 repeat 5

--Comprehensions
[x*2 | x <- [1..10]] -- 1 to 10 is the input set, then doubled by the output function [2,4,6,8,10,12,14,16,18,20]
[ x+1 | x <- [50..100], x `mod` 7 == 3]  -- Numbers 50--> 100, filter all values which remained 3 when divided by 7. return these values + 1

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x] --defines a function: for all x in xs which are odd, output BOOM! if less than 10, otherwise BANG!

[ x | x <- [10..20], x /= 13, x /= 15, x /= 19] --Many predicates [10,11,12,14,16,17,18,20]
[ x*y | x <- [2,5,10], y <- [8,10,11]] -- Multiple input sets
[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]   --Multi sets with predicate

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]  -- Strings are lists of char underneath so this works.
removeNonUppercase "IdontLIKEFROGS"
