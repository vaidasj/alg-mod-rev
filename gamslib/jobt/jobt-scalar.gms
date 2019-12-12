*  LP written by GAMS Convert at 12/13/18 10:24:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         16       11        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         73       73        0        0
*
*  Solve m using LP minimizing x31;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - x1 + x6 - x11 =E= -90;

e2..  - x2 - x6 + x7 + x11 - x12 =E= -200;

e3..  - x3 - x7 + x8 + x12 - x13 =E= -300;

e4..  - x4 - x8 + x9 + x13 - x14 =E= -400;

e5..  - x5 - x9 + x10 + x14 - x15 =E= -200;

e6..    x16 - x21 + x26 =E= 20;

e7..  - x16 + x17 - x22 + x27 =E= 0;

e8..  - x17 + x18 - x23 + x28 =E= 0;

e9..  - x18 + x19 - x24 + x29 =E= 0;

e10..  - x19 + x20 - x25 + x30 =E= 0;

e11..  - 0.125*x1 + x16 - 1.16666666666667*x21 =G= 0;

e12..  - 0.125*x2 + x17 - 1.16666666666667*x22 =G= 0;

e13..  - 0.125*x3 + x18 - 1.16666666666667*x23 =G= 0;

e14..  - 0.125*x4 + x19 - 1.16666666666667*x24 =G= 0;

e15..  - 0.125*x5 + x20 - 1.16666666666667*x25 =G= 0;

e16..  - 10*x6 - 10*x7 - 10*x8 - 10*x9 - 10*x10 - 30*x11 - 30*x12 - 30*x13
       - 30*x14 - 30*x15 - 100*x16 - 100*x17 - 100*x18 - 100*x19 - 200*x20
       + x31 =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x31;
