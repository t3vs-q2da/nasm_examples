#nasm 1_exit.asm -f elf64 -o 1_exit.o && ld 1_exit.o -o 1_exit.out && ./1_exit.out
read name
nasm "${name}.asm" -f elf64 -o "${name}.o" && 
ld "${name}.o" -o "${name}.out" && 
./"${name}.out"