build:

clean:
install:
ifeq ($(shell uname), Darwin)
	./download.sh
	mv printcracker_macosx.so printcracker.so
	mv printcracker_macosx.h printcracker.h
else
	./download.sh
	mv printcracker_linux.so printcracker.so
	mv printcracker_linux.h printcracker.h
endif

.PHONY : build
