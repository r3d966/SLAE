;push jmp pop



global _start

section .text 
_start:
	jmp short call_shell
shell:
	pop esi
	push ebp
	mov ebp, noo
	xor eax, eax
	mov byte [esi+9],al
	mov dword [esi+10], esi
	mov dword [esi+14], eax
	mov al, 0xb
	lea ebx, [esi]
	lea ecx, [esi+10]
	lea edx, [esi+14]
	int 0x80
	leave
	ret

call_shell:
	call shell
	msg: db "/bin/bashABBBBCCCC"
noo:
	nop
