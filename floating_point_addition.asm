       extern printf		; the C function to be called

    section	.data  		; preset constants, writable
  a:	dq	3.0		; 64-bit variable a initialized to 3.0
  b:	dq	4.0		; 64-bit variable b initializes to 4.0

  fmt:    db "%lf",10,0		; format string for printf

    section .text		; instructions, code segment
    global	main		; for gcc standard linking
  main:				; label

    mov rdi, fmt
    push	rbp		; set up stack
    fld qword [a]
    fadd qword [b]
    fstp qword [a]
    movq xmm0, [a]
    call printf
    pop	rbp		; pop stack
          mov     rax,0           ; exit code, 0=normal
    ret			; main returns to operating system
