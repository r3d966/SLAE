; save cpu 


global _start

section .text 


printa:
	push ebp
	mov ebp, esp
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg
	mov edx, msgl
	int 0x80
	leave
	ret
_start:
	mov ecx, 0x5
lprint:
	push ecx
	pushad
	pushfd
	call printa
	popad
	popfd
	pop ecx
	loop lprint
	mov eax, 0x1
	mov ebx, 0x6
	int 0x80





section .data

	msg: db "a"
	msgl equ $-msg
