--compile with command line: "ghc --make helloworld"
--Then run the executable file
main = do
    putStrLn "hello, what's your name?"
    name <- getLine --getLine reads the line from input and stores it into a variable
    putStrLn ("Hey " ++ name ++ ", you rock!")
    putStrLn "Goodbye!"
