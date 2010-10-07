# Basic Makefile for 32 bit binary

CFLAGS =
LFLAGS =
LIBS =

CFLAGS32 = -m32
LFLAGS32 = -m32
LIBS32 =

CFLAGS64 = -m64
LFLAGS64 = -m64
LIBS64 =

.SUFFIXES:

.PHONY: clean build run

all: foo foo32 foo64 error64

foo: foo.c
	gcc -c $(CFLAGS) $< -o foo.o
	gcc foo.o -o $@ $(LFLAGS) $(LIBS)

foo32: foo.c
	gcc -c $(CFLAGS32) $< -o foo32.o
	gcc foo32.o -o $@ $(LFLAGS32) $(LIBS32)

foo64: foo.c
	gcc -c $(CFLAGS64) $< -o foo64.o
	gcc foo64.o -o $@ $(LFLAGS64) $(LIBS64)

clean:
	rm -f *.o foo foo32 foo64

run: foo foo32 foo64
	./foo
	./foo32
	./foo64
