global _start

section .data
	msg: db "hi!",10

section .text
_start:
	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx,4
	syscall

	mov rax,60
	mov rdi,6
	syscall