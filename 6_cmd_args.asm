global _start
section .text
_start:

	mov rbx,qword [rsp+8]
_loop:;колхоз, мне впадлу исправлять
	mov rax,1
	mov rdi,1
	mov rsi,rbx
	mov rdx,1
	syscall
	inc rbx
	cmp byte [rbx],0
	jne _loop

	push 10
	mov rax,1
	mov rdi,1
	mov rsi,rsp
	mov rdx,1
	syscall
	add rsp,4

	mov rax,60
	mov rdi,0
	syscall