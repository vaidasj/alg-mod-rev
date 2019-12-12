option DNLP=convert;
option DNLP=convert;
option DNLP=convert;
$title MathOptimizer Example 6 (MATHOPT6,SEQ=260)
* The Hundred-dollar, Hundred-digit Challenge Problems as stated by
* N. Trefethen, Oxford University.
*
* Several random points are used to test the robustness of global and
* local codes. You may want to run gams with lo=0 or lo=2 to reduce
* output to the log.
*
* More information at http://www.wolfram.com/products/applications/mathoptimizer/
*
*
*  N. Trefethen, SIAM News, January - February 2002, page 3.
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

variables x, y, obj; equation objdef;

objdef.. obj =e= Exp[Sin[50*x]] + Sin[60*Exp[y]] + Sin[70*Sin[x]] + Sin[Sin[80*y]] - Sin[10*(x + y)] + (sqr(x) + sqr(y))/4;

model m / objdef /;

x.lo= -3; x.up = 3;
y.lo= -3; y.up = 3;

parameter report summary report;

report('best','x0')  = -0.0244030796935730;
report('best','y0')  =  0.2106124271552849;
report('best','obj') = -3.306868647475235 ;

report('best','x.l') = report('best','x0');
report('best','y.l') = report('best','y0');


scalar global best known solution; global = report('best','obj')

set i random samples / rand1*rand100 /;

* You may want to run gams with lo=0 or lo=2 to reduce output to the log

m.limrow=0; m.limcol=0; m.solprint=%solprint.Report%;

scalar best / inf /;

* try random starting points and report better solution only

loop(i$(best > (global + 1e-6)),
   x.l = uniform(x.lo,x.up);  // get
   y.l = uniform(y.lo,y.up);  // random
   report(i,'x0') = x.l;      // starting point
   report(i,'y0') = y.l;      // and save
   solve m us dnlp min obj;
   m.solprint=%solprint.Quiet%; // turn off solution listing
   if(m.solvestat <> %solvestat.NormalCompletion%,
      display 'solver failed - no further solutions';
      best = -inf );   // stop the loop
   if(obj.l >= best or not(m.modelstat=%modelstat.Optimal% or
                           m.modelstat=%modelstat.FeasibleSolution% or
                           m.modelstat=%modelstat.LocallyOptimal%),
      report(i,'x0') = 0;  // remove entries from report
      report(i,'y0') = 0;  // remove entries from report
   else
      best := obj.l;
      report(i,'obj') = obj.l;
      report(i,'x.l') = x.l;
      report(i,'y.l') = y.l;
      report(i,'optcr') = -(obj.l - report('best','obj'))/report('best','obj');
      report(i,'cpu') = m.resusd;   ) );

display report;
