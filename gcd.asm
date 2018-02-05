segment .data

fmt3: db "%d",0

fmt4: db "%d",10,0
fmt5: db "Odd", 10 ,0

;val2: db 2
gcd: db 0
cnt: db 0
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
	
	mov rax, [val1]
	mov rcx, [val2]
	mov rbx, [cnt]
L:
	cmp rax, rcx
	jz L1
	
	cmp rax, rcx
	jg L2	
	
	sub rcx, rax
	jmp L

L2:
	
	sub rax, rcx

	jmp L

L1:
	mov rdi, fmt4
	mov rsi, rax
	call printf
	jmp exit

exit:
	mov rax, 0
	pop rbp
	ret
