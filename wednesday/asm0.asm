asm0:
	push rbp
	mov rbp, rsp
	mov rax, rdi
jmp test
loop:
	add rax, rdx
test:
	cmp rax, rsi
	jl loop
	pop rbp
	ret
