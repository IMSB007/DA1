/*
 * GccApplication1.c
 *
 * Created: 2018/2/24 0:37:45
 * Author : Administrator
 */ 

#include <avr/io.h>


int main(void)
{
	int d = 0;
	int n = 0;
	int x = 0x02;
	int z = 0x22;
    for(int i = 0; i<300;i++)
	{
	 int y = x+z;
	 if(x==00)
	 {
		 z++;
	 }
	 x++;
	 
	 if(y%5==0)
	 {
		d = d + y;
		printf("%i",d);
	 }
	 else
	 {
		 n = n + y;
		 printf("%i",n);
	 }
	}
	return 0;
}

