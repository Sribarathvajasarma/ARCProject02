package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "This is dataplane from ARCproject 02")
	})

	log.Fatal(http.ListenAndServe(":8080", nil))

}
