global _start

%macro print2ch 1
	push rdi
	push word %1
	mov rax,1
	mov rdi,1
	mov rsi,rsp
	mov rdx,2
	syscall
	add rsp,2
	pop rdi
%endmacro 

section .text
;fac(0)=1
;fac(a)=fac(a-1)*a
fac:
	cmp rdi,0
	je zero
	print2ch "nz"
	push rdi
	dec rdi
	call fac
	pop rdi
	imul rax,rdi
	ret
	zero:
	print2ch "zz"
	mov rax,1
	ret

_start:
	mov rdi,5
	call fac
	mov rdi,rax
	mov rax,60
	syscall