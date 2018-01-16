SECTION .data
msg: db "hello world" ,10, 0
SECTION .text

extern printf

global main


main:
	push ebp
	mov ebp, esp

	push msg
	call printf
	
	mov esp, ebp
	pop ebp
	ret
