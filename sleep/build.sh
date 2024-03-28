nasm "sleep.asm" -g -f elf64 -o "sleep.o" && 
ld "sleep.o" -o "sleep.out" && 
./"sleep.out"
echo [exit with $?]