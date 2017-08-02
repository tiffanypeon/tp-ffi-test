build: 
	mkdir -p /usr/local/go/src/
	cp -r vendor/* /usr/local/go/src/
	ls /usr/local/go/src/github.com/
	go build -buildmode=c-shared -o nytscracker.so nytscracker.go

clean:
install:

.PHONY : build