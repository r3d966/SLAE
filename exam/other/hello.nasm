global _start

section .text

_start:


	xor ebx, ebx
	mul ebx 
	mov al, 0x4
	mov bl, 0x1
	push 0x41414141
	mov ecx, esp
	mov dl, 0x4
	int 0x80

	xor eax, eax
	inc eax
	xor ebx, ebx
	int 0x80
