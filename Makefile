PRG=hello

all: nasm0 nasm1

nasm0:
	nasm -felf64 $(PRG).nasm
	ld $(PRG).o -o $(PRG)

nasm1:
	nasm -felf64 $(PRG)_new.nasm
	ld $(PRG)_new.o -o $(PRG)_new

run:
	./$(PRG)
	./$(PRG)_new

clean:
	rm *.o
	rm $(PRG)
	rm $(PRG)_new

