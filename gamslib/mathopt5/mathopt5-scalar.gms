*  DNLP written by GAMS Convert at 12/13/18 11:23:00
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          1        1        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          2        2        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          2        1        1        0
*
*  Solve m using DNLP minimizing x2;


Variables  x1,x2;

Equations  e1;


e1.. -(2*sqr(x1) - x1 - 1.05*POWER(x1,4) + 0.1666667*POWER(x1,6)) + x2 =E= 0;

* set non-default bounds
x1.lo = -2; x1.up = 2.5;

* set non-default levels
x1.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using DNLP minimizing x2;
