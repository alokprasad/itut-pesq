DESTDIR =
PREFIX = /usr
BINDIR = /bin

all : build

build : bin/pesq

distclean : clean

clean :
	rm -rf bin/
	rm -rf source/*.gch

bin :
	mkdir bin

bin/pesq: bin
	$(CC) $(CFLAGS) -o $@ src/*.c -lm

