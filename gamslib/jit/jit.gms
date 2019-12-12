option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Design of Just-in-Time Flowshops (JIT,SEQ=250)
$ontext

This just-in-time flowshop problem involves P products and
S stages. Each stage contains identical equipment performing the
same type of operation on different products. The objective is
to minimize the total equipment related cost.


Gunasekaran, A, Goyal, S K, Martikainen T, and Yli-Olli, P,
Equipment Selection Problems in just-in-time Manufacturing Systems.
Journal of the Operational Research Society 44 (1993), 345-353

Gutierrez, R A, and Sahinidis, N, A
Lagrangian Approach to the Pooling Problem.
Interantional J Production Research 34 (1996), 797-818.

$offtext

sets p products
     s stages

parameter alpha(p,s) processing cost
          beta(p,s)  production inbalance cost
          delta(p)   demand
          mu(s)      machine cost
          M          maximum amount of money for investment
          pi(p,s)    priority weight
          sigma(p,s) product cycles
          q(p,s)     batch size
          tau(p,s)   processing time
          omega(s)   resource requirements
          bigomega   max resource available for all machines

variables n(s)     number of machines
          pr(p,s)  production rate
          dpr(p,s) absolute value differences
          obj;

integer variable n;

equations objdef, prdef(p,s), budget, resource, abs1, abs2;

objdef.. obj =e= Sum((p,s), alpha(p,s)*sigma(p,s)/pr(p,s))
               + sum((p,s)$(ord(s)<card(s)), beta(p,s)*dpr(p,s))
               + sum(s, mu(s)*n(s));

prdef(p,s).. pr(p,s) =e= pi(p,s)/tau(p,s)*n(s);

budget.. sum(s, mu(s)*n(s)) =l= M;

resource.. sum(s, omega(s)*n(s)) =l= bigomega;

abs1(p,s+1).. dpr(p,s) =G= pr(p,s)-pr(p,s+1);

abs2(p,s+1).. dpr(p,s) =G= pr(p,s+1)-pr(p,s);

model jit /all /;


sets p / p1*p3 /
     s / s1*s4 /

parameters delta(p) / p1 3000, p2 2000, p3 4000 /
           mubase(s)/ s1 5000, s2 5500, s3 4000, s4 6000 /
           omega(s) / s1   60, s2   50, s3   80, s4   40 /
           M        / 6E6 /
           bigomega / 3000 /


table dat(*,p,s) data from table 10.16

      p1.s1  p1.s2  p1.s3 p1.s4  p2.s1 p2.s2 p2.s3 p2.s4  p3.s1  p3.s2  p3.s3  p3.s4

alpha  2.0    1.5    3.0    2.0    3.0   2.5   1.0   2.0    2.0    2.0    2.0    1.0
beta    60     90     60     80     90    80    80    70     80    100     80     90
kappa  0.2    0.3    0.4    0.3    0.1   0.4   0.3   0.2    0.2    0.3    0.2    0.2
pi     0.2    0.4    0.5    0.5    0.6   0.3   0.3   0.2    0.2    0.3    0.2    0.3
tau      1      1      1      1      1     1     1     1      1      1      1      1
q      800    800    800    800    700   700   700   700    900    900    900    900


set        c cases / case1*case9 /;

parameters multq(c)  / case1 1, case2 1,   case3 1,   case4 1, case5 1,   case6 0.5, case7 1.5, case8 2, case9 2.5 /
           multmu(c) / case1 1, case2 0.5, case3 1.5, case4 2, case5 2.5, case6 1,   case7 1,   case8 1, case9 1   /
           rep(c,*) summary report;

n.lo(s)    = 1;
pr.lo(p,s) = .01;

pi(p,s)    = dat('pi',p,s);
alpha(p,s) = dat('alpha',p,s);
beta(p,s)  = dat('beta',p,s)*1e+5;

abort$sum(s, abs(1 - sum(p, pi(p,s))) > 1e-10) 'weight do not add to 1',pi;

option optcr=0;

loop(c,

   q(p,s)     = dat('q',p,s) * multq(c);
   mu(s)      = mubase(s) * multmu(c);
   tau(p,s)   = q(p,s)*(dat('tau',p,s)-dat('kappa',p,s)*1e-5*mu(s));
   sigma(p,s) = delta(p)/q(p,s);

   pr.lo(p,s) = pi(p,s)/tau(p,s);

   solve jit using minlp min obj;

   option limrow=0,limcol=0,solprint=off;

   rep(c,s) = n.l(s);

   rep(c,'ModelStat')  = jit.modelstat;
   if (jit.modelstat = %modelstat.Optimal% or
       jit.modelstat = %modelstat.IntegerSolution%,
     rep(c,'Processing') = Sum((p,s), alpha(p,s)*sigma(p,s)/pr.l(p,s));
     rep(c,'Imbalance')  = sum((p,s)$(ord(s)<card(s)), beta(p,s)*abs(pr.l(p,s)-pr.l(p,s+1)));
     rep(c,'Investment') = sum(s, mu(s)*n.l(s));
   )
);

display rep;

