option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Linear Multiplicative Programs - Type 2 (LMP2, SEQ=252)

$Ontext

   Generates and solves random linear multiplicative models of
   "Type 2." Problem instances are generated as proposed by
   Thoai. Model developed by N. Sahinidis.


N. V. Thoai, "A global optimization approach for solving
convex multiplicative programming problems,"
Journal of Global Optimization, 1(341-357), 1991.

M. Tawarmalani and N. Sahinidis, Convexification and Global
Optimization in Continuous and Mixed-Integer Nonlinear
Programming: Theory, Algorithms, Software, and Applications,
Kluwer Academic Publishers, 2002.

$Offtext

Options
     optcr    = 0,
     optca    = 1.e-6,
     limrow   = 0,
     limcol   = 0,
     solprint = off;

Sets mm /m1*m200/
     nn /n1*n200/;

Sets m(mm) constraints
     n(nn) variables;

Sets p     products    /p1*p2/
     c     cases       /c1*c5/
     i     instances   /i1*i5/ ;

* For each case to be solved, we use a different (m,n) pair
Table cases(c,*)
      m   n
c1   10  20
c2   20  30
c3   60 100
c4  100 100
c5  200 200 ;

Parameters cc(p,nn)  cost coefficients
           f(p)      constants
           A(mm,nn)  constraint coefficients
           b(mm)     left-hand-side
           rep(c,*)  summary report ;

Parameters ResMin, Resmax, NodMin, Nodmax;


Variables y(p), x(nn), obj ;
x.lo(nn) = 0;


Equations  Objective,
           Constraints(mm),
           Products(p);

Objective..      obj  =E= prod(p, y(p));

Products(p)..    y(p) =E= sum(n, cc(p,n)*x(n));

Constraints(m).. b(m) =L= sum(n, A(m,n)*x(n)) ;


Model lmp2 /all/;
lmp2.workspace = 32;

rep(c,'AvgResUsd') = 0;
rep(c,'AvgNodUsd')= 0;


loop (c,

   m(mm)   = ord(mm) <= cases(c,'m');
   n(nn)   = ord(nn) <= cases(c,'n');

   ResMin  = inf;
   Resmax  = 0;
   NodMin  = inf;
   Nodmax  = 0;

   loop(i,

      f(p)    = uniform(0,1);
      cc(p,n) = uniform(0,1);
      A(m,n)  = (2*uniform(0,1)-1);
      b(m)    = (sum(n, A(m,n)) + 2*uniform(0,1));

* Set initial starting point for all models to 0
      x.l(n)=0; y.l(p)=0;

      Solve lmp2 minimizing obj using nlp;

      rep(c,'AvgResUsd')  = rep(c,'AvgResUsd') + lmp2.resusd;
      rep(c,'AvgNodUsd')  = rep(c,'AvgNodUsd') + lmp2.nodusd;

      ResMin = min(ResMin, lmp2.resusd);
      NodMin = min(NodMin, lmp2.nodusd);
      ResMax = max(ResMax, lmp2.resusd);
      NodMax = max(NodMax, lmp2.nodusd);

   );

   rep(c,'MinResUsd') = ResMin;
   rep(c,'MaxResUsd') = ResMax;
   rep(c,'MinNodUsd') = nodMin;
   rep(c,'MaxNodUsd') = nodMax;

);

rep(c,'AvgResUsd') = rep(c,'AvgResUsd')/card(i);
rep(c,'AvgNodUsd') = rep(c,'AvgNodUsd')/card(i);

Display rep;






