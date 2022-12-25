global _start 


section .text 

_start: 
	jmp short call_decoder 


decoder:
	pop esi
loo:
	xor byte [esi], 0xaa	
	jz code 
	inc esi
	jmp loo

call_decoder:
	call decoder
	code: db 
