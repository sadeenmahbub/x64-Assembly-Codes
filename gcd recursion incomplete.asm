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
	sub rsp, 32
	
	mov rax, 0
	
	

	mov rdi, fmt1
	mov rsi, a
	call scanf
	mov rdi, fmt1
	mov rsi, b
	call scanf

	mov rax, [a]
	push rax
	mov rbx, [b]
	push rbx
	cmp rax, rbx
	jge L2
	xchg rax, rbx
L2:	
	call L1
	leave
	ret


L1:	
	push rbp
	mov rbp, rsp
	mov rax, [rbp+24]
	mov rbx, [rbp+16]
	cmp rbx, 0
	jz print
	mov rdx, 0
	div rbx
	mov rax, rbx
	mov rbx, rdx
	push rax
	push rbx
	call L1


print:
	mov rdi, fmt
	mov rsi, rax
	mov rax, 0
	call printf

	
	
	mov rax, 0
	leave
	ret






