*  MIP written by GAMS Convert at 12/13/18 11:30:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         17        9        0        8        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         25       17        8        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         64       64        0        0
*
*  Solve m using MIP minimizing x25;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,b17,b18,b19
          ,b20,b21,b22,b23,b24,x25;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Binary Variables  b17,b18,b19,b20,b21,b22,b23,b24;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17;


e1..  - 5*x1 - 5*x2 - 5*x3 - 5*x4 - 5*x5 - 5*x6 - 5*x7 - 2.5*x8 - 100*x9
      - 100*x10 - 100*x11 - 100*x12 - 100*x13 - 100*x14 - 100*x15 - 100*x16
      - 5000*b17 - 5000*b18 - 5000*b19 - 5000*b20 - 5000*b21 - 5000*b22
      - 5000*b23 - 5000*b24 + x25 =E= 0;

e2..    x9 - 5600*b17 =L= 0;

e3..    x10 - 6800*b18 =L= 0;

e4..    x11 - 6400*b19 =L= 0;

e5..    x12 - 5600*b20 =L= 0;

e6..    x13 - 4800*b21 =L= 0;

e7..    x14 - 3600*b22 =L= 0;

e8..    x15 - 2400*b23 =L= 0;

e9..    x16 - 1200*b24 =L= 0;

e10..  - x1 + x9 =E= 200;

e11..    x1 - x2 + x10 =E= 400;

e12..    x2 - x3 + x11 =E= 800;

e13..    x3 - x4 + x12 =E= 800;

e14..    x4 - x5 + x13 =E= 1200;

e15..    x5 - x6 + x14 =E= 1200;

e16..    x6 - x7 + x15 =E= 1200;

e17..    x7 - x8 + x16 =E= 1200;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIP minimizing x25;
