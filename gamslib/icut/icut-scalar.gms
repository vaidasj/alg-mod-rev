*  MIP written by GAMS Convert at 12/13/18 10:30:51
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          2        1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        1        0        4        0        0        0        0
*  FX      1        0        0        1        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        8        0        0
*
*  Solve m using MIP minimizing x5;


Variables  i1,i2,i3,i4,x5;

Integer Variables  i1,i2,i3,i4;

Equations  e1,e2;


e1..    i1 + i3 + i4 =G= 7;

e2..  - 1000*i1 - 100*i2 - 10*i3 - i4 + x5 =E= 0;

* set non-default bounds
i1.lo = 2; i1.up = 4;
i2.fx = 3;
i3.lo = 2; i3.up = 4;
i4.lo = 2; i4.up = 3;

* set non-default levels
i1.l = 2;
i3.l = 2;
i4.l = 2;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
m.optca      = 1000000;
m.reslim     = 60;
Solve m using MIP minimizing x5;
