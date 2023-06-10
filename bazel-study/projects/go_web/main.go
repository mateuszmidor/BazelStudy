package main

import (
	"fmt"
	"go_hello_world"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func HelloWorldHandler(w http.ResponseWriter, r *http.Request) {
	log.Println("Received request")
	fmt.Fprintf(w, "%s", go_hello_world.HelloWorld())
}

func main() {
	r := mux.NewRouter()

	r.HandleFunc("/", HelloWorldHandler)

	log.Println("Listening on port 8000")
	http.ListenAndServe(":8000", r)
}
