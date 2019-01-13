-- Autumn 2018
mapskip :: (a -> a) -> [a] -> [a]
mapskip func lst
    | (length lst) == 0 = []
    | (length lst) == 0 = func (head lst) : []
    | otherwise = func (head lst) : lst !! 1 : mapskip func (drop 2 lst)

-- January 2018
-- doesn't sort the numbers however
tear :: (a -> Bool) -> [a] -> [[a]]
tear func lst = [[ a | a <- lst, func a ], [a | a <- lst, not(func a)]]

-- Autumn 2017
foo :: [a] -> [a] -> [a]
foo lst1 lst2 = poo lst1 lst2 1
    where
        poo :: [a] -> [a] -> Int -> [a]
        poo lst1 lst2 x
            | (length lst1) == 0 && (length lst2) == 0 = []
            | (length lst1) == 0 = lst2
            | (length lst2) == 0 = lst1
            | (odd x) = take x lst1 ++ poo (drop x lst1) lst2 (succ x)
            | (even x) = take x lst2 ++ poo lst1 (drop x lst2) (succ x)

-- January 2017
-- similar to the Autumn paper
weaveHunks :: Int -> [a] -> [a] -> [a]
weaveHunks x lst1 lst2
    | (length lst1) == 0 && (length lst2) == 0 = []
    | (length lst1) == 0 = lst2
    | (length lst2) == 0 = lst1
    | otherwise = take x lst1 ++ take x lst2 ++ weaveHunks x (drop x lst1) (drop x lst2)

-- Autumn 2016
tr :: [[a]] -> [[a]]
tr lst
    | (null (head lst)) = []
    | otherwise = [map head lst] ++ tr(map tail lst)

-- Janaury 2016
-- can't get into a list
revCount :: [a] -> [Int] -> [a]
revCount lst1 lst2
    | ((null lst1) || (null lst2)) = [] 
    | otherwise = revCount (tail lst1) (tail lst2) ++ replicate (head lst2) (head lst1)
