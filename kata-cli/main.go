package main

import (
	"fmt"
	"os"
	"time"
)

// Creates a new folder with the date and prints out the command to
// change to that dir
func main() {
	currentTime := time.Now()
	formattedDate := currentTime.Format("2006-01-02")

	err := os.Mkdir(formattedDate, 0750)
	if err != nil {
		panic(err)
	}
	fmt.Printf("cd %s\n", formattedDate)
}
