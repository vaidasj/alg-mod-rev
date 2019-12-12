*  QCP written by GAMS Convert at 12/13/18 11:43:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         15        0       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         65        0       65        0
*
*  Solve m using QCP maximizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1.. sqr(1 - x1) - (sqr(x2) + sqr(x7)) =G= 0;

e2.. sqr(1 - x1) - (sqr(x3) + sqr(x8)) =G= 0;

e3.. sqr(1 - x1) - (sqr(x4) + sqr(x9)) =G= 0;

e4.. sqr(1 - x1) - (sqr(x5) + sqr(x10)) =G= 0;

e5.. sqr(1 - x1) - (sqr(x6) + sqr(x11)) =G= 0;

e6.. sqr(x2 - x3) + sqr(x7 - x8) - 4*sqr(x1) =G= 0;

e7.. sqr(x2 - x4) + sqr(x7 - x9) - 4*sqr(x1) =G= 0;

e8.. sqr(x2 - x5) + sqr(x7 - x10) - 4*sqr(x1) =G= 0;

e9.. sqr(x2 - x6) + sqr(x7 - x11) - 4*sqr(x1) =G= 0;

e10.. sqr(x3 - x4) + sqr(x8 - x9) - 4*sqr(x1) =G= 0;

e11.. sqr(x3 - x5) + sqr(x8 - x10) - 4*sqr(x1) =G= 0;

e12.. sqr(x3 - x6) + sqr(x8 - x11) - 4*sqr(x1) =G= 0;

e13.. sqr(x4 - x5) + sqr(x9 - x10) - 4*sqr(x1) =G= 0;

e14.. sqr(x4 - x6) + sqr(x9 - x11) - 4*sqr(x1) =G= 0;

e15.. sqr(x5 - x6) + sqr(x10 - x11) - 4*sqr(x1) =G= 0;

* set non-default bounds
x1.lo = 0.05; x1.up = 0.4;
x2.lo = -1; x2.up = 1;
x3.lo = -1; x3.up = 1;
x4.lo = -1; x4.up = 1;
x5.lo = -1; x5.up = 1;
x6.lo = -1; x6.up = 1;
x7.lo = -1; x7.up = 1;
x8.lo = -1; x8.up = 1;
x9.lo = -1; x9.up = 1;
x10.lo = -1; x10.up = 1;
x11.lo = -1; x11.up = 1;

* set non-default levels
x1.l = 0.05;
x2.l = -0.1;
x4.l = 0.1;
x5.l = 0.2;
x6.l = 0.3;
x7.l = -0.1;
x9.l = 0.1;
x10.l = 0.2;
x11.l = 0.3;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using QCP maximizing x1;
