segment .data
fmt: db "Result is: %d * %d = %d",10,0
fmt2: db "Result is: %d / %d = %d, Remainder: %d",10,0
value1 dd 25
value2 dd 10

segment .text
global main
extern printf
main:

	push rbp

;For Multiplication

	mov rdi, fmt		
	mov rsi, [value1]	;1st output
	mov rax, [value1]
	mov rcx, [value2]

	imul rcx
	mov rcx, rax 		;3rd output
	mov rdx, [value2]	;2nd output
	call printf
	

;For Division

	mov rdi, fmt2
	mov rsi, [value1]	;1st output
	mov rax, [value1]
	mov rcx, [value2]
	mov rdx, 0

	idiv rcx
	mov r8, rdx		;4th output
	mov rcx, rax		;3rd output
	mov rdx, [value2]	;2nd output
	call printf

	mov rax, 0
	pop rbp
	ret


