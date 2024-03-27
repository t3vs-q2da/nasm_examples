global fac
section .text
fac:
	cmp rdi,0
	je zero
	push rdi
	dec rdi
	call fac
	pop rdi
	imul rax,rdi
	ret
	zero:
	mov rax,1
	ret