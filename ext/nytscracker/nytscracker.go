package main

import "C"
import (
	"encoding/json"
	"fmt"
	"os"

	nytcookie "github.com/nytm/go-nytcookie"
)

//export crackRaw
func crackRaw(data *C.char) *C.char {
	nyts := C.GoString(data)
	client, err := nytcookie.NewClient(os.Getenv("NYTS_SECRET"), "")
	if err != nil {
		fmt.Printf("Error creating client %v", err)
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
