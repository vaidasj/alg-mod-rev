*  DNLP written by GAMS Convert at 12/13/18 11:24:22
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
*  Solve m using DNLP minimizing x1;


Variables  x1,x2;

Equations  e1;


e1.. -Gamma(x2) + x1 =E= 0;

* set non-default bounds
x2.lo = 0.01;

* set non-default levels
x2.l = 0.01;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using DNLP minimizing x1;
