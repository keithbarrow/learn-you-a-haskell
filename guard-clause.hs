bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You are an underweigh emo"
    | bmi <= 25.0 = "REEEEEEEE Get out normie"
    | bmi <= 30 = "Lose Weight Fatty"
    | otherwise = "You absoute hamplanet" -- Otherwise creates a catchall or allowall or however you'd describe it.


--can use function in guard clauses naturally enough...
bmiTell1 :: (RealFloat a) => a -> a -> String  
bmiTell1 weight height  
    | weight / height ^ 2 <= 18.5 = "You are an underweigh emo"  
    | weight / height ^ 2 <= 25.0 = "REEEEEEEE Get out normie"  
    | weight / height ^ 2 <= 30.0 = "Lose Weight Fatty"  
    | otherwise                 = "You absoute hamplanet"  


-- Weight a minute - why repeat the calculation like a plebean?
bmiTellBetter :: (RealFloat a) => a -> a -> String  
bmiTellBetter weight height  
    | bmi <= 18.5 = "You are an underweigh emo"  
    | bmi <= 25.0 = "REEEEEEEE Get out normie"  
    | bmi <= 30.0 = "Lose Weight Fatty"  
    | otherwise                 = "You absoute hamplanet"  
    where bmi = weight / height ^ 2

-- Still a bit pleb-ish
bmiTellBetterer :: (RealFloat a) => a -> a -> String  
bmiTellBetterer weight height  
    | bmi <= emo = "You are an underweigh emo"  
    | bmi <= normie = "REEEEEEEE Get out normie"  
    | bmi <= fatty = "Lose Weight Fatty"  
    | otherwise                 = "You absoute hamplanet"  
    where bmi = weight / height ^ 2
          emo = 18.5
          normie = 25.0
          fatty = 30.0

-- Now the creamy goodness
bmiTellBest :: (RealFloat a) => a -> a -> String  
bmiTellBest weight height  
    | bmi <= emo = "You are an underweigh emo"  
    | bmi <= normie = "REEEEEEEE Get out normie"  
    | bmi <= fatty = "Lose Weight Fatty"  
    | otherwise                 = "You absoute hamplanet"  
    where bmi = weight / height ^ 2
          (emo, normie, fatty) = (18.5, 25.0, 30.0)