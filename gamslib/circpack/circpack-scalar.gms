*  NLP written by GAMS Convert at 12/13/18 11:43:40
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         29        2       15       12        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         89       27       62        0
*
*  Solve m using NLP minimizing x16;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29;


e1..  - x1 + x16 =E= -22.8393785915978;

e2.. -x2*x3 + x1 =E= 0;

e3.. sqr(x6 - x4) + sqr(x7 - x5) =G= 3.24;

e4.. sqr(x8 - x4) + sqr(x9 - x5) =G= 4;

e5.. sqr(x8 - x6) + sqr(x9 - x7) =G= 1.96;

e6.. sqr(x10 - x4) + sqr(x11 - x5) =G= 8.41;

e7.. sqr(x10 - x6) + sqr(x11 - x7) =G= 5.29;

e8.. sqr(x10 - x8) + sqr(x11 - x9) =G= 6.25;

e9.. sqr(x12 - x4) + sqr(x13 - x5) =G= 6.25;

e10.. sqr(x12 - x6) + sqr(x13 - x7) =G= 3.61;

e11.. sqr(x12 - x8) + sqr(x13 - x9) =G= 4.41;

e12.. sqr(x12 - x10) + sqr(x13 - x11) =G= 9;

e13.. sqr(x14 - x4) + sqr(x15 - x5) =G= 2.89;

e14.. sqr(x14 - x6) + sqr(x15 - x7) =G= 1.21;

e15.. sqr(x14 - x8) + sqr(x15 - x9) =G= 1.69;

e16.. sqr(x14 - x10) + sqr(x15 - x11) =G= 4.84;

e17.. sqr(x14 - x12) + sqr(x15 - x13) =G= 3.24;

e18..  - x2 + x4 =L= -1.2;

e19..  - x3 + x5 =L= -1.2;

e20..  - x2 + x6 =L= -0.6;

e21..  - x3 + x7 =L= -0.6;

e22..  - x2 + x8 =L= -0.8;

e23..  - x3 + x9 =L= -0.8;

e24..  - x2 + x10 =L= -1.7;

e25..  - x3 + x11 =L= -1.7;

e26..  - x2 + x12 =L= -1.3;

e27..  - x3 + x13 =L= -1.3;

e28..  - x2 + x14 =L= -0.5;

e29..  - x3 + x15 =L= -0.5;

* set non-default bounds
x1.up = 32;
x2.up = 4;
x3.up = 8;
x4.lo = 1.2; x4.up = 2.8;
x5.lo = 1.2; x5.up = 6.8;
x6.lo = 0.6; x6.up = 3.4;
x7.lo = 0.6; x7.up = 7.4;
x8.lo = 0.8; x8.up = 3.2;
x9.lo = 0.8; x9.up = 7.2;
x10.lo = 1.7; x10.up = 2.3;
x11.lo = 1.7; x11.up = 6.3;
x12.lo = 1.3; x12.up = 2.7;
x13.lo = 1.3; x13.up = 6.7;
x14.lo = 0.5; x14.up = 3.5;
x15.lo = 0.5; x15.up = 7.5;

* set non-default levels
x1.l = 32;
x2.l = 4;
x3.l = 8;
x4.l = 1.4747954112;
x5.l = 5.9222935648;
x6.l = 2.1410509968;
x7.l = 2.6477377472;
x8.l = 1.5013090808;
x9.l = 2.2339383488;
x10.l = 1.9098983024;
x11.l = 5.6388435962;
x12.l = 1.3939592122;
x13.l = 4.0011376126;
x14.l = 3.494352881;
x15.l = 4.551133646;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
m.reslim     = 60;
Solve m using NLP minimizing x16;
