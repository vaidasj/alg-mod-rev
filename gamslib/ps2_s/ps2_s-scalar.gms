*  NLP written by GAMS Convert at 12/13/18 11:30:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          7        3        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21       19        2        0
*
*  Solve m using NLP maximizing x7;


Variables  x1,x2,x3,x4,x5,x6,x7;

Positive Variables  x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - 0.2*x3 - 0.8*x4 + 0.2*x5 + 0.8*x6 + x7 =E= 0;

e2.. -x1**0.5 + x3 =E= 0;

e3.. -x2**0.5 + x4 =E= 0;

e4..  - 0.2*x1 + x5 =G= 0;

e5..  - 0.3*x2 + x6 =G= 0;

e6..  - 0.2*x1 + 0.2*x2 + x5 - x6 =G= 0;

e7..    0.3*x1 - 0.3*x2 - x5 + x6 =G= 0;

* set non-default bounds
x1.lo = 0.0001;
x2.lo = 0.0001;

* set non-default levels
x1.l = 0.0001;
x2.l = 0.0001;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x7;
