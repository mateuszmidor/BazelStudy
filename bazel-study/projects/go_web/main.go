package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
	"github.com/mateuszmidor/BazelStudy/bazel-study/projects/go_hello_world"
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
