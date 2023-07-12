asm2:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 0x10
    mov     rax, rsi
    mov     qword [rbp - 0x08], rax
    mov     rax, rdi
    mov     qword [rbp - 0x10], rax
    jmp     test
loop:
    add     qword [rbp - 0x08], 0x01
    add     qword [rbp - 0x10], 0x74
test:
    cmp     qword [rbp - 0x10], 0xfb46
    jle     loop
    mov     rax, qword [rbp - 0x08]
    leave
    ret
