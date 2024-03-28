nasm "get_name_file.asm" -g -f elf64 -o "get_name_file.o" && 
ld "get_name_file.o" -o "get_name_file.out" && 
./"get_name_file.out"
echo [exit with $?]