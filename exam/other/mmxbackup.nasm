global _start 

section .text 

_start:

	jmp call_encoder

encoder: 
	pop edi
	mov esi, [edi + 8]
	xor ecx, ecx
	mov cl, 4
loo:
	movq mmx0, edi
	movq mmx1, esi
	pxor mmx0, mmx1
	movq qword [esi], mmx0
	add esi, 4
	loop loo
	code
	
call_encoder:
	call encoder 
	xo: db 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa
	code: db 
