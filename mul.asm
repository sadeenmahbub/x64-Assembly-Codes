SECTION .data

msg: db "The result = %d", 10 ,0

SECTION .text

extern printf

global main

main:

	push rbp
	mov rbp, rsp

	mov rax, 50
	mov rcx, 3

	mul rcx
	
	push rax
	push msg
	call printf
	add rsp, 8

	mov rsp, rbp
	pop rbp
	ret 
