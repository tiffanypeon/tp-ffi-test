build: 

clean:
install:
ifeq ($(shell uname), Darwin)
	./download.sh
	mv nytscracker_macosx.so nytscracker.so
	mv nytscracker_macosx.h nytscracker.h
else
	./download.sh
	mv nytscracker_linux.so nytscracker.so
	mv nytscracker_linux.h nytscracker.h
endif

.PHONY : build