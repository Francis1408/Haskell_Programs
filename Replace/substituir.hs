import Data.List
import System.IO

-- SUBSTITUI O VALOR DE UMA LISTA POR UMA OUTRA DADA -- 

substituir:: Int -> Int -> [Int] -> [Int]

substituir a b xs = [if x == a then b else x| x <- xs]
