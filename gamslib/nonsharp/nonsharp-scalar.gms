*  MIP written by GAMS Convert at 12/13/18 10:26:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          4        0        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        1        2        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        8        0        0
*
*  Solve m using MIP minimizing x1;


Variables  x1,b2,b3;

Binary Variables  b2,b3;

Equations  e1,e2,e3,e4;


e1..    x1 =G= 0;

e2..  - x1 + 0.23947*b2 + 0.75835*b3 =L= -0.569251999888962;

e3..    b2 + b3 =L= 1;

e4..  - b2 - b3 =L= -1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MIP minimizing x1;
