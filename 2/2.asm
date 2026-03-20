global _start:

FunctionCall:

	push ebx
	mov ebx,esp

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, printName
	mov edx, pritnNameL
	int 0x80

	leave

	ret

_start:

	pushad
	pushfd
	call FunctionCall
	popfd
	popad

	mov eax,0x1
	mov ebx,0x0
	int 0x80

	printName : db "My name is Dinesh Aswin S", 0x80
	pritnNameL : equ $-printName
