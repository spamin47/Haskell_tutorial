main = do
    n <- getLine
    let x = read n :: Integer
    print (fibonacci x)
    
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)