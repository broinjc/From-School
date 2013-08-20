#include <iostream>
#include <iomanip>
#include <math.h>
using namespace std;


int hexStringToInt(char *hex){
	int dec = 0; // decimal value we will return
	int p = 0;	 // power of base at certain placevalue in hex string
	// iterate through the string, backwards
	// if hex[i] is a letter, convert it to a 
	for(int i = strlen(hex)-1; i > -1; i--){	
		
		// invalid input
		if((hex[i]<48)||((hex[i]<65)&&(hex[i]>57))||((hex[i]>70)&&(hex[i]<97))||(hex[i]>102)){
			return -1;
		}
		
			// lowercase letters a - f
			if(hex[i] > 96)
					dec += (hex[i]-87) * pow(16,p);
			// capital letters A - F
			else if(hex[i] > 64)
					dec += (hex[i]-55) * pow(16,p);
			// a number
			else
					dec += (hex[i]-48) * pow(16,p);
			p++; // increment power
	}
	return dec;
}

// A number in hexadecimal is given on command line
int main(int argc, char *argv[]) {
    if (argc > 1) {
        int num = hexStringToInt(argv[1]); // Convert the input to decimal
       cout << "In decimal, " << argv[1] << " is " << num << endl;
    }
    return 0;
}

