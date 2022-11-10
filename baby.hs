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

-- length' [] = 0
-- length' (_:xs) = 1+ length' xs

--Factorial
factorial 0 = 1
factorial n = n * factorial (n - 1)


--case expressions
