segment .data
	
	fmt3: db "%d",0
	fmt4: db "%d",10,0

segment .bss

	val1 resb 16
	val2 resb 16

segment .text

	global main
	extern printf, scanf

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


	mov rax, 0
	mov rcx, 0	
	mov rax,  qword [val1]
	mov rcx,  qword [val2]
	cmp rax, rcx
	jge printa
	mov rdi ,fmt4
	mov rsi, rcx	
	call printf
	jmp exit
	
printa:
	mov rdi, fmt4
	mov rsi, rax	
	call printf
	jmp exit

exit:
	mov rax, 0
	pop rbp
	ret
