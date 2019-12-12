*  LP written by GAMS Convert at 12/13/18 10:32:21
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         11        1        6        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         52       52        0        0
*
*  Solve m using LP maximizing x4;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22;

Positive Variables  x1,x2,x3,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    150*x1 + 230*x2 + 260*x3 + x4 - 56.6666666666667*x5
      - 56.6666666666667*x6 - 56.6666666666667*x7 - 50*x8 - 50*x9 - 50*x10
      - 12*x11 - 12*x12 - 12*x13 - 3.33333333333333*x14 - 3.33333333333333*x15
      - 3.33333333333333*x16 + 79.3333333333333*x17 + 79.3333333333333*x18
      + 79.3333333333333*x19 + 70*x20 + 70*x21 + 70*x22 =E= 0;

e2..    x1 + x2 + x3 =L= 500;

e3..    3*x1 - x5 + x17 =G= 200;

e4..    2.5*x1 - x6 + x18 =G= 200;

e5..    2*x1 - x7 + x19 =G= 200;

e6..    3.6*x2 - x8 + x20 =G= 240;

e7..    3*x2 - x9 + x21 =G= 240;

e8..    2.4*x2 - x10 + x22 =G= 240;

e9..  - 24*x3 + x11 + x14 =L= 0;

e10..  - 20*x3 + x12 + x15 =L= 0;

e11..  - 16*x3 + x13 + x16 =L= 0;

* set non-default bounds
x11.up = 6000;
x12.up = 6000;
x13.up = 6000;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x4;
