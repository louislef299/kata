package main

import (
	"fmt"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestPasswordValidation(t *testing.T) {
	tests := []struct {
		input       string
		expected    bool
		returnError error
		title       string
	}{
		{"password", true, nil, "Simple"},
	}

	for _, tt := range tests {
		t.Run(fmt.Sprintf("Test %s", tt.title), func(t *testing.T) {
			ret, err := Validate(tt.input)
			assert.ErrorIs(t, err, tt.returnError)
			assert.Equal(t, ret, tt.expected)
		})
	}
}
