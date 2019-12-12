option NLP=convert;
option NLP=convert;
option NLP=convert;
$title MathOptimizer Example 3 (MATHOPT3,SEQ=257)
*  A larger example with several constraints.
*
*  More information at http://www.wolfram.com/products/applications/mathoptimizer/
*
*
*  Mathematica, MathOptimizer - An Advanced Modeling and Optimization System
*  for Mathematica Users, http://www.wolfram.com/products/applications/mathoptimizer/
*
*  Janos D Pinter, Global Optimization in Action, Kluwer Academic Publishers,
*  Dordrecht/Boston/London, 1996.
*
*  Janos D Pinter, Computational Global Optimization in Nonlinear Systems,
*  Lionheart Publishing, Inc., Atlanta, GA, 2001
*
variables x1, x2, x3, x4, x5, x6, obj;
equations defobj,eq1,eq2,eq3,eq4,ineq1,ineq2,ineq3;

defobj.. obj =e= sqr(x1 + x2) + sqr(x3 - x5) + sqr(x6 - x4)
               + 2*sqr(x1 + x3 - x4) + sqr(x2 - x1 + x3 - x4)
               + 10*sqr(Sin[x5 - x6 + x1]);

eq1..  sqr(x1) - Sin[x2] - x4 + x5 + x6 =e= 0;
eq2..  x1*x3 - x2*x4*x1 - x5 - Sin[x6 - x1 - x3] =e= 0;
eq3..  x2*x6*Cos[x5] - Sin[x3*x4] + x2 - x5 =e= 0;
eq4..  x1*x2 -sqr(x3) - x4*x5 - sqr(x6) =e= 0;

ineq1.. 2*x1 + 5*x2 + x3 + x4  -1 =l= 0;
ineq2.. 3*x1 - 2*x2 + x3 - 4*x4 =l= 0;
ineq3.. x1 + x2 + x3 + x4 + x5 + x6 - 2 =l= 0;

model m / all /;

* most local solvers will find the global solution from this starting point
* x1.l= 1; x2.l= -2; x3.l= 1; x4.l= 2; x5.l= 1; x6.l= -1;
* solve m us nlp min obj;

x1.l=10; x2.l=-10; x3.l=10; x4.l=10; x5.l=10; x6.l=-10;

solve m us nlp min obj;

parameter report diff from global solution;

report('x1') = round(0 - x1.l,6);
report('x2') = round(0 - x2.l,6);
report('x3') = round(0 - x3.l,6);
report('x4') = round(0 - x4.l,6);
report('x5') = round(0 - x5.l,6);
report('x6') = round(0 - x6.l,6);

Display report;
