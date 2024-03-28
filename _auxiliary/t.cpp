#include <iostream>
#include <cstddef>
#include <time.h>
#include <climits>
#include <bitset>

void printBinary(const void* data, size_t size) {
    const unsigned char* bytes = static_cast<const unsigned char*>(data);
    for (size_t i = 0; i < size; ++i) {
        std::bitset<8> bits(bytes[i]);
        std::cout << bits << " ";
    }
    std::cout << std::endl;
}


int main()
{
	// std::cout<<sizeof(long int)<<std::endl;
	// std::cout<<sizeof(timespec)<<std::endl;
	timespec time{};
	time.tv_sec=1;
	// time.tv_nsec=99'000'000;
	nanosleep(&time,0);
	// printBinary(&time,sizeof(time));
	return 0;
}