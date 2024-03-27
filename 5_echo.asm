global _start

%define timespec_t_size 16

section .bss

	timespec_buf: resb timespec_t_size
section .text
_start:
	mov qword [timespec_buf],2;sec
	mov qword [timespec_buf+8],199000000;nanosecs:199000000=0.2s
	mov rax,35;nanosleep
	mov rdi,timespec_buf;1arg
	mov rsi,0;2arg
	syscall

	mov rax,60
	mov rdi,0
	syscall
