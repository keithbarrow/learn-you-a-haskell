:t -- outputs the type of the operand:
:t 'a' -- outputs 'a' :: Char 
:t True -- True :: Bool
:t "HELLO!" -- "Hello" :: [Char]
:t (True, 'a') -- (True, 'a') :: (Bool, Char)
:t 4 == 5 -- 4 == 5 :: Bool


removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] 
-- removeNonUppercase :: [Char] -> [Char] removeNonUppercase takes a char list (string) and returns a char list (string)

--Sometimes need to define the types
addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z  

--common types: Int (64 bit on 64 bit machine), Integer (unbounded), Float, Double, Bool, Char

--Type variables: placeholder for an unknown type:
:t head  -- head :: [a] -> a, list of a returns an a
:t fst -- fst (a,b) -> a, takes a pair (2-tuple) and returns a value of the type of the first in the pair.


--Type classes. 
-- what is the type of the == operator?
:t (==) -- (==) :: Eq a => a -> a -> Bool The bit between the "::" and "=>" is called the class constraint, in this case the inputs must Eq Typeclass.
        -- EQ is used for equality "=="" and inequality "/=""
:t (>) -- (>) :: Ord a => a -> a -> Bool the class constraint is Ord, ordering can be GT, LT or EQ, All ORDs must also be EQs
-- other Typeclasses:
-- Show -- can be presented as a string
-- Read -- can be parsed out of a string
read "True" || False --> True
read "8.2" + 3.8 --> 12.0
read "4"  --> uh oh, not enough information to parse. read :: (Read a) => String -> a  , outputs an "a", 
          --  if we don't give it an output type (e.g. by douing something with it) it can't infer
read "5" :: Int   --Fixed!
--Enum - can be enumarated, this e.g. [1..5], ['a'..'z'] & [LT .. GT]use enums as does the succ (succesor) and pred (predecessor)
--Bounded - bounded by upper and lower bounds - minBound :: Int and maxBound :: Int returns the upper and lower bound of Int
--Num - a numeric, all aritmetic operators have this Typeclass
--Integral
--Floating 