*  LP written by GAMS Convert at 12/13/18 10:24:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         14       14        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58       58        0        0
*
*  Solve m using LP maximizing x22;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x17,x18,x19
          ,x20,x21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..    0.97*x1 + 0.97*x2 - x3 - x4 - x5 - x6 =E= 0;

e2..    x3 - 0.6*x7 =E= 0;

e3..    x4 - 0.3*x8 =E= 0;

e4..    x5 - 0.4*x7 =E= 0;

e5..    x6 - 0.7*x8 =E= 0;

e6..  - x7 + x9 + x10 + x11 + x18 - x20 =E= 0;

e7..  - x8 + x12 + x13 + x14 + x19 - x21 =E= 0;

e8..    x9 - 0.68*x15 =E= 0;

e9..    x10 - 0.45*x16 =E= 0;

e10..    x11 - 0.25*x17 =E= 0;

e11..    x12 - 0.32*x15 =E= 0;

e12..    x13 - 0.55*x16 =E= 0;

e13..    x14 - 0.75*x17 =E= 0;

e14..    65*x1 + 65*x2 + 58*x3 + 73*x4 + 56*x5 + 71*x6 + 40*x9 + 60*x10
       + 70*x11 + 55*x12 + 50*x13 + 45*x14 - 265*x15 - 275*x16 - 310*x17
       - 120*x18 - 150*x19 + 120*x20 + 150*x21 + x22 =E= 0;

* set non-default bounds
x15.lo = 18; x15.up = 25;
x16.lo = 12; x16.up = 15;
x17.up = 7;
x18.up = 6;
x19.up = 10;
x20.up = 6;
x21.up = 10;

* set non-default levels
x15.l = 18;
x16.l = 12;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x22;
