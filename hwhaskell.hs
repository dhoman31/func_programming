-- Daniel Homan
-- 15515323

import Data.List
import System.IO

-- Define the definition
plus :: Int -> [Int] -> [Int] -> [Int]

times :: Int -> [Int] -> [Int] -> [Int]

inbetweenAdd :: [Int] -> [Int] -> Int
inbetweenAdd x y = fromDigit x + fromDigit y


inbetweenTimes :: [Int] -> [Int] -> Int
inbetweenTimes x y = fromDigit x * fromDigit y

fromDigit :: [Int] -> Int
fromDigit = foldr addNum 0
  where addNum n d = n + 10*d

storedAdd :: [Int] -> [Int] -> [Int]
storedAdd x y = digs (inbetweenAdd x y)

storedTimes :: [Int] -> [Int] -> [Int]
storedTimes x y = digs (inbetweenTimes x y)

-- turn num into a list with mod and div
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

-- reverse list
reverseList xs = foldl (\x y -> y:x) [] xs

-- combined plus
plus a x [] = x
plus a [] y = y
plus a x y =  reverseList (storedAdd x y)

times a x [] = x
times a [] y = y
times a x y =  reverseList (storedTimes x y)
