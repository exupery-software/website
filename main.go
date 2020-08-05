package main

//go:generate ./render.sh

import (
	"log"
	"net/http"
	"time"
)

func main() {
	srv := &http.Server{
		Addr:         ":8080",
		Handler:      http.FileServer(http.Dir("./www/out")),
		IdleTimeout:  30 * time.Second,
		ReadTimeout:  10 * time.Second,
		WriteTimeout: 10 * time.Second,
	}

	if err := srv.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}
