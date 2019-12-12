*  MIP written by GAMS Convert at 12/13/18 10:32:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         42        6       36        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         57       37       20        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        165      165        0        0
*
*  Solve m using MIP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57;

Positive Variables  x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37;

Binary Variables  b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52
          ,b53,b54,b55,b56,b57;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42;


e1..    x1 - 2*x2 - 4*x3 - 3*x4 - 2*x5 - 4*x6 - 3*x7 - 2*x8 - 4*x9 - 3*x10
      - 2*x11 - 4*x12 - 3*x13 - 6*x14 - 2*x15 - 3*x16 - 6*x17 - 2*x18 - 3*x19
      - 6*x20 - 2*x21 - 3*x22 - 6*x23 - 2*x24 - 3*x25 - 5*x26 - 3*x27 - 5*x28
      - 3*x29 - 5*x30 - 3*x31 - 5*x32 - 3*x33 - 3*x34 - 3*x35 - 3*x36 - 3*x37
      =E= 0;

e2..    b38 + b39 + b40 + b41 =E= 1;

e3..    b42 + b43 + b44 + b45 =E= 1;

e4..    b46 + b47 + b48 + b49 =E= 1;

e5..    b50 + b51 + b52 + b53 =E= 1;

e6..    b54 + b55 + b56 + b57 =E= 1;

e7..    x2 - b38 - b46 =G= -1;

e8..    x3 - b38 - b50 =G= -1;

e9..    x4 - b38 - b54 =G= -1;

e10..    x5 - b39 - b47 =G= -1;

e11..    x6 - b39 - b51 =G= -1;

e12..    x7 - b39 - b55 =G= -1;

e13..    x8 - b40 - b48 =G= -1;

e14..    x9 - b40 - b52 =G= -1;

e15..    x10 - b40 - b56 =G= -1;

e16..    x11 - b41 - b49 =G= -1;

e17..    x12 - b41 - b53 =G= -1;

e18..    x13 - b41 - b57 =G= -1;

e19..    x14 - b42 - b46 =G= -1;

e20..    x15 - b42 - b50 =G= -1;

e21..    x16 - b42 - b54 =G= -1;

e22..    x17 - b43 - b47 =G= -1;

e23..    x18 - b43 - b51 =G= -1;

e24..    x19 - b43 - b55 =G= -1;

e25..    x20 - b44 - b48 =G= -1;

e26..    x21 - b44 - b52 =G= -1;

e27..    x22 - b44 - b56 =G= -1;

e28..    x23 - b45 - b49 =G= -1;

e29..    x24 - b45 - b53 =G= -1;

e30..    x25 - b45 - b57 =G= -1;

e31..    x26 - b46 - b50 =G= -1;

e32..    x27 - b46 - b54 =G= -1;

e33..    x28 - b47 - b51 =G= -1;

e34..    x29 - b47 - b55 =G= -1;

e35..    x30 - b48 - b52 =G= -1;

e36..    x31 - b48 - b56 =G= -1;

e37..    x32 - b49 - b53 =G= -1;

e38..    x33 - b49 - b57 =G= -1;

e39..    x34 - b50 - b54 =G= -1;

e40..    x35 - b51 - b55 =G= -1;

e41..    x36 - b52 - b56 =G= -1;

e42..    x37 - b53 - b57 =G= -1;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0.001;
m.reslim     = 10;
Solve m using MIP minimizing x1;
