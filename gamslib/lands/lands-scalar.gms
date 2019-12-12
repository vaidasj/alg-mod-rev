*  LP written by GAMS Convert at 12/13/18 10:32:16
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         24        1       10       13        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         41       41        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        133      133        0        0
*
*  Solve m using LP minimizing x5;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41;

Positive Variables  x1,x2,x3,x4,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24;


e1..  - 10*x1 - 7*x2 - 16*x3 - 6*x4 + x5 - 12*x6 - 16*x7 - 12*x8 - 7.2*x9
      - 9.6*x10 - 7.2*x11 - 1.2*x12 - 1.6*x13 - 1.2*x14 - 13.5*x15 - 18*x16
      - 13.5*x17 - 8.1*x18 - 10.8*x19 - 8.1*x20 - 1.35*x21 - 1.8*x22 - 1.35*x23
      - 9.6*x24 - 12.8*x25 - 9.6*x26 - 5.76*x27 - 7.68*x28 - 5.76*x29
      - 0.96*x30 - 1.28*x31 - 0.96*x32 - 16.5*x33 - 22*x34 - 16.5*x35 - 9.9*x36
      - 13.2*x37 - 9.9*x38 - 1.65*x39 - 2.2*x40 - 1.65*x41 =E= 0;

e2..    x1 + x2 + x3 + x4 =G= 12;

e3..    10*x1 + 7*x2 + 16*x3 + 6*x4 =L= 120;

e4..  - x1 + x6 + x9 + x12 =L= 0;

e5..  - x1 + x7 + x10 + x13 =L= 0;

e6..  - x1 + x8 + x11 + x14 =L= 0;

e7..  - x2 + x15 + x18 + x21 =L= 0;

e8..  - x2 + x16 + x19 + x22 =L= 0;

e9..  - x2 + x17 + x20 + x23 =L= 0;

e10..  - x3 + x24 + x27 + x30 =L= 0;

e11..  - x3 + x25 + x28 + x31 =L= 0;

e12..  - x3 + x26 + x29 + x32 =L= 0;

e13..  - x4 + x33 + x36 + x39 =L= 0;

e14..  - x4 + x34 + x37 + x40 =L= 0;

e15..  - x4 + x35 + x38 + x41 =L= 0;

e16..    x6 + x15 + x24 + x33 =G= 3;

e17..    x7 + x16 + x25 + x34 =G= 5;

e18..    x8 + x17 + x26 + x35 =G= 7;

e19..    x9 + x18 + x27 + x36 =G= 3;

e20..    x10 + x19 + x28 + x37 =G= 3;

e21..    x11 + x20 + x29 + x38 =G= 3;

e22..    x12 + x21 + x30 + x39 =G= 2;

e23..    x13 + x22 + x31 + x40 =G= 2;

e24..    x14 + x23 + x32 + x41 =G= 2;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x5;
