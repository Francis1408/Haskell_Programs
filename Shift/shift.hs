import Data.List
import System.IO

-- DESLOCA TODOS OS ELEMENTOS DE UMA LISTA DE INTEIROS k POSICOES PARA A ESQUERDA --

shift:: Int-> [Int] -> [Int]


shift 0 (b:y) = (b:y)

shift a (b:y)
	|a > 0 = shift (a-1) (y ++ [b]) 
