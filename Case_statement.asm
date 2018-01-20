segment .data
switch: dq main.case0
	dq main.case1
	dq main.case2
i:	dq 1
fmt: db "%d",10,0
segment .text
global main
extern printf
main:

	push rbp

	mov rax, [i]
	jmp [switch+rax*8]
	
.case0:
	mov rbx,100
	mov rdi, fmt
	mov rsi, rbx
	call printf
	jmp .end

.case1: 
	mov rbx, 101
	mov rdi, fmt
	mov rsi, rbx
	call printf
	jmp .end

.case2: 
	mov rbx, 102
	mov rdi, fmt
	mov rsi, rbx
	call printf
	jmp .end

.end:	mov rax, 0
	pop rbp
	ret


