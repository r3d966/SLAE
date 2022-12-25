; save cpu 


global _start

section .text 


printa:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg
	mov edx, msgl
	int 0x80
	ret
_start:
	mov ecx, 0x5
lprint:
	push ecx
	call printa
	pop ecx
	loop lprint
	mov eax, 0x1
	mov ebx, 0x6
	int 0x80





section .data

	msg: db "a"
	msgl equ $-msg
