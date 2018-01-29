segment .data
	text1 db "Enter first number:",10
	text2 db "Enter second number:", 10
	res db "result, "

segment .bss
	val1 resb 16
	val2 resb 16
	;res resb 16

segment .text
	global main
	extern printf
main:

	call _printtext1
	call _getname1
	nop
	call _printtext2
	call _getname2
	
	

	mov rax, [val1]
	mov rcx, [val2]
	add rax, rcx
	sub rax, '0'
	mov [res], rax
	
	call _printname
	;syscall
	
	mov rax, 60
	mov rdi,0
	syscall

_getname2:
	mov rax, 0
	mov rdi, 0
	mov rsi, val2
	mov rdx, 16
	syscall
	ret

_getname1:
	mov rax, 0
	mov rdi, 0
	mov rsi, val1
	mov rdx, 16
	syscall
	ret



_printtext1:
	mov rax, 1
	mov rdi, 1
	mov rsi, text1
	mov rdx, 19
	syscall
	ret

_printtext2:
	mov rax, 1
	mov rdi, 1
	mov rsi, text2
	mov rdx, 7
	syscall
	ret

_printname:
	mov rax, 1
	mov rdi, 1
	mov rsi, res
	mov rdx, 16
	syscall
	ret


