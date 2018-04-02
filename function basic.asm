segment .data

i:	dq 100
fmt: db "%d",10,0
fmt1: db "%d",0
a: dq 0
b: dq 0

segment .text
global main
extern printf, scanf
main:

	push rbp
	mov rbp, rsp
	
	mov rax, 0
	
	mov rdi, fmt1
	mov rsi, a
	call scanf

	mov rdi, fmt1
	mov rsi, b
	call scanf
	mov rax, [a]
	push rax
	mov rax, [b]
	push rax

	call L1
	leave
	ret

L1:	
	push rbp
	mov rbp, rsp
	mov rax, [rbp+24]
	mov rbx, [rbp+16]
	mov rdi, fmt
	mov rsi, rax
	call printf

	mov rdi, fmt
	mov rsi, rbx
	call printf
	
	mov rax, 0
	leave
	ret






