*  NLP written by GAMS Convert at 12/13/18 11:30:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         10        4        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         29       26        3        0
*
*  Solve m using NLP maximizing x10;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Positive Variables  x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 0.2*x4 - 0.5*x5 - 0.3*x6 + 0.2*x7 + 0.5*x8 + 0.3*x9 + x10 =E= 0;

e2.. -x1**0.5 + x4 =E= 0;

e3.. -x2**0.5 + x5 =E= 0;

e4.. -x3**0.5 + x6 =E= 0;

e5..  - 0.1*x1 + x7 =G= 0;

e6..  - 0.2*x2 + x8 =G= 0;

e7..  - 0.3*x3 + x9 =G= 0;

e8..  - 0.1*x1 + 0.1*x2 + x7 - x8 =G= 0;

e9..  - 0.2*x2 + 0.2*x3 + x8 - x9 =G= 0;

e10..  - 0.3*x3 + x9 =G= 0;

* set non-default bounds
x1.lo = 0.0001;
x2.lo = 0.0001;
x3.lo = 0.0001;

* set non-default levels
x1.l = 0.0001;
x2.l = 0.0001;
x3.l = 0.0001;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x10;
