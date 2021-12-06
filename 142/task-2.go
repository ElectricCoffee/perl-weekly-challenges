// This is my implementation of Task 2: Sleep Sort from the Perl Weekly Challenge 142.
// I figured Go-routines were a great match for this task in particular.

package main

import (
	"fmt"
	"math/rand"
	"time"
)

func delayedPostback(value int, c chan int) {
	fmt.Printf("Received %d\n", value)
	time.Sleep(time.Duration(value) * time.Second)
	fmt.Printf("Sending %d\n", value)
	c <- value
}

func main() {
	rand.Seed(time.Now().Unix())
	arr := rand.Perm(10)

	fmt.Println(arr)

	channel := make(chan int, len(arr))

	for _, val := range arr {
		go delayedPostback(val, channel)
	}

	// for simplicity, we just recycle the existing array
	for i := range arr {
		arr[i] = <-channel
	}

	fmt.Println(arr)
}
