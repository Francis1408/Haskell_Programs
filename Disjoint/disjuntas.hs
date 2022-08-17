import Data.List
import System.IO

-- VERIFICA SE DUAS LISTAS SAO DISJUNTAS -- 

disjuntas:: [Int] -> [Int] -> Bool

disjuntas (a:x)[] = True
disjuntas [](b:y) = True

disjuntas (a:x) (b:y) 
	| a /= b = disjuntas (a:x) y && disjuntas x (b:y)
	| otherwise = False
