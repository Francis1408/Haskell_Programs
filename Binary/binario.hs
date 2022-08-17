import Data.List
import System.IO

-- TRANSFORMA O NUMERO INSERIDO EM BINARIO -- 

binario:: Int-> [Int]

binario 1 = 1:[]
binario 0 = 0:[]

binario x 
	|(mod x 2 == 0) = binario (div x 2) ++ [0]
	|(mod x 2 == 1) = binario (div x 2) ++ [1]
