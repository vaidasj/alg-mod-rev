option DNLP=convert;
option DNLP=convert;
option DNLP=convert;
$title LGO Interface Example (FCT,SEQ=265)

* This example is taken from the LGO Interface Guide. It is a
* 5-variable, 3-constraint test problem with the global solution
* at x*=0 f(x*)=0.
*
*
* Janos Pinter, LGO - Users Guide, Pinter Consulting Services, Halifax,
* Canada, 2003.

scalar scaleaux / 2 /;

variables obj, aux1, aux1a, aux2, aux2a, aux, fct, x1, x2, x3, x4, x5;

equations defobj, deffct, defaux, defaux1, defaux1a, defaux2, defaux2a, con1, con2, con3;

defobj.. obj =e= fct + scaleaux*aux;

deffct.. fct =e= sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5);

defaux..   aux   =e= aux1a+aux2a;

defaux1..  aux1  =e= sqr(sqr(x1)-x2) + sqr(x3) + 2*sqr(x4) + sqr(x5-x2);
defaux1a.. aux1a =e= abs(sin(4*mod(aux1,pi)));

defaux2..  aux2  =e= sqr(x1+x2-x3+x4-x5) + 2*sqr(-x1+x2+x3-x4+x5);
defaux2a.. aux2a =e= abs(sin(3*mod(aux2,pi)));


con1.. x1 + 3*sqr(x2) + sqr(x3) - 2*sqr(x4) + sqr(x5) =e= 0 ;

con2.. x1 + 4*x2 - x3 + x4 - 3*x5 =e= 0;

con3.. sqr(x1) - sqr(x3) + 2*sqr(x2) - sqr(x4) - sqr(x5) =e= 0 ;

model  m / all /;

*$ontext
x1.lo = -10; x1.l = 2; x1.up = 5;
x2.lo = -10; x2.l = 2; x2.up = 5;
x3.lo = -10; x3.l = 2; x3.up = 5;
x4.lo = -10; x4.l = 2; x4.up = 5;
x5.lo = -10; x5.l = 2; x5.up = 5;
*$offtext


solve m us dnlp min obj;

parameter report diff from global solution;

report('x1') = round(0 - x1.l,6);
report('x2') = round(0 - x2.l,6);
report('x3') = round(0 - x3.l,6);
report('x4') = round(0 - x4.l,6);
report('x5') = round(0 - x5.l,6);

Display report;
