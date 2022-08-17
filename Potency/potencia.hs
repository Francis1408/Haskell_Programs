import Data.List
import System.IO

-- CALCULA A POTENCIA DE UM NUMERO DADO SEU EXPOENTE PRIMEIRAMENTE -- 


potencia:: Int->Int->Int

potencia x y 
	|(y == 0) = 1
	|(y > 0) = x * potencia x (y-1)
