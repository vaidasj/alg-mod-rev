*  LP written by GAMS Convert at 12/13/18 10:32:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         26        1       24        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         29       29        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        123      123        0        0
*
*  Solve m using LP minimizing x29;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..  - 2*x1 - 2*x2 - 3*x3 - 3*x4 - 2.1*x5 - 2.8*x6 - 2.1*x7 - 0.6*x8 - 1.5*x9
      - 0.9*x10 - 1.2*x11 - 1.6*x12 - 1.2*x13 - 1.2*x14 - 1.2*x15 - 0.6*x16
      - 3.6*x17 - 4.8*x18 - 3.6*x19 - 0.9*x20 - 2.25*x21 - 1.35*x22 - 1.8*x23
      - 2.4*x24 - 1.8*x25 - 1.8*x26 - 1.8*x27 - 0.9*x28 + x29 =E= 0;

e2..    x1 + x2 + x3 + x4 =L= 50;

e3..    2*x1 + 6*x3 + x5 =G= 200;

e4..    2*x1 + 6*x3 + x6 =G= 180;

e5..    2*x1 + 6*x3 + x7 =G= 160;

e6..    2*x2 + 6*x4 + eps*x5 + x8 =G= 200;

e7..    2*x2 + 6*x4 + eps*x5 + x9 =G= 180;

e8..    2*x2 + 6*x4 + eps*x5 + x10 =G= 160;

e9..    2*x2 + 6*x4 + eps*x6 + x11 =G= 200;

e10..    2*x2 + 6*x4 + eps*x6 + x12 =G= 180;

e11..    2*x2 + 6*x4 + eps*x6 + x13 =G= 160;

e12..    2*x2 + 6*x4 + eps*x7 + x14 =G= 200;

e13..    2*x2 + 6*x4 + eps*x7 + x15 =G= 180;

e14..    2*x2 + 6*x4 + eps*x7 + x16 =G= 160;

e15..    3*x1 + 3.4*x3 + x17 =G= 180;

e16..    3*x1 + 3.4*x3 + x18 =G= 160;

e17..    3*x1 + 3.4*x3 + x19 =G= 140;

e18..    3*x2 + 3.4*x4 + eps*x17 + x20 =G= 180;

e19..    3*x2 + 3.4*x4 + eps*x17 + x21 =G= 160;

e20..    3*x2 + 3.4*x4 + eps*x17 + x22 =G= 140;

e21..    3*x2 + 3.4*x4 + eps*x18 + x23 =G= 180;

e22..    3*x2 + 3.4*x4 + eps*x18 + x24 =G= 160;

e23..    3*x2 + 3.4*x4 + eps*x18 + x25 =G= 140;

e24..    3*x2 + 3.4*x4 + eps*x19 + x26 =G= 180;

e25..    3*x2 + 3.4*x4 + eps*x19 + x27 =G= 160;

e26..    3*x2 + 3.4*x4 + eps*x19 + x28 =G= 140;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x29;
