global inc_arr
section .text
inc_arr:
	sub rdi,4
	mov rcx,rsi
	loop_:
	inc dword [rdi+rcx*4]
	loop loop_
	ret