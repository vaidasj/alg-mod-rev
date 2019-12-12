*  NLP written by GAMS Convert at 12/13/18 11:24:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          2        2        0        0        0        0        0        0
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
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3;

Equations  e1,e2;


e1.. -(230*BetaReg(x3,2,4) - 2*(BetaReg(x3,2,4)*(113 + x2) + 2*BetaReg(x3,3,4))
      + 3*((1 - BetaReg(x3,2,4))*(113 + x2) - 2*BetaReg(x3,3,4)) + 345*BetaReg(
     x3,2,4)) + x1 =E= -327;

e2..    0.166666666666667*x2 + x3 =E= 0.333333333333333;

* set non-default bounds
x3.lo = 0.0001; x3.up = 0.9999;

* set non-default levels
x3.l = 0.5;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;
