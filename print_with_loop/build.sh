nasm "print_with_loop.asm" -g -f elf64 -o "print_with_loop.o" && 
ld "print_with_loop.o" -o "print_with_loop.out" && 
./"print_with_loop.out"
echo [exit with $?]