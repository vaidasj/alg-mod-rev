option NLP=convert;
option NLP=convert;
option NLP=convert;
$title MathOptimizer Example 2 (MATHOPT2,SEQ=256)
* The following is still a fairly simple constrained model which has
* two variables, two equality and two inequality constraints.
* The optimum value is zero at the vector x = 0.
*
* More information at http://www.wolfram.com/products/applications/mathoptimizer/
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

$eolcom //

variables x1, x2, obj;

x1.l  =  10; x2.l  = -10;    // initial value
*x1.lo =-100; x2.lo =-100;    // lower bounds
*x1.up = 100; x2.up = 100;    // upper bounds

equations objdef, eq1, eq2, ineq1, ineq2;

objdef.. obj =e=  sqr(2*sqr(x1) - x2) + sqr(x2 - 6*sqr(x1));

eq1..    x1 =e= 10*x2 + x1*x2 ;
eq2..    x1 =e=  3*x2 ;

ineq1..  x2 + x1 =l= 1;
ineq2..  x2 - x1 =l= 2;

models m / all /;

solve m minimizing obj using nlp;

parameter report diff from global solution;

report('x1') = round(0 - x1.l,6);
report('x2') = round(0 - x2.l,6);

Display report;
