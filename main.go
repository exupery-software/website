package main

//go:generate ./render.sh

import (
	"log"
	"net/http"
	"strings"
	"time"
)

func main() {
	fs := http.FileServer(http.Dir("./www/out"))
	handler := wwwRedirect(fs)

	srv := &http.Server{
		Addr:         ":8080",
		Handler:      handler,
		IdleTimeout:  30 * time.Second,
		ReadTimeout:  10 * time.Second,
		WriteTimeout: 10 * time.Second,
	}

	if err := srv.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}

func wwwRedirect(h http.Handler) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		if host := strings.TrimPrefix(r.Host, "www."); host != r.Host {
			// Request host has www. prefix. Redirect to host with www. trimmed.
			u := *r.URL
			u.Host = host
			u.Scheme = "https"
			http.Redirect(w, r, u.String(), http.StatusMovedPermanently)
			return
		}
		h.ServeHTTP(w, r)
	}
}
