segment .data
fmt: db "Result is: %d * %d = %d",10,0
value1 dd 10
value2 dd 20

segment .text
global main
extern printf
main:

	push rbp
	mov rdi, fmt
	mov rsi, [value1]

	mov rax, [value1]
	mov rcx, [value2]

	imul rcx
	mov rcx, rax
	mov rdx, [value2]
	call printf

	mov rax, 0
	pop rbp
	ret


