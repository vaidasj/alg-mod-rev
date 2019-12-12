option DNLP=convert;
option DNLP=convert;
option DNLP=convert;
$title MathOptimizer Example 5 (MATHOPT5,SEQ=259)
* Eight univariate test models with simple box constraints. Compares
* the performance on eight models.
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
sets ff / f1*f8 /, f(ff) dynamic version of ff
     k  / k0*k6 /, k5(k) / k1*k5 /
     
set frun(ff)  models that are to be run;
$if set     frun set frun / %frun% /;
$if not set frun frun(ff) = yes;

parameters c4(k) / k4 2, k3 -13, k2 18, k1 -10, k0 3 /
           c7(k) / k5 0.2, k4 -1.6995, k3 0.998266, k2 -0.0218343, k1 -0.000089248 /
           c8(k) / k2 2, k4 -1.05, k6 0.1666667, k1 -1 /;


*  Instead of defining eight different models we combine the
*  the models into one single objective function. Note the use
*  of the dynamic set f and the function sameas() which allows
*  us to select any component at runtime. The equation objdef is
*  declared using the domain ff, but defined with the dynamic set f.
*  This will permit convenient testing of all eight models.

variables x, obj; equation objdef(ff);

objdef(f).. obj =e=
                                                              (
    Exp[-x] - power(Sin[x],3)                   )$sameas('f1',f)+(
    sqr(x) - Cos[18*x]                          )$sameas('f2',f)+(
    Sin[x]*sqr(Cos[x] - Sin[x])                 )$sameas('f3',f)+(
    sqr(sum(k, c4(k)*power(x,ord(k)-1)))        )$sameas('f4',f)+(
    Sum[k5, ord(k5)*Sin[(ord(k5)+1)*x+ord(k5)]] )$sameas('f5',f)+(
    0.1*x + Sqrt[Abs[x]]*sqr(Sin[x])            )$sameas('f6',f)+(
    0.01*sum(k, c7(k)*power(x,ord(k)-1))        )$sameas('f7',f)+(
    sum(k, c8(k)*power(x,ord(k)-1))             )$sameas('f8',f);

model m / objdef /;

*  You could use the convert option to expand all equation to allow
*  better verification with the original source.
*
*  f(ff) = yes; option dnlp=convert; solve m using dnlp min obj;

table bounds(ff,*) bounds and starting values used by J Pinter
    lo  up   l
f1  -5  10   1
f2  -5   5   2
f3   0  10   3
f4  -1   4   3
f5 -10  10   5
f6 -10   5   6
f7   0   8   2
f8  -2   2.5 1

set col / x_initial, f_solver, f_global, f_reldiff, x_solver, x_global, status  /;
acronym global,local,failed,capability; scalar stat;

* note that in some cases we have multiple global optima. For
* example f5 has three global optima spaced 2*pi apart.
* the x_global is just used a possible starting point for
* local optimizers.

table data(ff,col) solution summary

      x_global     f_global
f1    7.85411102   -0.99961182
f2    0            -1
f3    5.22405862   -1.61642493
f4    1
f5   -7.39728499  -14.83795000
f6   -9.44104654   -0.94329150
f7    6.32565486   -4.43672834
f8    1.75767181   -0.68607228   ;


*   Solve for each component of the objective function and collect
*   the result to report performance.

f(ff) = no;
loop(frun(ff),
   x.lo  = bounds(ff,'lo');
   x.up  = bounds(ff,'up');
   x.l   = bounds(ff,'l');
*  try different starting points
*   x.l = uniform(x.lo,x.up);
*   x.l = bounds(ff,'l');
*   x.l = data(ff,'x_global');
*   x.l = 0;
   data(ff,'x_initial') = x.l;
   f(ff) = yes; solve m us dnlp min obj; f(ff) = no;
   if(m.modelstat=%modelstat.Optimal% or
      m.modelstat=%modelstat.LocallyOptimal% or
      m.modelstat=%modelstat.FeasibleSolution%, // good return
      data(ff,'f_reldiff') = abs(data(ff,'f_global') - obj.l)/(1+abs(data(ff,'f_global')));
      if(data(ff,'f_reldiff') < 1e-6,
         stat = global
      else
         stat = local );
      data(ff,'x_solver') = x.l;
      data(ff,'f_solver') = obj.l
   else
      data(ff,'f_reldiff') = na;
      if(m.solvestat = %solvestat.CapabilityProblems%,
         stat = capability
      else
         stat = failed);
      data(ff,'x_solver') = na;
      data(ff,'f_solver') = na  );
   data(ff,'status') = stat  );

options decimals=7; display data;
