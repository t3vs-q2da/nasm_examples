nasm "nasm.asm" -g -f elf64 -o "nasm.o" 
gcc cpp.cpp nasm.o -z noexecstack -o nasm_from_cpp.out
./nasm_from_cpp.out
echo [exit with $?]
