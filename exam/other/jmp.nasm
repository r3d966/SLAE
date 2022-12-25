;push jmp pop



global _start 

section .text 
_start:
        push _start+2
        jmp short shelljmp


shell:
	pop ecx
	xor eax, eax
	mov al, 0x4
	xor ebx, ebx
	mov bl, 0x1
	xor edx, edx
	mov dl, 0x5
	int 0x80


	xor eax, eax
        mov al, 0x1
        xor ebx, ebx
        mov bl, 0x6
        int 0x80

shelljmp:

        call shell
        msg: db "hello",0xA,0x22

