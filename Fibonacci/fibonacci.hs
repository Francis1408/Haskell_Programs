import Data.List
import System.IO


compara:: [Int]->[Int] -> Bool

compara [] [] = True

compara (a:x) (b:y)
	|a == b = compara x y
	|otherwise = False


fib:: Int -> Int

fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib (n-2)

gerafib:: Int-> [Int]


gerafib n
	|n > 0 = [fib n] ++ gerafib (n-1) 
	|otherwise = []	


		
fibonacci [] = False
fibonacci [_] = False

fibonacci (a:x) = compara (a:x) (reverse(gerafib(length(a:x))))  
