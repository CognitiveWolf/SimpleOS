[org 0x7c00]
    mov bp, 0x8000
    mov sp, bp

    mov bx, 0x9000
    mov dh, 2

    call disk_load

    mov dx, [0x9000]
    call print_hex

    call print_nl

    mov dx, [0x9000 + 512]
    call print_hex

    jmp $

%include "../includeFunction/sect_print.asm"
%include "../includeFunction/sect_print_hex.asm"
%include "boot_sect_disk.asm"

; Magic number
times 510 - ($-$$) db 0
dw 0xaa55

; boot sector = sector 1 of cyl 0 of head 0 of hdd 0
; from now on = sector 2 ...
times 256 dw 0xdada ; sector 2 = 512 bytes
times 256 dw 0xface ; sector 3 = 512 bytes
