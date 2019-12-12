option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Linear Multiplicative Programs - Type 1 (LMP1, SEQ=251)

$Ontext

  Generates and solves random linear multiplicative models of
  "Type 1."  Problem instances are generated as proposed by
  Konno and Kuno. Model developed by N. Sahinidis.


H. Konno and T. Kuno, "Linear multiplicative programming,"
Mathematical Programming, 56(51-64), 1992.

M. Tawarmalani and N. Sahinidis, Convexification and Global
Optimization in Continuous and Mixed-Integer Nonlinear
Programming: Theory, Algorithms, Software, and Applications,
Kluwer Academic Publishers, 2002.

$Offtext


Options
     optcr   = 0,
     optca   = 1.e-6,
     limrow  = 0,
     limcol  = 0,
     solprint= off;

Sets mm                 /m1*m220/
     nn                 /n1*n200/
     pp                 /p1*p5/;

Sets m(mm)  constraints
     n(nn)  variables
     p(pp)  products;

Sets c      cases       /c1*c10/
     i      instances   /i1*i5/;


* For each case to be solved, we use different (m,n,p) triplets
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
 c9  200 200  4
c10  200 200  5;

Parameters cc(pp,nn)     cost coefficients
           A(mm,nn)      constraint coefficients
           b(mm)         left-hand-side
           rep(c,*)      summary report ;

Parameters ResMin, Resmax, NodMin, Nodmax;

Variables y(pp), x(nn), obj ;
x.lo(nn) = 0;


Equations  Objective,
           Constraints(mm),
           Products(pp);

Objective..       obj  =E= prod(p, y(p));

Products(p)..     y(p) =E= sum(n, cc(p,n)*x(n));

Constraints(m)..  b(m) =L= sum(n, A(m,n)*x(n)) ;


Model lmp1 /all/;
lmp1.workspace = 32;

rep(c,'AvgResUsd') = 0;
rep(c,'AvgNodUsd')= 0;

loop (c,

    m(mm)   = ord(mm)<= cases(c,'m');
    n(nn)   = ord(nn)<= cases(c,'n');
    p(pp)   = ord(pp)<= cases(c,'p');

    ResMin  = inf;
    Resmax  = 0;
    NodMin  = inf;
    Nodmax  = 0;

    loop(i,

      cc(p,n)    = uniform(0,100);
      A(m,n)     = uniform(0,100);
      b(m)       = uniform(0,100);

* Set initial starting point for all models to 0
      x.l(n)=0; y.l(p)=0;

      Solve lmp1 minimizing obj using nlp;

      rep(c,'AvgResUsd') = rep(c,'AvgResUsd') + lmp1.resusd;
      rep(c,'AvgNodUsd') = rep(c,'AvgNodUsd') + lmp1.nodusd;

      ResMin = min(ResMin, lmp1.resusd);
      NodMin = min(NodMin, lmp1.nodusd);
      ResMax = max(ResMax, lmp1.resusd);
      NodMax = max(NodMax, lmp1.nodusd);

   );

   rep(c,'MinResUsd') = ResMin;
   rep(c,'MaxResUsd') = ResMax;
   rep(c,'MinNodUsd') = NodMin;
   rep(c,'MaxNodUsd') = NodMax;

);


rep(c,'AvgResUsd') = rep(c,'AvgResUsd')/card(i);
rep(c,'AvgNodUsd') = rep(c,'AvgNodUsd')/card(i);

Display rep;




