*  NLP written by GAMS Convert at 12/13/18 10:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         10        8        0        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         34       27        7        0
*
*  Solve m using NLP maximizing x9;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;

Negative Variables  x12,x13;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 6*x1 - 16*x2 - 10*x3 + x10 =E= 0;

e2..    x11 - 9*x12 - 15*x13 =E= 0;

e3..  - x4 - x6 + x12 =E= 0;

e4..  - x5 - x7 + x13 =E= 0;

e5..    x1 + x2 - x6 - x7 =E= 0;

e6..    x3 - x4 - x5 =E= 0;

e7.. x8*(x6 + x7) - 3*x1 - x2 =E= 0;

e8.. x8*x6 - 2.5*x6 - 0.5*x4 =L= 0;

e9.. x8*x7 - 1.5*x7 + 0.5*x5 =L= 0;

e10..    x9 + x10 - x11 =E= 0;

* set non-default bounds
x12.up = 100;
x13.up = 200;

* set non-default levels
x8.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x9;
