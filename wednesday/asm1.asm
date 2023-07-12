asm1:
    push    rbp
    mov     rbp, rsp
    cmp     rdi, 0x3a2
    jg      L3
    cmp     rdi, 0x358
    jne     L3
    mov     rax, rdi
    add     rax, 0x12
    jmp     end
L3:
    mov     rax, rdi
    sub     rax, 0x12
    jmp     end
L2:
    cmp     rdi, 0x6fa
    jne     L1
    mov     rax, rdi
    sub     rax, 0x12
    jmp     end
L1:
    mov     rax, rdi
    add     rax, 0x12
end:
    pop     rbp
    ret
