option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title  Fitting of beta distribution through maximum likelihood (MLBETA,SEQ=302)
$ontext

Fitting of beta distribution through maximum likelihood


Erwin Kalvelagen, April 2004

Kotz, J, and Balakrishnan, N, Continuous Univariate Distributions,
Volumes I and II, 2nd Ed.. John Wiley and Sons, 1994.

$offtext


set i cases /i1*i75/;
parameter x(i) /

i1  4.973016e-01, i2  3.558841e-01, i3  2.419578e-02, i4  1.913753e-01, i5  4.919495e-01
i6  9.790016e-01, i7  3.856570e-01, i8  1.568263e-01, i9  8.040481e-01, i10 8.108720e-01
i11 6.016693e-01, i12 3.691279e-02, i13 9.454942e-01, i14 1.853702e-01, i15 3.496894e-01
i16 4.249933e-01, i17 9.900851e-01, i18 6.308701e-01, i19 4.474022e-02, i20 4.408432e-03
i21 3.718974e-03, i22 1.066217e-01, i23 5.304127e-01, i24 6.781648e-01, i25 6.206926e-02
i26 4.048511e-01, i27 4.941163e-01, i28 1.644695e-01, i29 2.285463e-02, i30 5.654344e-05
i31 2.657641e-01, i32 7.316988e-01, i33 6.789551e-01, i34 3.624824e-01, i35 7.429815e-03
i36 1.503384e-01, i37 7.314336e-01, i38 4.586442e-02, i39 4.060616e-02, i40 3.395101e-01
i41 9.269645e-01, i42 2.192909e-03, i43 2.511850e-02, i44 4.152490e-01, i45 1.612197e-01
i46 1.512879e-02, i47 1.381864e-01, i48 5.730967e-03, i49 1.185086e-01, i50 7.411310e-01
i51 1.564168e-02, i52 2.206906e-01, i53 9.836009e-01, i54 4.632388e-01, i55 9.968135e-01
i56 8.792355e-04, i57 9.692757e-01, i58 9.823214e-01, i59 1.248862e-01, i60 1.598848e-01
i61 9.561613e-02, i62 2.513807e-01, i63 4.435097e-01, i64 8.852468e-01, i65 1.149253e-02
i66 6.575999e-01, i67 8.236305e-01, i68 7.388426e-01, i69 6.382491e-01, i70 3.426699e-01
i71 1.244351e-01, i72 2.753017e-05, i73 1.625740e-01, i74 2.953334e-02, i75 8.739085e-02

/;

scalar n;
n = card(i);

scalar average; average = sum(i, x(i))/n;

scalar stdev 'standard deviation'; stdev = sqrt(sum(i, sqr(x(i)-average))/(n-1));

variables alpha,beta,like;
equations loglike;

loglike.. like =e= n*[loggamma(alpha+beta)-loggamma(alpha)-loggamma(beta)] +
                   sum(i, (alpha-1)*log(x(i))) +
                   sum(i, (beta-1)*log(1-x(i)));


*
* lower bounds so log() is safe
*
alpha.lo = 0.0001;
beta.lo  = 0.0001;

*
* initial values using matching moments estimates
*
scalar tmp;
tmp = average*(1-average)/sqr(stdev) - 1;
alpha.l = tmp*average;
beta.l  = tmp*(1-average);

display alpha.l,beta.l;

model m /loglike/;
solve m using nlp maximimizing like;
