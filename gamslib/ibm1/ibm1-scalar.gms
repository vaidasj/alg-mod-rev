*  LP written by GAMS Convert at 12/13/18 10:24:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          8        8        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         14       14        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         54       54        0        0
*
*  Solve m using LP minimizing x14;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14;

Positive Variables  x1,x2,x5,x6,x7,x10,x11,x12,x13;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    x1 + x2 + x3 + x4 + x5 + x6 + x7 =E= 2000;

e2..  - 0.7*x1 - 0.75*x2 - 0.8*x3 - 0.75*x4 - 0.8*x5 - 0.97*x6 + x8 =E= 0;

e3..  - 0.02*x1 - 0.06*x2 - 0.08*x3 - 0.12*x4 - 0.02*x5 - 0.01*x6 - x7 + x9
      =E= 0;

e4..  - 0.15*x1 - 0.04*x2 - 0.02*x3 - 0.04*x4 - 0.02*x5 - 0.01*x6 + x10 =E= 0;

e5..  - 0.03*x1 - 0.05*x2 - 0.08*x3 - 0.02*x4 - 0.06*x5 - 0.01*x6 + x11 =E= 0;

e6..  - 0.02*x1 - 0.04*x2 - 0.01*x3 - 0.02*x4 - 0.02*x5 + x12 =E= 0;

e7..  - 0.02*x1 - 0.03*x2 - 0.01*x5 + x13 =E= 0;

e8..  - 0.03*x1 - 0.08*x2 - 0.17*x3 - 0.12*x4 - 0.15*x5 - 0.21*x6 - 0.38*x7
      + x14 =E= 0;

* set non-default bounds
x1.up = 200;
x2.up = 750;
x3.lo = 400; x3.up = 800;
x4.lo = 100; x4.up = 700;
x5.up = 1500;
x8.lo = 1500;
x9.lo = 250; x9.up = 300;
x10.up = 60;
x11.up = 100;
x12.up = 40;
x13.up = 30;

* set non-default levels
x3.l = 400;
x4.l = 100;
x8.l = 1500;
x9.l = 250;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x14;
