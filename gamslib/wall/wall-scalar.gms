*  NLP written by GAMS Convert at 12/13/18 10:24:42
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          6        6        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         20       10       10        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1.. x1*x2 =E= 1;

e2.. x3/x1/x4 =E= 4.8;

e3.. x5/x2/x6 =E= 0.98;

e4.. x6*x4 =E= 1;

e5..    x1 - x2 + 1E-7*x3 - 1E-5*x5 =E= 0;

e6..    2*x1 - 2*x2 + 1E-7*x3 - 0.01*x4 - 1E-5*x5 + 0.01*x6 =E= 0;

* set non-default levels
x1.l = 1;
x2.l = 1;
x3.l = 1;
x4.l = 1;
x5.l = 1;
x6.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;
