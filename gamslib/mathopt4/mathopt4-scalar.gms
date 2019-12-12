*  NLP written by GAMS Convert at 12/13/18 11:23:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          3        2        0        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        3        4        0
*
*  Solve m using NLP minimizing x3;


Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1.. -(sqr(2*sqr(x1) - sqr(x2)) + sqr(x2 - 6*sqr(x1))) + x3 =E= 0;

e2.. x1 - (100*sin(2*x1 + 3*x2) + 10*x2) =E= 0;

e3..    x1 + x2 =L= 2;

* set non-default bounds
x1.lo = -10; x1.up = 10;
x2.lo = -10; x2.up = 10;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x3;
