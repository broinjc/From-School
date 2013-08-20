#include <stdio.h>

int main(){
	int mul3 = 3, i = 1;
	char n = ' ';
	
	while(mul3 < 151){
		if (i%10 == 0) n = '\n';
		printf("%5d %c", mul3, n);
		mul3 += 3;
		n = ' ';
		i++;
	}	
	
	return 0;
}
