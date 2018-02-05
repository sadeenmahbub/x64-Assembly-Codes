
segment .data

fmt3: db "%d",10, 0

fmt4: db "Even",10,0
fmt5: db "Odd", 10 ,0

val2: dq 0

segment .bss

val1 resb 16

segment .text

global main
extern printf
extern scanf

main:

	push rbp
	mov rax, 0
	mov rax, [val2]
L:	
		
	
	add rax, 1
	cmp rax, 10
	jg exit
	mov rdi, fmt3
	mov rsi, rax
	push rax
	mov rax, 0
	call printf
	pop rax
	jmp L

	;jmp exit


exit:
	mov rax, 0
	pop rbp
	ret
