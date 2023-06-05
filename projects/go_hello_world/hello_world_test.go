package go_hello_world_test

import (
	"go_hello_world"
	"testing"
)

func TestHelloWorld(t *testing.T) {
	expected := "Hello World"
	actual := go_hello_world.HelloWorld()
	if expected != actual {
		t.Errorf("expected != actual: %s != %s", expected, actual)
	}
}
