// []+O+J=<3

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
using namespace std;

double getMonthlyPayment(double p, double r, int n){
	r = (r/100)/n;
	return p*r* (pow((1+r),n)) / (pow((1+r),n)-1);
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
    	  double p = atof(argv[1]); // Principal
        double r = atof(argv[2]); // Yearly interest rate
        int 	n = atof(argv[3]); // Number of monthes to pay it off
        double m = getMonthlyPayment(p, r, n);
        
        double b = p;				 // balance
        double mi = 0.0;			 // Monthly interest amount
		  double pr = p;
		  
        printf("Monthly payment for a $%4.2f %4.2f%% loan of %d monthly payments is $%.2f.\n", p, r, n, m);
        
        
        printf("Payment Interest  Principal  Balance\n");
        
        for(int i=1;i<13;i++){
        		mi = ((r/100)/12)*b;
        		b = b - getMonthlyPayment(p, r, n)+mi;
        		pr = getMonthlyPayment(p, r, n)-mi;
        		printf("%-7d $%-7.2f  $%-7.2f   $%-7.2f\n",i,mi,pr,b);
        }
    }
    return 0;
}