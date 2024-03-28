#!/bin/bash
#sh sh.sh <name>
#sh sh.sh 1_exit
#sh sh.sh 5_sleep
# name=$1
nasm "${name}.asm" -g -f elf64 -o "${name}.o" && 
ld "${name}.o" -o "${name}.out" && 
./"${name}.out"
echo [exit with $?]
