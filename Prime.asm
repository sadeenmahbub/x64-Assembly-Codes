segment .data	
	fmt: db "%d", 0		
	fmt1: db "Prime", 10, 0
	fmt2: db "Not Prime", 10, 0
	
segment .bss
	num resq 1

segment .text
	extern printf, scanf
	global main

main:

	push rbp
	mov rdi, fmt
	mov rax, 0
	mov rsi, num
	call scanf

	mov rax, [num]
	cmp rax, 2
	je prime

	mov rbx, 2


loop :
	mov rax, [num]
	mov rdx, 0
	idiv rbx
	cmp rdx, 0
	jz notprime
	inc rbx
	cmp rbx, [num]
	je prime
	jmp loop


prime:

	mov rdi, fmt1
	mov rax, 0
	call printf
	jmp exit

notprime:

	mov rdi, fmt2
	mov rax, 0
	call printf
	jmp exit


exit:
	mov rax, 0
	pop rbp
	ret
