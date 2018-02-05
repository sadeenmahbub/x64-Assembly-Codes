segment .data

fmt3: db "%d",0

fmt4: db "%d",10,0
fmt5: db "Odd", 10 ,0
ri: dq 0
val10: db 10
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
	
	
	mov rax, [val1]

	;mov rbx, [cnt]
L:
	cmp [val1], 0
	jz L1
	
	div qword [val10]
	mov rbx, rdx
	mov rcx, [ri]
	mul rcx, 10
	add rcx, rbx
	
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
