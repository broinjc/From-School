#include <iostream>
#include <iomanip>
using namespace std;

int main(){
	int mul3 = 3, i = 1;
	char n = ' ';
	
	while(mul3 < 151){
		if (i%10 == 0) n = '\n';
		cout << setw(5) << mul3 << n;
		mul3 += 3;
		n = ' ';
		i++;
	}	
	
	return 0;
}
