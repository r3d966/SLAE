;libc 

extern printf 
extern exit 


global main	

section .text 

main: 

	push msg
	call printf
	add esp,0x4
	
	mov eax, 0xa
	call exit
section .data

	msg: db "hello",0x00
