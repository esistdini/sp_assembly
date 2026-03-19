; Author : Dinesh Aswin S
; Comments are written in this way


global _start

_start:

  mov eax, 0x4
  mov ebx, 0x1
  mov ecx, string
  mov edx, stringL
  int 0x80

  mov eax, 0x1
  mov ebx, 0x0
  int 0x80

  string : db "Hey, I am Dinesh Aswin S aka esistdini. I can code in Assembly hehe!"
  stringL : equ $-string
