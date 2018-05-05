module Main
    where

import IO
import Hugs.IOExts

main = do
  w <- conversaoInseguraVec (vetorPesosInicial)   :: [Int]
  --a <- conversaoInseguraInt (numElemClasseA)    :: Int
  --b <- conversaoInseguraInt (numElemClasseB)    :: Int
  --x <- conversaoInseguraVec (vetorEntrada)      :: [Int]
  r <- respQuantizadaReal w x
  show x   

--Parametro da Taxa de Aprendizagem
n :: Int
n = 1


vetorPesosInicial :: IO [Int]
vetorPesosInicial = do
  putStrLn "Quantas sinapses possui o neuronio ? "
  io_sp <- getLine
  let num_sp = read io_sp
  let w = (1 : (replicate num_sp 0))
  return w
   
{-
numElemClasseA :: IO Int
numElemClasseA = do
  putStrLn "Quantos elementos da Classe A serao utilizados ? "
  io_a <- getLine
  let a = read io_a
  return a  


numElemClasseB :: IO Int
numElemClasseB = do
  putStrLn "Quantos elementos da Classe B serao utilizados ? "
  io_b <- getLine
  let b = read io_b
  return b
-}

vetorEntrada :: IO [Int]
vetorEntrada = do
  putStrLn "Qual o proximo Vetor de Entrada ? "
  io_ve <- getLine
  let num_ve = read io_ve
  let x = (1 : num_ve)
  return x


dot :: [Int] -> [Int] -> Int
dot x w = sum [x!!i * w!!i | i <- [0..(length w) - 1]]


respQuantizadaReal :: [Int] -> [Int] -> Int
respQuantizadaReal x w
  | (dot x w > 0) = 1
  | otherwise = -1


{-
      
conversaoInseguraInt :: IO Int -> Int
conversaoInseguraInt a = unsafePerformIO a
-}

conversaoInseguraVec :: IO [Int] -> [Int]
conversaoInseguraVec a = unsafePerformIO a

