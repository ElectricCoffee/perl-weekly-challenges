import Control.Arrow ((&&&))

findDivisors :: Int -> [Int]
findDivisors 0 = []
findDivisors n = filter (\x -> n `mod` x == 0) [1..n]

findAllIntegersWithNDivisors :: Int -> [(Int, [Int])]
findAllIntegersWithNDivisors len = 
    filter (\x -> length (snd x) == len) $ (id &&& findDivisors) <$> [1..]

solution = take 10 $ findAllIntegersWithNDivisors 8
