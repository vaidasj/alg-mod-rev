*  MIP written by GAMS Convert at 12/13/18 10:24:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         25        2        9       14        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19       10        9        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         68       68        0        0
*
*  Solve m using MIP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,b11,b12,b13,b14,b15,b16,b17,b18,b19;

Binary Variables  b11,b12,b13,b14,b15,b16,b17,b18,b19;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25;


e1..  - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 =E= -239600.48;

e2..    x1 - 61.15*x2 - 68.099*x3 - 66.049*x4 - 64.099*x5 - 62.119*x6
      - 62.19*x7 - 72.488*x8 - 70.15*x9 - 68.15*x10 - 3855.84*b11
      - 125804.84*b12 - 269304.84*b13 - 464304.84*b14 - 761304.840000001*b15
      - 13456*b16 - 6583.98*b17 - 84000*b19 =E= 0;

e3..    x2 =G= 0;

e4..    x3 - 22000*b12 =G= 0;

e5..    x4 - 70000*b13 =G= 0;

e6..    x5 - 100000*b14 =G= 0;

e7..    x6 - 150000*b15 =G= 0;

e8..    x7 =G= 0;

e9..    x8 =G= 0;

e10..    x9 =G= 0;

e11..    x10 - 42000*b19 =G= 0;

e12..    x2 - 33000*b11 =L= 0;

e13..    x3 - 70000*b12 =L= 0;

e14..    x4 - 100000*b13 =L= 0;

e15..    x5 - 150000*b14 =L= 0;

e16..    x6 - 160000*b15 =L= 0;

e17..    x7 - 165600*b16 =L= 0;

e18..    x8 - 12000*b17 =L= 0;

e19..    x9 - 42000*b18 =L= 0;

e20..    x10 - 77000*b19 =L= 0;

e21..    b11 =L= 1;

e22..    b12 + b13 + b14 + b15 =L= 1;

e23..    b16 =L= 1;

e24..    b17 =L= 1;

e25..    b18 + b19 =L= 1;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIP minimizing x1;
