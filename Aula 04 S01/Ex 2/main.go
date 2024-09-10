package main

import (
	"fmt"
	"math/rand"
	"time"
)

// Função para calcular o fatorial de um número
func fatorial(n int) int {
	if n == 0 {
		return 1
	}
	result := 1
	for i := n; i > 1; i-- {
		result *= i
	}
	return result
}

func main() {
	// Semente para gerar números aleatórios diferentes a cada execução
	rand.Seed(time.Now().UnixNano())

	// Gerar um número aleatório de 0 a 10
	numero := rand.Intn(10)
	fmt.Printf("Número aleatório gerado: %d\n", numero)

	// Calcular o fatorial do número
	fat := fatorial(numero)
	fmt.Printf("Fatorial de %d é %d\n", numero, fat)
}
