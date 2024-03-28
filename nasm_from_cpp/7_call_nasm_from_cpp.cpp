#include <cstdio>

extern "C" int getTwenty();
extern "C" int replyRAX();
extern "C" int sum(int,int);

int main()
{
	getTwenty();
	int a = replyRAX();
	int b = replyRAX();
	printf("%d %d %d %d\n",getTwenty(),a,b,sum(3,23));
	return 0;
}
//nasm -f elf64 7_call_nasm_from_cpp.asm -o 7_call_nasm_from_cpp.o
//gcc 7_call_nasm_from_cpp.cpp 7_call_nasm_from_cpp.o -z noexecstack -o 7_call_nasm_from_cpp.out