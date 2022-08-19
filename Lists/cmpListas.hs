import Data.List
import System.IO


data ListaT = Sublista | Superlista | Identica | Invalida deriving (Show, Eq)

-- FUNÇÃO CONTEM--
contem:: [Int] -> [Int] -> Int -> Bool

contem [] [] _ = True
contem (a:x) [] _ = True
contem [] (b:y) _ = False 

contem (a:x) (b:y) n
	| n > 0 && a==b = contem x y (n-1) 
	| n > 0 && a/=b = False
	| n==0 = True


--FUNÇÃO COMPARA MENOR--
comparaMenor:: [Int] -> [Int] -> ListaT

comparaMenor [] (a:x) = Sublista
comparaMenor (a:x) [] = Invalida

comparaMenor (a:x) (b:y)
	|a == b && (contem y x (length(y))) = Sublista
	|otherwise = comparaMenor (a:x) y


--FUNÇÃO COMPARA MAIOR--
comparaMaior:: [Int] -> [Int] -> ListaT

comparaMaior [] (a:x) = Invalida
comparaMaior (a:x) [] = Superlista

comparaMaior (a:x) (b:y) 
	|a == b && (contem x y (length(y))) = Superlista
	|otherwise = comparaMaior x (b:y)


 --FUNÇÃO COMPARA IGUAL--      
comparaIgual:: [Int] -> [Int] -> ListaT

comparaIgual [] [] = Identica

comparaIgual (a:x) (b:y)
	|a == b = comparaIgual x y
	|a /= b = Invalida


-- FUNÇÃO COMPARA LISTA--
cmpListas:: [Int]-> [Int]-> ListaT

cmpListas [] (b:y) = Sublista
cmpListas (a:x) [] = Superlista
cmpListas [] [] = Identica

cmpListas (a:x) (b:y)
	|length(a:x) == length(b:y) = comparaIgual (a:x) (b:y)
	|length(a:x) > length(b:y) = comparaMaior (a:x) (b:y) 
	|otherwise = comparaMenor (a:x) (b:y)
	
