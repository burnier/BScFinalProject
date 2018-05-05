module Main
    where

import IO

main = do
  let n = 1
  
  vetorPesosInicial
  vetorEntrada 
  respQuantizadaReal x w   

--vetorPesosInicial :: IO [a]
vetorPesosInicial = do
  putStrLn "Quantas sinapses possui o neuronio ? "
  io_sp <- getLine
  let num_sp = read io_sp
  let w = (1 : (replicate num_sp 0))
  return w
  
--vetorEntrada :: IO ()
vetorEntrada = do
  putStrLn "Qual o proximo Vetor de Entrada ? "
  io_ve <- getLine
  let num_ve = read io_ve
  let x = (1 : num_ve)
  return x

dot :: [Int] -> [Int] -> Int
dot x w = sum [x!!i * w!!i | i <- [0..(length w)-1]]
  

respQuantizadaReal :: [Int] -> [Int] -> IO ()
respQuantizadaReal x w = do
  if dot x w > 0 
    then do putStrLn "Um"
            let rq = 1 
    else do putStrLn "MenosUm"
            --let rq = -1
  --putStrLn (show rq)
  --return (rq)