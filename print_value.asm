SECTION .data
msg: db "hello world" ,10, 0
msgLen: equ $-msg
fmt: db "msg length: = %d", 10, 0

i: dd 120
fmt2: db "Value of integer: %d", 10 ,0

SECTION .text

extern printf

global main


main:
	push ebp
	mov ebp, esp

	push msg
	call printf

	push DWORD msgLen
	push fmt
	call printf

	push DWORD [i]
	push fmt2
	call printf
	
	mov esp, ebp
	pop ebp
	ret
