#include <iostream>

// extern "C" int fac(int);
int fac(int a)
{
	if(a==0) return 1;
	return fac(a-1)*a;
}

int main()
{
	for(int i = 0;i<10000000;i++)
	{
		fac(25);
	}
	return 0;
}