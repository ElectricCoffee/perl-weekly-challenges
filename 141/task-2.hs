atoi :: String -> Int
atoi s = read s :: Int

itoa :: Int -> String
itoa = show

powerSet :: [a] -> [[a]]
powerSet [] = [[]]
powerSet (x:xs) = [x:ps | ps <- powerSet xs] ++ powerSet xs

numbers :: Int -> [Int]
numbers n = 
    let n' = itoa n
        ns = map atoi $ filter (\s -> s /= "" && s /= n') $ powerSet n'
    in filter (\n -> n `mod` 2 == 0) ns

result = length . numbers
