;hello world 


global _start 

section .text

_start:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg
	mov edx, msglen
	int 0x80
	mov eax, 0x01
	mov ebx, 0x02
	int 0x80



section .data
	var3: db 0xaa
	var4: dw 0xee
	var5: db 0xaa, 0xbb
	var6: dw 0xaa, 0xee
	var7: dd 0xaabbccdd
	var8: dd 0x112233
	var9: TIMES 6 db 0xff
	msg: db "hello world"
	msglen equ $-msg
section .bss 
	var1 resb 100
	var2 resw 20
