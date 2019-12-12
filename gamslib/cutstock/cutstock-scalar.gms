*  MIP written by GAMS Convert at 12/13/18 11:23:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          5        1        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        1        0        4        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        9        0        0
*
*  Solve m using MIP minimizing x5;


Variables  i1,i2,i3,i4,x5;

Integer Variables  i1,i2,i3,i4;

Equations  e1,e2,e3,e4,e5;


e1..  - i1 - i2 - i3 - i4 + x5 =E= 0;

e2..    2*i1 =G= 97;

e3..    2*i2 =G= 610;

e4..    3*i3 =G= 395;

e5..    7*i4 =G= 211;

* set non-default bounds
i1.up = 1313;
i2.up = 1313;
i3.up = 1313;
i4.up = 1313;

* set non-default levels
i1.l = 48.5;
i2.l = 305;
i3.l = 131.666666666667;
i4.l = 30.1428571428571;
x5.l = 515.309523809524;

* set non-default marginals
e1.m = 1;
e2.m = 0.5;
e3.m = 0.5;
e4.m = 0.333333333333333;
e5.m = 0.142857142857143;

Model m / all /;

m.limrow=0; m.limcol=0;

option bratio = 0;
m.optcr      = 0;
Solve m using MIP minimizing x5;
