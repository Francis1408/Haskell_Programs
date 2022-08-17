import Data.List
import System.IO

-- VERIFICA SE O NUMERO E PERFEITO --

perfeito:: Int -> Bool

perfeito x 
	| x == 0 = False
	| otherwise = x == antecessor x 1 0
	

antecessor:: Int -> Int -> Int -> Int
	
antecessor x y sum
	|y == x = sum
	|(mod x y==0 && y/= x) = antecessor x (y+1) (sum + y)
	|(mod x y/=0) = antecessor x (y+1) sum
