*  LP written by GAMS Convert at 12/13/18 10:24:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         21        9        0       12        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         43       43        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        116      116        0        0
*
*  Solve m using LP maximizing x43;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..    x41 - x42 + x43 =E= 0;

e2..  - 2*x1 - 4*x2 - x3 - 3*x4 - 3*x5 - 4*x6 - 2*x7 - 3*x8 - 5*x9 - 2*x10
      - 4*x11 - 4*x12 - 5*x13 - 3*x14 - 3*x15 - 5*x16 - 2*x17 - 4*x18 - 4*x19
      - 5*x20 - 3*x21 - 4*x22 - 6*x23 - 3*x24 - 5*x25 - 5*x26 - 6*x27 - 4*x28
      - x29 - x30 - x31 - x32 - x33 - x34 + x41 =E= 0;

e3..  - 10*x35 - 10*x36 - 9*x37 - 11*x38 - 11*x39 - 10*x40 + x42 =E= 0;

e4..    4*x1 + 4*x4 + 6*x6 =L= 100;

e5..    7*x2 + 6*x5 + 6*x7 =L= 100;

e6..    3*x3 =L= 40;

e7..    3*x8 + 3*x11 + 5*x13 =L= 80;

e8..    6*x9 + 5*x12 + 5*x14 =L= 90;

e9..    2*x10 =L= 30;

e10..    5*x15 + 5*x18 + 7*x20 =L= 110;

e11..    8*x16 + 7*x19 + 7*x21 =L= 110;

e12..    4*x17 =L= 50;

e13..    4*x22 + 4*x25 + 5*x27 =L= 90;

e14..    7*x23 + 6*x26 + 6*x28 =L= 100;

e15..    3*x24 =L= 40;

e16..    x1 + x2 + x3 + x8 + x9 + x10 - x29 - x35 =E= 0;

e17..    x4 + x5 + x11 + x12 - x30 - x36 =E= 0;

e18..    x6 + x7 + x13 + x14 - x31 - x37 =E= 0;

e19..    x15 + x16 + x17 + x22 + x23 + x24 + x29 - x32 - x38 =E= 0;

e20..    x18 + x19 + x25 + x26 + x30 - x33 - x39 =E= 0;

e21..    x20 + x21 + x27 + x28 + x31 - x34 - x40 =E= 0;

* set non-default bounds
x29.up = 20;
x30.up = 20;
x31.fx = 0;
x32.up = 20;
x33.up = 20;
x34.fx = 0;
x35.lo = 25;
x36.lo = 30;
x37.lo = 30;
x38.lo = 30;
x39.lo = 25;
x40.lo = 25;

* set non-default levels
x35.l = 25;
x36.l = 30;
x37.l = 30;
x38.l = 30;
x39.l = 25;
x40.l = 25;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x43;
