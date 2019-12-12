*  MIQCP written by GAMS Convert at 12/13/18 11:23:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          8        3        0        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        5        4        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         24       21        3        0
*
*  Solve m using MIQCP minimizing x5;


Variables  x1,x2,x3,x4,x5,b6,b7,b8,b9;

Positive Variables  x1,x2,x3,x4;

Binary Variables  b6,b7,b8,b9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 + x2 + x3 + x4 =E= 1;

e2..    8*x1 + 9*x2 + 12*x3 + 7*x4 =E= 10;

e3.. x1*(4*x1 + 3*x2 - x3) + x2*(3*x1 + 6*x2 + x3) + x3*(x2 - x1 + 10*x3) - x5
      =E= 0;

e4..    x1 - b6 =L= 0;

e5..    x2 - b7 =L= 0;

e6..    x3 - b8 =L= 0;

e7..    x4 - b9 =L= 0;

e8..    b6 + b7 + b8 + b9 =L= 3;

* set non-default levels
x1.l = 0.302884615384616;
x2.l = 0.0865384615384613;
x3.l = 0.504807692307692;
x4.l = 0.105769230769231;
x5.l = 2.89903846153846;

* set non-default marginals
e1.m = -13.5288461538461;
e2.m = 1.9326923076923;
e3.m = -1;

Model m / all /;

m.limrow=0; m.limcol=0;

option bratio = 0;
m.optcr      = 1E-6;
Solve m using MIQCP minimizing x5;
