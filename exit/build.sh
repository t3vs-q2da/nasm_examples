nasm "exit.asm" -g -f elf64 -o "exit.o" && 
ld "exit.o" -o "exit.out" && 
./"exit.out"
echo [exit with $?]