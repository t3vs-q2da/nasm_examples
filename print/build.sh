nasm "print.asm" -g -f elf64 -o "print.o" && 
ld "print.o" -o "print.out" && 
./"print.out"
echo [exit with $?]