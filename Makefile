.PHONY: build-clean clean

all: main build-clean

main: main.cpp
	shrinky $<

build-clean:
	@rm -f main.bin shrinky.h *.unprocessed *.stripped *.o *.preprocessed *.S *.ld *.glsl.hpp

clean:
	rm -f main
