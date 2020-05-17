all:
	nasm -f bin 32bit-gdt.asm -o 32bit-gdt.bin
	qemu-system-i386 32bit-gdt.bin
