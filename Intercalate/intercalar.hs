import Data.List
import System.IO

-- DADAS DUAS LISTAS ORDENADAS DE FORMA CRESCENTE, OBTEM A LISTA ORDENADA RESULTANTE DA INTERCALACAO DELAS

intercalar:: [Int] -> [Int] -> [Int]

intercalar[][] = []
intercalar(a:x)[] = (a:x)
intercalar[](b:y) = (b:y)

intercalar (a:x) (b:y)
	|a > b = b : intercalar (a:x) y
	|a < b = a : intercalar x (b:y)
	|otherwise = a : b : intercalar x y 
