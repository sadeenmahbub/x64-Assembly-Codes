segment .data
fmt: db "Multiplication: %d * %d = %d",10,0
fmt2: db "Division: %d / %d = %d",10, "Remainder: %d",10,0

fmt3: db "%d",0

value1 dd 11
value2 dd -2

segment .bss

val1 resb 16
val2 resb 16

segment .text

global main
extern printf
extern scanf

main:

	push rbp
	
	mov rdi, fmt3
	mov rsi, val1
	mov al, 0
	call scanf
	
	
	mov rdi, fmt3
	mov rsi, val2
	mov al, 0
	call scanf

;For Multiplication

	mov rdi, fmt		
	mov rsi, [val1]		;1st output
	mov rax, [val1]
	mov rcx, [val2]

	imul rcx
	mov rcx, rax 		;3rd output
	mov rdx, [val2]		;2nd output
	call printf
	

;For Division
	
	mov rdi, fmt2
	mov rsi, [val1]		;1st output
	mov rax,  [val1]
	mov rcx, [val2]
	mov rdx, 0

	idiv dword [val2]
	mov r8, rdx		;4th output
	mov rcx, rax		;3rd output
	mov rdx, [val2]		;2nd output
	call printf

	mov rax, 0
	pop rbp
	ret


