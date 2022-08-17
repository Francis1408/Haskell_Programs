import Data.List
import System.IO

-- QUIOSQUE DE SAQUE QUE RETORNA UM VALOR EM MENOS QUANTIDADE DE NOTAS DE R$100, R$50, R$20, R$10, R$5 E R$1


trocar:: Int -> [Int]

trocar 1 = [1]
trocar 0 = []

trocar v
	|v >= 100 = trocar (v-100) ++ [100]
	|v < 100 && v >= 50 = trocar (v-50) ++ [50]
	|v < 50 && v >= 10 = trocar (v-10) ++ [10]
	|v < 10 && v >= 5 = trocar (v-5) ++ [5]
	|otherwise =trocar (v-1) ++ [1] 
	
