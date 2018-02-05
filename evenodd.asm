
segment .data

fmt3: db "%d",0

fmt4: db "Even",10,0
fmt5: db "Odd", 10 ,0

val2: db 2

segment .bss

val1 resb 16

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
	

	mov rax,  [val1]
	mov rcx, [val2]
	mov rdx, 0

	idiv dword [val2]
	cmp rdx, 0
	jz printa
	
	mov rdi, fmt5
	call printf

	jmp exit

printa:
	mov rdi, fmt4
	call printf
	jmp exit

exit:
	mov rax, 0
	pop rbp
	ret
