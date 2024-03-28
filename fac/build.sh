nasm "fac.asm" -g -f elf64 -o "fac.o" && 
ld "fac.o" -o "fac.out" && 
./"fac.out"
echo [exit with $?]