all:
	gcc -ffreestanding -c function.c -o function.o
	objdump -d function.o
	ld -o function.bin -Ttext 0x0 --oformat binary function.o
	ndisasm -b 32 function.bin
