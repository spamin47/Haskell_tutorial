--CS 152 HW4
--Q1
counter x = (\x -> (\x -> (x + 1))(x + 1))x
--Q2
subseq a b ls = do
    let x = drop a ls
    reverse (drop (length ls - b) (reverse x))
--Q3
myTail [] = [] -- handles empty list
myTail ls = tail ls
--Q4
myReverse [] = []
myReverse ls = myReverse (tail ls) ++ [] ++ [head ls] 
--Q5
myHarmonics 0 = 0
myHarmonics n = 1/n + myHarmonics (n - 1)
--Q6
-- The signature of the filter is:
-- filter :: (a -> Bool) -> [a] -> [a]
-- Filter _ [] = []
-- Filter p (x:xs)
-- 	| p x:
-- 	| otherwise = filter p xs
-- Filter is different from map since instead of applying the function to every element
-- in the list, it takes the predicate and the list and returns the list of elements that satisfy the predicate. 
