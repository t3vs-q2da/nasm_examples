global _start

section .data
	msg: db "hi!",10

section .text
_print:
	push rcx
	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx,4
	syscall
	pop rcx
	ret

_start:
	mov rcx,5
	mainloop:
	call _print
	loop mainloop

	mov rax,60
	mov rdi,6
	syscall