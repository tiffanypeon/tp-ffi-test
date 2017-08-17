#!/bin/bash
arch=$(uname)

if [ "$arch" = "Darwin" ]
then
	go build -buildmode=c-shared -o printcracker_macosx.so printcracker.go
else
	go build -buildmode=c-shared -o printcracker_linux.so printcracker.go
fi
