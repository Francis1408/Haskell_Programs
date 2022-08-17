import Data.List
import System.IO

--VERIFICA SE O NUMERO E PRIMO -- 

primo:: Int -> Bool

primo x 
	| x < 0 = error "Numero negativo"
	| x == 0 = False
	| x == 1 = True
	| otherwise = checaPrimo x 2
	
	
checaPrimo:: Int -> Int -> Bool

checaPrimo x y
	| y == x = True
	| (mod x y==0) = False
	| (mod x y/=0) = checaPrimo x (y+1)
