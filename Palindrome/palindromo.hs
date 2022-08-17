import Data.List
import System.IO

-- VERIFICA SE O VETOR E UM PALINDROMO --

inverte:: [Int] -> [Int]

inverte [] = []
inverte (x:xs) = inverte(xs) ++ [x]

compara :: [Int] -> [Int] -> Bool

compara [][] = True

compara (a:x) (b:y) 
	|a == b = compara x y
	|otherwise = False

palindromo:: [Int]-> Bool

palindromo xs 
	| (mod (length xs) 2 /= 1) = False
	| otherwise = compara xs (inverte xs)



