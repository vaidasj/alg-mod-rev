option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Linear Multiplicative Programs - Type 3 (LMP3, SEQ=253)

$Ontext

   Generate and solves random linear multiplicative models of
   "Type 3." Problem instances are generated as proposed by
   Benson and Boger. Model developed by N. Sahinidis.


H. P. Benson and G. M. Boger, "Multiplicative programming problems:
Analysis and efficient point search heuristic",
Journal of Optimization Theory and Applications, 94(487-510), 1997.

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

Sets mm /m1*m220/
     nn /n1*n200/
     pp /p1*p4/;

Sets m(mm) constraints
     n(nn) variables
     p(pp) products;

Sets c cases       /c1*c9/
     i instances   /i1*i5/ ;


* For each case to be solved, we use a different (m,n,p) triplet
Table cases(c,*)
      m   n  p
c1   20  30  2
c2  120 100  2
c3  220 200  2
c4   20  30  3
c5  120 120  3
c6  200 180  3
c7   20  30  4
c8  100 100  4
c9  200 200  4 ;


Parameters cc(pp,nn)  cost coefficients
           A(mm,nn)   constraint coefficients
           b(mm)     left-hand-side
           rep(c,*) summary report ;

Parameters mactual, nactual, pactual,
           ResMin, Resmax, NodMin, Nodmax;

Variables y(pp), x(nn), obj ;
x.lo(nn) = 1;


Equations  Objective,
           Constraints(mm),
           Products(pp);

Objective..      obj  =E= prod(p, y(p));

Products(p)..    y(p) =E= sum(n, cc(p,n)*x(n));

Constraints(m).. b(m) =L= sum(n, A(m,n)*x(n)) ;

Model lmp3 /all/;
lmp3.workspace = 32;

rep(c,'AvgResUsd') = 0;
rep(c,'AvgNodUsd') = 0;

loop (c,

   m(mm)   = ord(mm)<= cases(c,'m');
   n(nn)   = ord(nn)<= cases(c,'n');
   p(pp)   = ord(pp)<= cases(c,'p');

   mactual = cases(c,'m');
   nactual = cases(c,'n');
   pactual = cases(c,'p');

   ResMin  = inf;
   Resmax  = 0;
   NodMin  = inf;
   Nodmax  = 0;

   loop(i,

      cc(p,n) = round(uniform(1,10));
      A(m,n)  = round(uniform(1,10));
      b(m)    = sum(n, A(m,n)**2);
      x.up(n) = smax(m, b(m));

* Set initial starting point for all models to 0
      x.l(n)=0; y.l(p)=0;

      Solve lmp3 minimizing obj using nlp;

      rep(c,'AvgResUsd')  = rep(c,'AvgResUsd') + lmp3.resusd;
      rep(c,'AvgNodUsd')  = rep(c,'AvgNodUsd') + lmp3.nodusd;

      ResMin = min(ResMin, lmp3.resusd);
      NodMin = min(NodMin, lmp3.nodusd);
      ResMax = max(ResMax, lmp3.resusd);
      NodMax = max(NodMax, lmp3.nodusd);

   );

   rep(c,'MinResUsd') = ResMin;
   rep(c,'MaxResUsd') = ResMax;
   rep(c,'MinNodUsd') = NodMin;
   rep(c,'MaxNodUsd') = NodMax;

);

rep(c,'AvgResUsd') = rep(c,'AvgResUsd')/card(i);
rep(c,'AvgNodUsd') = rep(c,'AvgnodUsd')/card(i);

Display rep;


