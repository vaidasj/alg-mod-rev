*  NLP written by GAMS Convert at 12/13/18 10:24:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          4        4        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         14        4       10        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4;


e1.. -(sqr((-1) + x2) + sqr(x2 - x3) + POWER(x3 - x4,3) + POWER(x4 - x5,4) + 
     POWER(x5 - x6,4)) + x1 =E= 0;

e2.. sqr(x3) + POWER(x4,3) + x2 =E= 6.24264068711929;

e3.. -sqr(x4) + x3 + x5 =E= 0.82842712474619;

e4.. x2*x6 =E= 2;

* set non-default levels
x2.l = -1;
x3.l = 2;
x4.l = 1;
x5.l = -2;
x6.l = -2;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;
