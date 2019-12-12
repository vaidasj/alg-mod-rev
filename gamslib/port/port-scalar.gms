*  LP written by GAMS Convert at 12/13/18 10:24:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          5        2        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       27        0        0
*
*  Solve m using LP maximizing x7;


Variables  x1,x2,x3,x4,x5,x6,x7;

Negative Variables  x6;

Positive Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5;


e1..    x3 + x4 + x5 =G= 4;

e2..    2*x1 + 5*x2 + 2*x3 + x4 + x5 - 1.4*x6 =L= 0;

e3..    9*x1 + 2*x2 + 15*x3 + 4*x4 + 3*x5 - 5*x6 =L= 0;

e4..  - 0.043*x1 - 0.045*x2 - 0.027*x3 - 0.025*x4 - 0.022*x5 + x7 =E= 0;

e5..  - x1 - x2 - x3 - x4 - x5 + x6 =E= 0;

* set non-default bounds
x6.up = 10;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x7;
