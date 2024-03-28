#include <iostream>

extern "C" void set_var_to_2(int*);
extern "C" void inc_arr(unsigned int*,int);

int main()
{
	int a = 5;
	std::cout<<a<<std::endl;
	set_var_to_2(&a);
	std::cout<<a<<std::endl;
	unsigned int n = 33;
	unsigned int arr[n];
	for(unsigned int a : arr)
	{
		std::cout<<a<<std::endl;
	}
	inc_arr(arr,n);
	std::cout<<'-'<<std::endl;
	for(unsigned int a : arr)
	{
		std::cout<<a<<std::endl;
	}
	return 0;
}