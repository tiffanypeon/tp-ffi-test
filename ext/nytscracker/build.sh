ifeq ($(shell uname), Darwin)
	go build -buildmode=c-shared -o nytscracker_macosx.so nytscracker.go
else
	go build -buildmode=c-shared -o nytscracker_linux.so nytscracker.go
endif