package main

import (
	"testing"

	"gotest.tools/v3/assert"
)

func TestFizzBuzz(t *testing.T) {
	assert.Equal(t, fizzBuzz(1), "1", "fizzBuzz one should be 1")
	assert.Equal(t, fizzBuzz(11), "11", "fizzBuzz 11 should be 11")
	assert.Equal(t, fizzBuzz(12), "Fizz", "multiples of 3 should return Fizz")
	assert.Equal(t, fizzBuzz(10), "Buzz", "multiples of 5 should return Buzz")
	assert.Equal(t, fizzBuzz(15), "FizzBuzz", "multiples of 3 & 5 should return FizzBuzz")
}
