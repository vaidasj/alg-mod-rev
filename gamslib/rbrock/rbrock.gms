option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Rosenbrock Test Function (RBROCK,SEQ=83)

$Ontext

   A Classical Unconstrained Test Problem


Rosenbrock, H H, An Automatic Method for finding the Greatest or least value of a function. Computer Journal 3 (1960), 175-184.

$Offtext


Variables f, x1, x2;
Equation func;

func.. f =e= 100*sqr(x2 - sqr(x1)) + sqr(1 - x1);

x1.lo = -10; x1.up =  5; x1.l = -1.2;
x2.lo = -10; x2.up = 10; x2.l =  1.0;

Model rosenbr / all /;
Solve rosenbr minimizing f using nlp;

