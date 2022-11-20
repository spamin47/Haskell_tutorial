import Distribution.Simple.Setup (trueArg)
import Language.Haskell.TH (Lit(IntegerL))
-- main = do  
--     a <- return "hell"  
--     b <- return "yeah!"  
--     putStrLn $ a ++ " " ++ b  

-- main = do  
--     let a = "hell"  
--         b = "yeah"  
--     putStrLn $ a ++ " " ++ b  

-- main = do  
--     return ()  
--     return "HAHAHA"  
--     line <- getLine  
--     return "BLAH BLAH BLAH"  
--     return 4  
--     putStrLn line  

-- main = do 
--     putStr "Hey, "
--     putStr "I'm "
--     putStrLn "Lenny!"

-- main = do
--     print True
--     print 2
--     print "haha"
--     print 3.2
--     print [3,4,3]

-- main = do
--     a <- getLine
--     b <- getLine
--     c <- getLine
--     print [a,b,c]

-- is the same as...
-- main = do  
--     rs <- sequence [getLine, getLine, getLine]  
--     print rs  



main = do
    n <- getLine
    let x = read n :: Integer
    print (fibonacci x)
    
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)