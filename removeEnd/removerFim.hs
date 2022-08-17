import Data.List
import System.IO

-- REMOVE OS n ULTIMOS ELEMENTOS DE UMA LISTA DE INTEIROS-- 


removeValores:: Int -> [Int] -> [Int]
	
removeValores d (f:g)
	| d > 0 = removeValores (d-1) g
	| otherwise = (f:g)

transfereValores:: Int-> [Int] -> [Int]


transfereValores c (e:z)
	| c > 0 = transfereValores (c-1) (z ++ [e])
	| otherwise = (e:z)

removerFim:: Int -> [Int] -> [Int]


removerFim a (b:y)
	| a > 0 = removeValores a (transfereValores (length(b:y)-a) (b:y))
	| otherwise = (b:y)
