cylinderArea :: (RealFloat a) => a -> a -> a
cylinderArea r h = 
    let sideArea = 2 * pi * r  --names defined in "let" part ...
        endArea = pi * r ^ 2
        in sideArea + 2 * endArea -- ... are accessible in "in" part

--unlike where, lets are expressions:
-- 4 * (let a = 9 in a + 1) + 2  

--Can add functions to a scope:
-- [let square x = x * x in (square 5, square 3, square 2)]

--Use ";" to separate inline bindings:
-- (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)

--Pattern matching:
-- (let (a,b,c) = (1,2,3) in a+b+c) * 100  --600

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^2] -- note bmi is in scope to the output function (before the "|")
                                                       -- note also there is no 'in', it is uneneccessary as w & h are prefined in the compprehension.

calcBmisOnlyFat :: (RealFloat a) => [(a, a)] -> [a]
calcBmisOnlyFat xs = [bmi | (w, h) <- xs, let bmi = w / h ^2, bmi >= 25] --note bmi is in scope in the filter too..