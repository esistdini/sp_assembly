
global _start

printMethod:
	push ebp
	mov ebp, esp

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, printVal
	mov edx, printValL
	int 0x80

	leave
	ret

_start:
	mov ecx, 0x5

Main:

	pushad
	pushfd

	call printMethod

	popfd
	popad

	loop Main

	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

	printVal : db "Hey, I am in a loop", 0x0a
	printValL : equ $-printVal
