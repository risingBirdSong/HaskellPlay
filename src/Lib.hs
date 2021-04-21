module Lib
    ( someFunc
    ) where

import Data.List

someFunc :: IO ()
someFunc = putStrLn "someFunc"


ourLength [] = 0
ourLength [x] = 1
ourLength (x:xs) = 1 + (ourLength xs) 

ourLast [x] = x 
ourLast (x:xs) = ourLast xs

ourTake n _  
    | n <= 0 = []
ourTake _ [] = []
ourTake n (x:xs) = x : (ourTake (n - 1) xs)

ourMap f [] = []
ourMap f (x:xs) = (f x) : (ourMap f xs )





myMap f [] = []
myMap f (x:xs) = (f x) : myMap f xs


myLast (x:[]) = x 
myLast (x:xs) = myLast xs



myLength [] = 0 
myLength (x:xs) = 1 + myLength xs


myTake n _ | n <= 0 = []
myTake _ [] = []
myTake amount (x:xs) = x : (myTake (amount -1 ) xs) 