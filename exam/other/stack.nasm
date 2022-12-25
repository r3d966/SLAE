;push jmp pop



global _start 

section .text 
_start:



	xor eax, eax
	mov al, 0x4
	xor ebx, ebx
	mov bl, 0x1
	xor edx, edx
	push edx
	push 0x0a0a0a6f
	push 0x6c6c6568
	mov ecx, esp
	mov dl, 0x8
	int 0x80


	xor eax, eax
        mov al, 0x1
        xor ebx, ebx
        mov bl, 0x6
        int 0x80
