*  LP written by GAMS Convert at 12/13/18 10:24:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          5        5        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         28       28        0        0
*
*  Solve m using LP minimizing x13;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + x5 - x9 =E= 50;

e2..  - x1 + x2 + x6 - x10 =E= 0;

e3..  - x2 + x3 + x7 - x11 =E= 0;

e4..  - x3 + x4 + x8 - x12 =E= 0;

e5..  - x1 - x2 - x3 - x4 + 10*x5 + 12*x6 + 8*x7 + 9*x8 - 10*x9 - 12*x10
      - 8*x11 - 9*x12 + x13 =E= 0;

* set non-default bounds
x1.up = 100;
x2.up = 100;
x3.up = 100;
x4.up = 100;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x13;
