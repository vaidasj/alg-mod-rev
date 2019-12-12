*  NLP written by GAMS Convert at 12/13/18 11:23:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          3        3        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        3        2        0
*
*  Solve m using NLP maximizing x3;


Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..    x1 =E= 8;

e2..    x2 =E= 16;

e3.. -x1**0.2*x2**0.8 + x3 =E= 0;

* set non-default bounds
x1.lo = 0.001;
x2.lo = 0.001;

* set non-default levels
x1.l = 0.001;
x2.l = 0.001;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x3;
