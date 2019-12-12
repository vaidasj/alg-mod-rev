option NLP=convert;
option NLP=convert;
option NLP=convert;
$title  Another Trigonometric Example (TRIGX,SEQ=388)
$ontext
Another trigonometric problem from the LGO library (GO_test_2v_2c)

Find a solution to the system of nonlinear equations
x-sin(2x+3y)-cos(3x-5y)=0
y-sin(x-2y)+cos(x+3y)=0.

This is a 2-variable, 2-constraint global optimization test
problem in itself that could have (in fact, it has) multiple
solutions. Therefore we will determine the minimal norm solution 
and iteratively increase the lower bound on the objective.


Pinter, J D, Nonlinear optimization with GAMS/LGO.
Journal of Global Optimization 38 (2007), 79-101.
$offtext

Variables obj, x, y;
Equations defobj, con1, con2;

* Define an objective function as the squared norm of the
* solution to the equations.
defobj.. obj =e= x*x+y*y;

con1.. x-sin(2*x+3*y)-cos(3*x-5*y) =e= 0 ;
con2.. y-sin(x-2*y)+cos(x+3*y) =e= 0;

model m / all /;

solve m minimizing obj using nlp;

set sol / sol1*sol10 /; parameter res;

option solprint=on,optcr=0,decimals=6;
$if not set TOL $set TOL 1e-6

loop(sol$(m.solvestat=1 and m.modelstat<=2),
   res(sol,'obj') = obj.l;
   res(sol,'x') = x.l;
   res(sol,'y') = y.l;
   res(sol,'slack') = obj.l-obj.lo;
   res(sol,'m.objval') = m.objval;
   res(sol,'obj recalc') = x.l*x.l+y.l*y.l;
   res(sol,'con1 recalc') = x.l-sin(2*x.l+3*y.l)-cos(3*x.l-5*y.l);
   res(sol,'con2 recalc') = y.l-sin(x.l-2*y.l)+cos(x.l+3*y.l);
   res(sol,'defobj.slack') = defobj.slack + eps;
   abort$(abs(res(sol,'con1 recalc'))>%TOL%) 'Con1 violated', res;
   abort$(abs(res(sol,'con2 recalc'))>%TOL%) 'Con2 violated', res;
   obj.lo = obj.l*1.1;
   solve m minimizing obj using nlp);

display res;
