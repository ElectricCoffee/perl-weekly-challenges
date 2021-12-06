-- Task 1: 
-- You are given positive integers, $m and $n.
-- Write a script to find total count of divisors of $m having last digit $n.

divisors :: Int -> [Int]
divisors n = filter (\x -> n `mod` x == 0) [1..n]

main :: IO ()
main = do 
    let (m, n) = (42, 2)
        result = filter (\x -> x `mod` 10 == n) $ divisors 42
    print result
