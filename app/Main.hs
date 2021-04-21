module Main where

import Play

main :: IO ()
main = someFunc

isIsogram :: String -> Bool
isIsogram = go []
    where 
    go l []     = True 
    go l (x:xs) = if x `elem` l then False else go (x:l) xs