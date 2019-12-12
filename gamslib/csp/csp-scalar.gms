*  MIP written by GAMS Convert at 12/13/18 11:24:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         10        6        0        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         20        1       19        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         47       47        0        0
*
*  Solve m using MIP minimizing x1;


Variables  x1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20;

Binary Variables  b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18
          ,b19,b20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    b2 + b3 + b4 =E= 1;

e2..    b5 + b6 =E= 1;

e3..    b7 + b8 + b9 =E= 1;

e4..    b10 + b11 + b12 =E= 1;

e5..    b13 + b14 + b15 + b16 =E= 1;

e6..    b17 + b18 + b19 + b20 =E= 1;

e7..  - x1 - b2 - b6 - b8 - b10 - b14 - b20 =L= -6;

e8..  - x1 - b4 - b5 - b7 - b12 - b13 - b19 =L= -6;

e9..  - x1 - b3 - b5 - b9 - b11 - b15 - b17 =L= -6;

e10..  - x1 - b4 - b5 - b7 - b12 - b16 - b18 =L= -6;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
m.optca      = 0.999;
m.reslim     = 5;
Solve m using MIP minimizing x1;
