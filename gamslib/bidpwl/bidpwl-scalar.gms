*  MIP written by GAMS Convert at 12/13/18 11:43:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         31       17        0       14        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         39       25       14        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         89       89        0        0
*
*  Solve m using MIP minimizing x29;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14;

Binary Variables  b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1..    x1 =L= 0;

e2..    x2 - 33000*b16 =L= 0;

e3..    x3 =L= 0;

e4..    x4 - 48000*b18 =L= 0;

e5..    x5 - 30000*b19 =L= 0;

e6..    x6 - 50000*b20 =L= 0;

e7..    x7 - 10000*b21 =L= 0;

e8..    x8 =L= 0;

e9..    x9 - 165600*b23 =L= 0;

e10..    x10 =L= 0;

e11..    x11 - 12000*b25 =L= 0;

e12..    x12 =L= 0;

e13..    x13 - 42000*b27 =L= 0;

e14..    x14 - 35000*b28 =L= 0;

e15..    b15 + b16 =E= 1;

e16..    b17 + b18 + b19 + b20 + b21 =E= 1;

e17..    b22 + b23 =E= 1;

e18..    b24 + b25 =E= 1;

e19..    b26 + b27 + b28 =E= 1;

e20..  - x2 + x30 =E= 0;

e21..  - x4 - x5 - x6 - x7 - 22000*b18 - 70000*b19 - 100000*b20 - 150000*b21
       + x31 =E= 0;

e22..  - x9 + x32 =E= 0;

e23..  - x11 + x33 =E= 0;

e24..  - x13 - x14 - 42000*b28 + x34 =E= 0;

e25..  - x30 - x31 - x32 - x33 - x34 =E= -239600.48;

e26..  - 61.15*x2 - 3855.84*b16 + x35 =E= 0;

e27..  - 68.099*x4 - 66.049*x5 - 64.099*x6 - 62.119*x7 - 1623982.84*b18
       - 4892734.84*b19 - 6874204.84*b20 - 10079154.84*b21 + x36 =E= 0;

e28..  - 62.19*x9 - 13456*b23 + x37 =E= 0;

e29..  - 72.488*x11 - 6583.98*b25 + x38 =E= 0;

e30..  - 70.15*x13 - 68.15*x14 - 2946300*b28 + x39 =E= 0;

e31..    x29 - x35 - x36 - x37 - x38 - x39 =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIP minimizing x29;
