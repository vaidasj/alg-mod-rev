*  LP written by GAMS Convert at 12/13/18 10:24:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         10        7        0        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         18       18        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         57       57        0        0
*
*  Solve m using LP maximizing x18;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + x4 + x7 =L= 40;

e2..    x2 + x5 + x8 =L= 40;

e3..    x3 + x6 + x9 =L= 40;

e4..    5*x1 + 3*x4 + x7 - x10 + x11 =E= 0;

e5..    5*x2 + 3*x5 + x8 - x11 + x12 =E= 0;

e6..    5*x3 + 3*x6 + x9 - x12 + x13 =E= 0;

e7..    x1 + 2*x4 + 3*x7 - x14 + x15 =E= 0;

e8..    x2 + 2*x5 + 3*x8 - x15 + x16 =E= 0;

e9..    x3 + 2*x6 + 3*x9 - x16 + x17 =E= 0;

e10..  - 25*x1 - 20*x2 - 10*x3 - 50*x4 - 50*x5 - 50*x6 - 75*x7 - 80*x8 - 100*x9
       + 0.5*x10 + 0.5*x11 + 0.5*x12 - 15*x13 + 2*x14 + 2*x15 + 2*x16 - 25*x17
       + x18 =E= 0;

* set non-default bounds
x10.up = 400;
x14.up = 275;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x18;
