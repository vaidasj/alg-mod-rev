option NLP=convert;
option NLP=convert;
option NLP=convert;
$title MathOptimizer Example 4 (MATHOPT4,SEQ=258)
*  This the 4th example from Mathematica and LGO. The global solution is at x=0.
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
$eolcom //

variables x1, x2, obj; equations objdef, eq1, ineq1;

objdef.. obj =e= sqr(2*sqr(x1)-sqr(x2)) + sqr(x2 - 6*sqr(x1));

eq1..    x1  =e= 10*x2 + 100*Sin[2*x1+3*x2];

ineq1..  x2 + x1 =l= 2;

model m /all/;

x1.lo=-10; x2.lo=-10; x1.up=+10; x2.up=+10;

set row / one,two,three, global /; parameter report(row,*) summary solution report;

x1.l = -4; x2.l = -2; // leads to local solution
report('one','x1_0') = x1.l;
report('one','x2_0') = x2.l;
solve m us nlp min obj;
report('one','x1.l') = x1.l;
report('one','x2.l') = x2.l;
report('one','modelstat') = m.modelstat;


x1.l = -2; x2.l = -1; // leads to local optimum
report('two','x1_0') = x1.l;
report('two','x2_0') = x2.l;
solve m us nlp min obj;
report('two','x1.l') = x1.l;
report('two','x2.l') = x2.l;
report('two','modelstat') = m.modelstat;

x1.l =  1; x2.l = -1; // leads to global optimum
report('three','x1_0') = x1.l;
report('three','x2_0') = x2.l;
solve m us nlp min obj;
report('three','x1.l') = x1.l;
report('three','x2.l') = x2.l;
report('three','modelstat') = m.modelstat;

x1.l =  0; x2.l =  0; // is the global optimum
report('global','x1_0') = x1.l;
report('global','x2_0') = x2.l;
solve m us nlp min obj;
report('global','x1.l') = x1.l;
report('global','x2.l') = x2.l;
report('global','modelstat') = m.modelstat;

acronym global;
report(row,'status')$((abs(report('global','x1_0')-report(row,'x1.l'))
                      +abs(report('global','x2_0')-report(row,'x2.l'))) < 1e-6) = global;

display report;
