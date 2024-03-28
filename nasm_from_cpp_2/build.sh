nasm set_var_to_2.asm -f elf64 -o set_var_to_2.o &&
nasm inc_arr.asm -f elf64 -o inc_arr.o &&
g++ cpp.cpp set_var_to_2.o inc_arr.o -z noexecstack -o out.out &&
./out.out