nasm "macro.asm" -g -f elf64 -o "macro.o" && 
ld "macro.o" -o "macro.out" && 
./"macro.out"
echo [exit with $?]