import Data.List
import System.IO

--CALCULA TODAS AS SIMAS PARCIAIS DE UMA LISTA DE INTEIROS --

somatorio:: Int -> [Int] -> [Int]	


somatorio c (b:y)
	| (b:y) == [] = []
	| y == [] = (c+b):[]
	|otherwise = (b+c) : y


somaParciais:: [Int] -> [Int]


somaParciais (a:x)
	| (a:x) == [] = []
	| x == [] = [a]
	| otherwise = a: somaParciais (somatorio a x)
