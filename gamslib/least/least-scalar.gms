*  NLP written by GAMS Convert at 12/13/18 10:24:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          7        7        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       13       18        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1.. -(sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7)) + x1 =E= 0;

e2.. -exp(-5*x10)*x9 - x2 - x8 =E= -127;

e3.. -exp(-3*x10)*x9 - x3 - x8 =E= -151;

e4.. -exp(-x10)*x9 - x4 - x8 =E= -379;

e5.. -exp(5*x10)*x9 - x5 - x8 =E= -421;

e6.. -exp(3*x10)*x9 - x6 - x8 =E= -460;

e7.. -exp(x10)*x9 - x7 - x8 =E= -426;

* set non-default bounds
x10.lo = -5; x10.up = 5;

* set non-default levels
x8.l = 500;
x9.l = -150;
x10.l = -0.2;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;
