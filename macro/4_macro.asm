global _start
section .data
	msg: db "hi!! everyone!",10 
	msg_l: equ $-msg
	msg2: db "it's second message",10
	msg2_l: equ $ - msg2
section .text

%macro print 2
	mov rax,1
	mov rdi,1
	mov rsi,%1
	mov rdx,%2
	syscall
%endmacro 

_start:
	print msg,msg_l
	print msg2,msg2_l

	mov rax,60
	mov rdi,0
	syscall