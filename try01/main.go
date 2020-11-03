package main

import (
	"fmt"
	"net/http"
	"os"
	"os/signal"
	"syscall"
)

func main() {
	fmt.Println("APP_START")
	defer fmt.Println("DEFER")

	// OSシグナル（SIGTERM）の受信を待ち受ける Goroutine
	go func() {
		fmt.Println("BEFORE_NOTIFY")
		q := make(chan os.Signal, 1)
		signal.Notify(q, syscall.SIGTERM)
		<-q
		fmt.Println("GOT_NOTIFY")

		os.Exit(-1)
	}()

	// 適当にHTTPサーバーを立ち上げておく
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		if _, err := fmt.Fprint(w, "Hello"); err != nil {
			fmt.Printf("HANDLE_ERROR_OCCURRED: %+v", err)
		}
	})
	if err := http.ListenAndServe(":8080", nil); err != nil {
		fmt.Printf("SERVE_ERROR_OCCURRED: %+v", err)
	}

	fmt.Println("APP_END")
}
