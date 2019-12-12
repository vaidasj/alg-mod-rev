*  NLP written by GAMS Convert at 12/13/18 10:24:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         16       16        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         30       30        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         98       72       26        0
*
*  Solve m using NLP maximizing x30;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - x1 - x2 + x5 + x8 - x24 + x27 =E= 0;

e2..  - x3 + x11 - x25 + x28 =E= 0;

e3..  - x4 + x12 - x26 + x29 =E= 0;

e4..    x1 - x5 - x6 - x7 + x9 + x13 =E= 0;

e5..    x2 + x6 - x8 - x9 - x10 + x14 =E= 0;

e6..    x3 + x4 + x7 + x10 - x11 - x12 - x13 - x14 =E= 0;

e7..  - x15 - x16 - x17 + x27 =E= 0;

e8..  - x18 - x19 - x20 + x28 =E= 0;

e9..  - x21 - x22 - x23 + x29 =E= 0;

e10..  - x15 - x18 - x21 + x24 =E= 0;

e11..  - x16 - x19 - x22 + x25 =E= 0;

e12..  - x17 - x20 - x23 + x26 =E= 0;

e13..  - x5 - x8 - x15 + x24 =E= 0;

e14..  - x11 - x19 + x25 =E= 0;

e15..  - x12 - x23 + x26 =E= 0;

e16.. -(-0.2*((24 + x15)*x15 + (24 + x18)*x18 + (24 + x21)*x21) - 0.01*((24 + 
      x16)*x16 + (24 + x19)*x19 + (24 + x22)*x22) - 0.3*((24 + x17)*x17 + (24
       + x20)*x20 + (24 + x23)*x23) - (0.5*sqr(x27) + x27 + 0.4*sqr(x28) + 2*
      x28 + 0.3*sqr(x29) + 1.5*x29) - (0.166666666666667*POWER(x1,3) + x1 + 
      0.0666666666666667*POWER(x2,3) + 2*x2 + 0.1*POWER(x3,3) + 3*x3 + 
      0.133333333333333*POWER(x4,3) + x4 + 0.1*POWER(x5,3) + 2*x5 + 
      0.0333333333333333*POWER(x6,3) + x6 + 0.0333333333333333*POWER(x7,3) + x7
       + 0.166666666666667*POWER(x8,3) + 3*x8 + 0.0666666666666667*POWER(x9,3)
       + 2*x9 + 0.333333333333333*POWER(x10,3) + x10 + 0.0833333333333333*
      POWER(x11,3) + 2*x11 + 0.0666666666666667*POWER(x12,3) + 2*x12 + 0.3*
      POWER(x13,3) + x13 + 0.266666666666667*POWER(x14,3) + 3*x14)) - 19*x24
       - 27*x25 - 30*x26 + x30 =E= 0;

* set non-default levels
x15.l = 1;
x16.l = 1;
x17.l = 1;
x18.l = 1;
x19.l = 1;
x20.l = 1;
x21.l = 1;
x22.l = 1;
x23.l = 1;
x24.l = 25;
x25.l = 25;
x26.l = 25;
x27.l = 25;
x28.l = 25;
x29.l = 25;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x30;
