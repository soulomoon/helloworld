module Main (main) where

import Example

main :: IO ()
main = do
  print $ haskellSin 0.0
  putStrLn "Hello, World!"

-- import Control.Exception
-- import GHC.IO (catchException)

-- data DropException = DropException deriving (Show)
-- instance Exception DropException
-- go = throwIO DropException
-- main = catchException go (\DropException -> putStrLn "Dropped")
