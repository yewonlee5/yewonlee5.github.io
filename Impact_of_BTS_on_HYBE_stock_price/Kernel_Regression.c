#include <R.h>
#include <Rmath.h>

/* x and y will be the data vectors each of length n, 
b is the bandwidth,
g2 will be the vector of m gridpoints where we want to calculate the 
kernel regression estimates, res2, which is thus also of length m. 
*/

void kernreg7 (int *n, double *x, double *y, int *m, double *g2, double *b, double *res2)
{
    int i,j;
    double a1,a2;
    for(i = 0; i < *m; i++){
	a1 = 0.0;		// numerator
	a2 = 0.0; 	// denominator
	for(j=0; j < *n; j++){
		a1 += dnorm(x[j], g2[i], *b, 0) * y[j];
		a2 += dnorm(x[j], g2[i], *b, 0);
	    }
	res2[i] = a1 / a2; 
	}
}
