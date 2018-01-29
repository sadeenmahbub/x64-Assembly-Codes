segment .data
text1 db "What is your name?",10
text2 db "Hello, "

segment .bss
name resb 16

segment .text
global main
extern printf
main:

call _printtext1
call _getname
call _printtext2
call _printname

mov rax, 60
mov rdi,0
syscall

_getname:
mov rax, 0
mov rdi, 0
mov rsi, name
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
mov rsi, name
mov rdx, 16
syscall
ret


