*  MINLP written by GAMS Convert at 12/13/18 10:32:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          3        1        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        1        0        4        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        5        4        0
*
*  Solve m using MINLP minimizing x5;


Variables  i1,i2,i3,i4,x5;

Integer Variables  i1,i2,i3,i4;

Equations  e1,e2,e3;


e1.. -sqr(6.931 - i1*i2/(i3*i4)) + x5 =E= 1;

e2..  - i3 + i4 =G= 0;

e3..    i1 - i2 =G= 0;

* set non-default bounds
i1.lo = 12; i1.up = 60;
i2.lo = 12; i2.up = 60;
i3.lo = 12; i3.up = 60;
i4.lo = 12; i4.up = 60;

* set non-default levels
i1.l = 24;
i2.l = 24;
i3.l = 24;
i4.l = 24;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 1E-5;
Solve m using MINLP minimizing x5;
