# Basic Makefile for 32 bit binary

CFLAGS =
LFLAGS =
LIBS =

CFLAGS32 = -m32
LFLAGS32 =
LIBS32 =

CFLAGS64 = -m64
LFLAGS64 =
LIBS64 =

.PHONY: clean build run

build: foo

clean:
	rm -f foo foo32 foo64 foo.o

foo: foo.o
	gcc $< -o $@ $(CFLAGS) $(LFLAGS) $(LIBS)

foo32: foo32.o
	gcc $< -o $@ $(CFLAGS32) $(LFLAGS32) $(LIBS32)

foo32.o: foo.c
	gcc -c $< -o $@ $(CFLAGS32)

foo64: foo64.o
	gcc $< -o $@ $(CFLAGS64) $(LFLAGS64) $(LIBS64)

foo64.o: foo.c
	gcc -c $< -o $@ $(CFLAGS64)
