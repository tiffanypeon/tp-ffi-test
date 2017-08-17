package main

import "C"

//export printString
func printString(data *C.char) *C.char {
	myString := C.GoString(data)
	return C.CString(myString)
}

func main() {}
