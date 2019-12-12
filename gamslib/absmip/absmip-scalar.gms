*  MIP written by GAMS Convert at 12/13/18 10:32:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          6        4        0        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        7        1        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15       15        0        0
*
*  Solve m using MIP minimizing x6;


Variables  x1,x2,x3,b4,x5,x6,x7,x8;

Positive Variables  x2,x3;

Binary Variables  b4;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 - x2 + x3 =E= 0;

e2..    x2 - 10*b4 =L= 0;

e3..    x3 + 10*b4 =L= 10;

e4..    x3 + x5 =E= 0;

e5..    x1 - x7 + x8 =E= 0;

e6..  - x5 + x6 - x8 =E= 0;

* set non-default bounds
x1.lo = -10; x1.up = 10;
x7.lo = -5; x7.up = 2;
x8.lo = -2; x8.up = 5;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 1E-6;
Solve m using MIP minimizing x6;
