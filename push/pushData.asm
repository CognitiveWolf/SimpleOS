mov ah, 0x0e ; tty mode

mov bp, 0x8000 ; this is an address far away from 0x7c00 so that we don't get overwritten
mov sp, bp ; if the stack is empty then sp points to bp

push 'c'
push 'e'
push 'f'

mov al, [0x7ffe] ; 0x8000 - 2
int 0x10


mov al, [0x8000]
int 0x10

pop bx
mov al, bl
int 0x10 ; prints C

pop bx
mov al, bl
int 0x10 ; prints E

pop bx
mov al, bl
int 0x10 ; prints F

mov al, [0x8000]
int 0x10


jmp $
times 510-($-$$) db 0
dw 0xaa55
