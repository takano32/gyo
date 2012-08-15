import qualified Data.ByteString.Lazy.Char8 as BS
import System.Environment
  
main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> printCount
    ["-"] -> printCount
    ("-f":as) -> fmode as
    _ -> mmode args
  
printCount :: IO ()
printCount = BS.getContents >>= print . countLines
  
printCountF :: String -> IO ()
printCountF arg = BS.readFile arg >>= print . countLines
  
fmode :: [String] -> IO ()
fmode [] = putStr ""
fmode (arg:args) = do putStr ( arg ++ " " )
                      printCountF arg
                      fmode args
  
mmode :: [String] -> IO ()
mmode [] = putStr ""
mmode (arg:args) = do printCountF arg; mmode args
  
countLines :: BS.ByteString -> Int
countLines bs = length $ BS.lines bs
