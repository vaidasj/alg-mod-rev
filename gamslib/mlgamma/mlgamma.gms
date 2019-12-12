option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title  Maximum Likelihood estimation of parameters of the gamma distribution (MLGAMMA,SEQ=303)
$ontext

Maximum Likelihood estimation of parameters of the gamma distribution


Erwin Kalvelagen, April 2004.

Data from:
Cox, D R, and Snell, E J, Applied Statistics: Principles and
Examples. London: Chapman and Hall, 1981.

Example from:
Tierney, L, XLISP-STAT, A Statistical Environment Based on the XLISP
Language (Version 2.0), Number 528. Tech. rep., University of Minnesota,
School of Statistics, 1989.

$offtext


set i observations /i1*i29/

parameter x(i) 'times (in operating hours) between failures of airco units on several aircraft'
 /
  i1  90,  i2  10,  i3  60,  i4 186,  i5  61
  i6  49,  i7  14,  i8  24,  i9  56, i10  20
 i11  79, i12  84, i13  44, i14  59, i15  29
 i16 118, i17  25, i18 156, i19 310, i20  76
 i21  26, i22  44, i23  23, i24  62, i25 130
 i26 208, i27  70, i28 101, i29 208
/;

scalar n; n = card(i);

scalar average; average = sum(i, x(i))/n;

scalar stdev 'standard deviation'; stdev = sqrt(sum(i, sqr(x(i)-average))/(n-1));

display average,stdev;


variables beta,mu,like;
equations loglike;

loglike.. like =e= n*[log(beta)-log(mu)-loggamma(beta)] +
                   sum(i, (beta-1)*log(beta*x(i)/mu)) -
                   sum(i, beta*x(i)/mu);


*
* lower bounds so log() and loggamma() are safe
*
beta.lo = 0.001;
mu.lo   = 0.001;

* we could use initial values

* mu.l   = average;
* beta.l = sqr(average/stdev);

model m /loglike/;
solve m using nlp maximimizing like;
