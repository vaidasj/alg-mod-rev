*  LP written by GAMS Convert at 12/13/18 10:24:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          3        1        0        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13       13        0        0
*
*  Solve m using LP maximizing x5;


Variables  x1,x2,x3,x4,x5;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3;


e1..    4*x1 + 9*x2 + 7*x3 + 10*x4 =L= 6000;

e2..    x1 + x2 + 3*x3 + 40*x4 =L= 4000;

e3..  - 12*x1 - 20*x2 - 18*x3 - 40*x4 + x5 =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x5;
