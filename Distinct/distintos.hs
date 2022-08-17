import Data.List
import System.IO

-- VERIFICA SE TODOS OS ELEMENTOS DE UMA LISTA SAO DISTINTOS -- 

comparaValores:: Int -> [Int] -> Bool

comparaValores a [] = True

comparaValores a (b:y) 
	| a /= b = comparaValores a y && comparaValores b y 
	| otherwise = False
	

distintos:: [Int] -> Bool

distintos [] = True

distintos (a:x) 
	| comparaValores a x = True
	| otherwise = False
