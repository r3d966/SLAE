global _start

section .text

_start:

xor eax,eax
mov ebx, eax
inc eax
int 0x80

