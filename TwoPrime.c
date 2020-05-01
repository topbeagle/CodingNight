#include <stdio.h>
#include <stdbool.h>
#include <math.h>

int main(void) {

	double total = 5;
        bool prime;
	int limit = 2000000;
        float root;
        double result;

	for(int i = 2; i < limit; i++) {
		if( i % 2 != 0i && i % 3 !=0 ) {
			prime = false;
     			root = sqrt(i);
                        result = ceil(root);
			for( int j = result; j > 3; --j) {
//				printf("J %d\n",(i%j));
				if( i % j == 0 ) {
			        	//printf("we got here %d\n", i);
					prime = true;
					break;
                                }
                       }
 		       if (prime == false)
				total+=i;
              }
        }
	
	printf("Total %lf\n", total);

return 0;
}
