*  NLP written by GAMS Convert at 12/13/18 11:34:54
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          7        7        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         28       19        9        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x2 + x3 + x4 =E= 245;

e2..    x5 + x6 + x7 =E= 136;

e3..    x8 + x9 + x10 =E= 159;

e4..    x2 + x5 + x8 =E= 251;

e5..    x3 + x6 + x9 =E= 107;

e6..    x4 + x7 + x10 =E= 182;

e7.. -(log(0.0197941409342835*x2)*x2 + log(0.0352112676056338*x3)*x3 + log(
     0.0721136511141559*x4)*x4 + log(0.0113109376767334*x5)*x5 + log(
     0.0142555739294064*x6)*x6 + log(0.0133342222814854*x7)*x7 + log(
     0.0913575735428467*x8)*x8 + log(0.0141410713275638*x9)*x9 + log(
     0.0243694407213354*x10)*x10) + x1 =E= 0;

* set non-default bounds
x2.lo = 1;
x3.lo = 1;
x4.lo = 1;
x5.lo = 1;
x6.lo = 1;
x7.lo = 1;
x8.lo = 1;
x9.lo = 1;
x10.lo = 1;

* set non-default levels
x2.l = 1;
x3.l = 1;
x4.l = 1;
x5.l = 1;
x6.l = 1;
x7.l = 1;
x8.l = 1;
x9.l = 1;
x10.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;
