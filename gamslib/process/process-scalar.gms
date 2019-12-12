*  NLP written by GAMS Convert at 12/13/18 10:24:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          8        8        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         32       13       19        0
*
*  Solve m using NLP maximizing x11;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Positive Variables  x2,x3,x4,x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1.. x12*x4 - (1.12 + 0.13167*x8 - 0.00667*sqr(x8))*x1 =E= 0;

e2..  - x1 + 1.22*x4 - x5 =E= 0;

e3.. -0.001*x4*x9*x6/(98 - x6) + x3 =E= 0;

e4.. x13*x7 - (1.098*x8 - 0.038*sqr(x8)) - 0.325*x6 =E= 57.425;

e5.. -(x2 + x5)/x1 + x8 =E= 0;

e6.. x14*x9 + 0.222*x10 =E= 35.82;

e7.. x15*x10 - 3*x7 =E= -133;

e8.. -0.063*x4*x7 + 5.04*x1 + 0.035*x2 + 10*x3 + 3.36*x5 + x11 =E= 0;

* set non-default bounds
x1.lo = 10; x1.up = 2000;
x2.up = 16000;
x3.up = 120;
x4.up = 5000;
x5.up = 2000;
x6.lo = 85; x6.up = 93;
x7.lo = 90; x7.up = 95;
x8.lo = 3; x8.up = 12;
x9.lo = 1.2; x9.up = 4;
x10.lo = 145; x10.up = 162;
x12.lo = 0.9; x12.up = 1.1;
x13.lo = 0.9; x13.up = 1.1;
x14.lo = 0.9; x14.up = 1.1;
x15.lo = 0.9; x15.up = 1.1;

* set non-default levels
x1.l = 1745;
x2.l = 12000;
x3.l = 110;
x4.l = 3048;
x5.l = 1974;
x6.l = 89.2;
x7.l = 92.8;
x8.l = 8;
x9.l = 3.6;
x10.l = 145;
x11.l = 872;
x12.l = 1;
x13.l = 1;
x14.l = 1;
x15.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x11;
