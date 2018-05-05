f :: Integer -> Integer
f x = x + 1

g :: Integer -> Integer
g x = f x * x

h :: Integer -> Integer -> Integer
h f g = f + g

k :: Integer -> Integer
k x = f x + h
      where
      f h = h - 1
      h = g x 
 
