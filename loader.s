global loader                   ; Entry symbol for ELF

MAGIC_NUMBER equ 0x1BADB002     ; Magic number constant for GRUB
FLAGS        equ 0x0            ; Multiboot flags
CHECKSUM     equ -MAGIC_NUMBER  ; Calculate the checksum

section .text:                  ; Start the "text" - the actual code
align 4                         ; Code must be aligned to four bytes
	dd MAGIC_NUMBER               ; Write the magic num to machine code
	dd FLAGS                      ; the flags
	dd CHECKSUM                   ; and the checksum!

loader:                         ; The loader label
	mov eax, 0xCAFEBABE           ; Place number 0xCAFEBABE in register eax
.loop:
	jmp .loop                     ; Loop forever...
