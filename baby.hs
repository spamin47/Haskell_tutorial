import System.Win32 (xBUTTON1)
--Load funtion with ":l baby"

doubleMe x = x + x

--Functions within function
doubleUs x y = doubleMe x + doubleMe y
return2plus2 = 2 + 4

--If else statement
doubleSmallNumber x = if x > 100
    then x
    else x*2

--The else part is mandatory
doubleSmallNumber' x = (if x>100 then x else x*2)+1

--Concantenating lists. (++ puts it at the end)
concatList l1 l2 = l1 ++ l2 -- concatList [1,2,3] [4,5,6], concatList ['h','e'] ['l','l']

--Concatenating lists with ':'.
concatList2 l1 l2 = l1:l2 -- concatList2 1 [2,3]

--Get element at index __ with !! 
getIndexAt i = "Hello, I am a string" !! i


--List functions
--head, tail, last, init, length, null, reverse
--take, drop, minimum, maximum, sum, product

--List comprehension
takeFirst10Times2 = [x*2 | x<-[1..10]] -- Output: [2,4,6,8,10,12,14,16,18,20]

takeFirst10Times2_withCondition =[x*2 | x<-[1..10],x*2>= 12] -- Output: [12,14,16,18,20]

--check all odd elements from input. If x is less than 10 then replace it with "BOOM!" else "BANG!"
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x<-xs,odd x]

--Zip into tuples
zipTest = zip [1..] ["apple", "orange", "cherry", "cherry", "mango"]
-- Output: [(1,"apple"),(2,"orange"),(3,"cherry"),(4,"cherry"),(5,"mango")]

--Right Triangles with perimeter
rightTriangles p= [(a,b,c) | c <- [1..10], b<-[1..10],a<-[1..10],
 a^2+b^2 == c^2,
 a+b+c == p]

length' [] = 0
length' (_:xs) = 1+ length' xs

--Factorial with recursion
factorial 0 = 1
factorial n = n * factorial (n - 1)


--case expressions

--recursion
maximum':: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail 
    where maxTail = maximum' xs

maximum'':: (Ord a) => [a] -> a
maximum'' [] = error "maximum of empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum' xs)

--replicate a char n times
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <=0 = []
    | otherwise = x:replicate' (n-1) x

--QuickSort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort[a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted
    
-- ghci> quicksort [10,2,5,3,1,6,7,4,2,3,4,8,9]  
-- [1,2,2,3,3,4,4,5,6,7,8,9,10]  
-- ghci> quicksort "the quick brown fox jumps over the lazy dog"  
-- "        abcdeeefghhijklmnoooopqrrsttuuvwxyz"  
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0 

-- Map
    -- add a b of (a,b) in list
testMap1 = map(\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]

--foldl
    --returns the sum of a list
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

-- Function composition with map
testMap2 = map(\x -> negate (abs x)) [5,-3,-6,7,3,2,1]
testMap2' = map(negate.abs)[5,-3,-6,7,3,2,1]

-- Data.Map
phoneBook =   
    [("betty","555-2938")  
    ,("bonnie","452-2928")  
    ,("patsy","493-2928")  
    ,("lucille","205-2928")  
    ,("wendy","939-8282")  
    ,("penny","853-2492")  
    ] 

findKey :: (Eq k) => k -> [(k,v)] -> v 
findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs


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
--Q7
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)