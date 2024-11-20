
listaDecrescente :: [Int]
listaDecrescente = [30,29..1]


multiplicaPorTres :: [Int]
multiplicaPorTres = map (*3) listaDecrescente


ultimoElementoInvertido :: Int
ultimoElementoInvertido = last (reverse multiplicaPorTres)

main :: IO ()
main = do
    print multiplicaPorTres       
    print ultimoElementoInvertido
