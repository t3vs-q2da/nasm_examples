#include <cstdio>

extern "C" int getTwenty();
extern "C" int replyRAX();
extern "C" int sum(int,int);

int main()
{
	getTwenty();
	int a = replyRAX();
	int b = replyRAX();
	printf("%d %d %d %d\n",getTwenty(),a,b,sum(3,24));
	return 0;
}