import Control.Monad
import Data.Char
import GHC.IO.IOMode (IOMode(ReadMode))
import Control.Exception (handle)
import System.IO

main = do
    file <- getLine
    putStrLn "New file name: "
    newFilename <- getLine
    contents <- readFile file
    writeFile newFilename contents