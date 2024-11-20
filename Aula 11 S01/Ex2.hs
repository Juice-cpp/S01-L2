
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

calcula :: Int -> Int
calcula n
    | n > 0     = fatorial n
    | otherwise = n * 2

main :: IO ()
main = do
    let numero = 5 
    print (calcula numero)
