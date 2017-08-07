package main

import "C"
import (
	"encoding/json"
	"fmt"

	nytcookie "github.com/nytm/go-nytcookie"
)

const nyts_secret = "NYTS_SECRET_PLACE_HOLDER"

//export crackRaw
func crackRaw(data *C.char) *C.char {
	nyts := C.GoString(data)
	client, err := nytcookie.NewClient(string(nyts_secret), "")
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
