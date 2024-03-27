global getTwenty
global replyRAX
global sum
section .text
getTwenty:
	mov rax,12
	ret
replyRAX:
	ret
sum:
	mov rax,rdi
	add rax,rsi
	ret
;nasm -f elf64 7_call_nasm_from_cpp.asm -o 7_call_nasm_from_cpp.o
;gcc 7_call_nasm_from_cpp.cpp 7_call_nasm_from_cpp.o -z noexecstack -o 7_call_nasm_from_cpp.out