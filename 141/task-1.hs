findDivisors :: Int -> [Int]
findDivisors 0 = []
findDivisors n = filter (\x -> n `mod` x == 0) [1..n]

{- Finds all the divisors of all integers and filters the list 
 - by the required divisor length.
 - Since a number is always its own divisor, 
 - we just strip all but the very last integer in the divisor list.
 -}
findAllIntegersWithNDivisors :: Int -> [Int]
findAllIntegersWithNDivisors len = 
    -- need to use fmap instead of <$> because <$> isn't infixr, but instead infixl.
    fmap last . filter (\x -> length x == len) $ findDivisors <$> [1..]

solution = take 10 $ findAllIntegersWithNDivisors 8

-- a colollary to the comment above, is that any number with exactly 2 divisors must be prime.
primes = take 10 $ findAllIntegersWithNDivisors 2
