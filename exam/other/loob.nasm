;loop 


global _start 

section .text 

_start:

	mov ecx, 0x5
printa:
	push ecx 
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg
	mov edx, msgl
	int 0x80
	pop ecx
	loop printa

	mov eax, 0x1
	mov ebx, 0x7
	int 0x80

section .data
	msg: db "a"
	msgl equ $-msg
