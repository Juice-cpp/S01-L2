package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	// Solicitar ao usuário que insira os valores de a, b e c
	fmt.Println("Digite os valores de a, b e c:")
	fmt.Scan(&a, &b, &c)

	// Calcular o discriminante (delta)
	delta := b*b - 4*a*c

	if delta < 0 {
		fmt.Println("A equação não possui raízes reais.")
	} else if delta == 0 {
		x := -b / (2 * a)
		fmt.Printf("A equação possui uma raiz real: x = %.2f\n", x)
	} else {
		x1 := (-b + math.Sqrt(delta)) / (2 * a)
		x2 := (-b - math.Sqrt(delta)) / (2 * a)
		fmt.Printf("As raízes da equação são: x1 = %.2f e x2 = %.2f\n", x1, x2)
	}
}
