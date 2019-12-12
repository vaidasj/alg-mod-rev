*  MINLP written by GAMS Convert at 12/13/18 10:24:52
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          8        5        0        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11        8        3        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         26       24        2        0
*
*  Solve m using MINLP maximizing x11;


Variables  x1,x2,x3,x4,x5,x6,x7,b8,b9,b10,x11;

Positive Variables  x1,x2,x3,x4,x5,x6,x7;

Binary Variables  b8,b9,b10;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - 0.9*x6 + x7 =E= 0;

e2.. exp(x3) - x1 =E= 1;

e3.. exp(0.833333333333333*x4) - x2 =E= 1;

e4..  - x3 - x4 - x5 + x6 =E= 0;

e5..    x7 - 2*b8 =L= 0;

e6..    x3 - 4*b9 =L= 0;

e7..    x4 - 5*b10 =L= 0;

e8..    1.8*x1 + 1.8*x2 + x3 + 1.2*x4 + 7*x5 - 11*x7 + 3.5*b8 + b9 + 1.5*b10
      + x11 =E= 0;

* set non-default bounds
x7.up = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MINLP maximizing x11;
