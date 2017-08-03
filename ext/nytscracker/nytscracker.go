package main

import "C"
import (
	"encoding/json"
	"fmt"
	"os"
	"strings"

	nytcookie "github.com/nytm/go-nytcookie"
)

//export crackRaw
func crackRaw(data *C.char) *C.char {
	nyts := C.GoString(data)
	client, err := nytcookie.NewClient(os.Getenv("NYTS_SECRET"), "")
	if err != nil {
		fmt.Printf("Error creating client %v", err)
	}

	// Use `os.Environ` to list all key/value pairs in the
	// environment. This returns a slice of strings in the
	// form `KEY=value`. You can `strings.Split` them to
	// get the key and value. Here we print all the keys.
	for _, e := range os.Environ() {
		pair := strings.Split(e, "=")
		fmt.Println(pair[0])
	}

	cookie, err := client.ParseS(nyts)
	if err != nil {
		fmt.Printf("Error parsing NYTS %v", err)
	}

	cookiejson, err := json.Marshal(cookie)
	if err != nil {
		fmt.Println(err)
	}

	return C.CString(string(cookiejson[:]))
}

func main() {}
