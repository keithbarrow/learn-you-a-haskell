doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else doubleMe x
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"   
let rightTriangles n = [(a,b,c) | c <- [1..n], b <- [1..c], a <-[1..b], a^2 + b^2 == c^2]