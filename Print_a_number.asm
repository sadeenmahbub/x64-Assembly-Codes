segment .data
;switch: dq main.case0
;	dq main.case1
;	dq main.case2
i:	dq 100
fmt: db "%d",10,0
segment .text
global main
extern printf
main:

	push rbp
	mov rdi, fmt
	mov rsi, [i]
	call printf
	mov rax, 0
	pop rbp
	ret


