*  NLP written by GAMS Convert at 12/13/18 10:24:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          3        1        0        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        9        4        0
*
*  Solve m using NLP minimizing x5;


Variables  x1,x2,x3,x4,x5;

Equations  e1,e2,e3;


e1..    4*x1 + 2.25*x2 + x3 + 0.25*x4 =L= 0.0401;

e2..    0.16*x1 + 0.36*x2 + 0.64*x3 + 0.64*x4 =L= 0.010085;

e3.. -(1/x1 + 1/x2 + 1/x3 + 1/x4) + x5 =E= 0;

* set non-default bounds
x1.lo = 2.5E-6; x1.up = 0.01;
x2.lo = 3.33333333333333E-6; x2.up = 0.01;
x3.lo = 5E-6; x3.up = 0.01;
x4.lo = 1E-5; x4.up = 0.01;

* set non-default levels
x1.l = 0.005;
x2.l = 0.005;
x3.l = 0.005;
x4.l = 0.005;
x5.l = 800;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x5;
