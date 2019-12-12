*  MIP written by GAMS Convert at 12/13/18 10:30:47
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         23        1       22        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         35        1       34        0        0        0        0        0
*  FX     15        0       15        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         79       79        0        0
*
*  Solve m using MIP minimizing x35;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,x35;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23;


e1..  - b6 + x35 =E= 0;

e2..  - b1 - b2 - b3 + b4 =G= -2;

e3..  - b4 - b5 + b6 =G= -1;

e4..  - b4 - b5 + b7 =G= -1;

e5..    b3 - b4 - b5 =G= -1;

e6..  - b8 - b9 - b10 + b11 =G= -2;

e7..    b6 - b11 - b12 - b13 =G= -2;

e8..  - b5 - b9 - b10 - b14 + b15 =G= -3;

e9..    b6 - b15 - b16 - b17 =G= -2;

e10..    b6 - b12 - b18 - b19 =G= -2;

e11..  - b12 - b18 - b19 + b20 =G= -2;

e12..    b9 - b21 - b22 =G= -1;

e13..  - b9 - b23 + b24 =G= -1;

e14..  - b17 + b18 - b24 =G= -1;

e15..    b21 - b25 - b26 =G= -1;

e16..  - b25 - b26 + b27 =G= -1;

e17..  - b3 + b14 - b28 - b29 =G= -2;

e18..  - b12 - b30 - b31 + b32 =G= -2;

e19..    b8 - b12 - b30 - b31 =G= -2;

e20..  - b25 + b30 - b33 =G= -1;

e21..    b13 - b25 - b33 =G= -1;

e22..    b1 - b3 - b34 =G= -1;

e23..  - b14 - b28 + b34 =G= -1;

* set non-default bounds
b2.fx = 1;
b3.fx = 1;
b5.fx = 1;
b10.fx = 1;
b12.fx = 1;
b13.fx = 1;
b16.fx = 0;
b17.fx = 1;
b19.fx = 0;
b22.fx = 1;
b25.fx = 1;
b26.fx = 1;
b28.fx = 1;
b31.fx = 1;
b33.fx = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MIP minimizing x35;
