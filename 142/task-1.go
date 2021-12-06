// Task 1: 
// You are given positive integers, $m and $n.
// Write a script to find total count of divisors of $m having last digit $n.

package main

import "fmt"

func divisors(n int) []int {
	result := []int{}

	for i := 1; i <= n; i++ {
		if n % i == 0 {
			result = append(result, i)
		}
	}
	return result
}

func main() {
	m, n := 24, 2

	result := []int{}

	divs := divisors(m)
	fmt.Println(divs)

	for _, d := range divs {
		// we can get the last digit in base 10 by taking the number mod 10
		if d % 10 == n {
			result = append(result, d)
		}
	}

	fmt.Println(result)
}
