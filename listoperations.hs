-- This won't display anything, copypasta into the chci to see what they do
head [5,4,3,2,1]       -- first element
tail [5,4,3,2,1]       -- all but the last element
last [5,4,3,2,1]       -- last element only
init [1..5]            -- all but the last element
length [1..5]          -- length of list
null [1..5]            -- null check 
null []
reverse [5,4,3,2,1]    -- reverses the list
take 3 [5,4,3,2,1]     -- takes the first n elements from the list
drop 3 [8,4,2,1,5,6]   -- removes the first n elements from the list
minimum [8,4,2,1,5,6]  -- finds the minimum value in the list
maximum [1,9,2,3,4]    -- finds the maximum value in the list
sum [5,2,1,6,3,2,5,7]  -- sums all items in the list
product [6,2,1,2]      -- mulitplies elements in the list
elem 4 [1..5]	       -- find the value in the list
elem 10 [1..5]        

let factorial n = product [2..n] -- My first facroial in Haskell, yay!!!!!!!!!