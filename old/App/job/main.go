package main

import (
	"fmt"
	"time"

	"github.com/google/uuid"
)

func main() {
	for i := 0; i < 15; i++ {
		fmt.Printf(">>>>>>>> [%d] %s\n", i, uuid.New())
		time.Sleep(time.Second)
	}
}
