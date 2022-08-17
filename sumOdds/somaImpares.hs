import Data.List
import System.IO

-- CALCULA A SOMA DOS NÚMEROS IMPARES DE UMA LISTA --


somaImpares:: [Int] -> Int

somaImpares [] = 0

somaImpares (a:x) 
	|(mod a 2==0) = somaImpares x
	|(mod a 2/=0) = a + somaImpares x
