option NLP=convert;
option NLP=convert;
option NLP=convert;
$title MathOptimizer Example 1 (MATHOPT1,SEQ=255)
* A simple example model that illustrates the formulation structure for
* using LGO in the Mathematica environment.
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
*
$eolcom //

variables x1, x2, obj;

x1.lo = -10; x2.lo = -15;    // lower bounds
x1.l  =   8; x2.l  = -14;    // initial value
x1.up =  20; x2.up =  20;    // upper bounds

equations objdef, eqs, ineqs;


objdef.. obj =e= 10*sqr(sqr(x1) - x2) + sqr(x1 - 1);

eqs  ..    x1  =e= x1*x2;

ineqs..  3*x1 + 4*x2 =l= 25;

models m / all /;


*  x1.l = 1; x2.l = 1;    // optimal values

solve m minimizing obj using nlp;

parameter report solution summary report;

report('x1','global') = 1;
report('x2','global') = 1;
report('x1','solver') = x1.l;
report('x2','solver') = x2.l;
report('x1','diff') = report('x1','global')  - report('x1','solver');
report('x2','diff') = report('x2','global')  - report('x2','solver');

display report;
