option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Gear Train Design (GEAR,SEQ=203)
$ontext

  A compound gear train is to be designed to achieve a specific
  gear ratio between the driver and driven shafts. The objective
  of the gear train design is to find the number of teeth of the
  four gears and to obtain a required gear ratio of 1/6.931.


Deb, K, and Goyal, M, Optimizing Engineering Designs Using a
Combined Genetic Search. In Back, T, Ed, Proceedings of the
Seventh International Conference on Genetic Algorithms. 1997,
pp. 521-528.

$offtext

option optcr=1e-5;

Integer variables
   a,f,b,d 'number of teeth in each of the gears (integer)'
Variables
   z       'objective variable'
;

Equations
   obj  'objective function'
   sym1 'symmetry'
   sym2 'symmetry'
;

Scalars
    invgratio    'reciprocal of required gear ratio'     / 6.931 /
    minteeth     'minimum number of teeth'               / 12 /
    maxteeth     'maximum number of teeth'               / 60 /
;

a.lo = minteeth; a.up = maxteeth;
f.lo = minteeth; f.up = maxteeth;
b.lo = minteeth; b.up = maxteeth;
d.lo = minteeth; d.up = maxteeth;

obj..   z =e= 1 + sqr(invgratio - (a*f)/(b*d));
sym1..  d =g= b;
sym2..  a =g= f;

* A better starting point than just the lower bounds
a.l = (maxteeth-minteeth)/2;
f.l = (maxteeth-minteeth)/2;
b.l = (maxteeth-minteeth)/2;
d.l = (maxteeth-minteeth)/2;

model m1 /all/;

solve m1 using minlp minimizing z;

Scalar  calcinvratio ratio of solution
        error        absolute error;

calcinvratio = (a.l*f.l)/(b.l*d.l);
error        = abs(calcinvratio-invgratio);
Display calcinvratio, invgratio, error;

