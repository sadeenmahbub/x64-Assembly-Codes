section .data
message: db "Value = %d", 10, 0

section .text
global main
extern printf

main:
   mov eax, 7
   mov ebx, 7
   mul ebx
   push eax
   push message
   call printf
   add esp, 8
   ret

