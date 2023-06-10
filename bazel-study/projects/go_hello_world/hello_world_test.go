package go_hello_world

import (
	"testing"
)

func TestHelloWorld(t *testing.T) {
	expected := "Hello World"
	actual := HelloWorld()
	if expected != actual {
		t.Errorf("expected != actual: %s != %s", expected, actual)
	}
}
