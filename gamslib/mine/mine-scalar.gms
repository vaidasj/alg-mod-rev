*  LP written by GAMS Convert at 12/13/18 10:24:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         57        1       56        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        135      135        0        0
*
*  Solve m using LP maximizing x31;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57;


e1..    x1 - x17 =G= 0;

e2..    x2 - x18 =G= 0;

e3..    x3 - x19 =G= 0;

e4..    x5 - x20 =G= 0;

e5..    x6 - x21 =G= 0;

e6..    x7 - x22 =G= 0;

e7..    x9 - x23 =G= 0;

e8..    x10 - x24 =G= 0;

e9..    x11 - x25 =G= 0;

e10..    x17 - x26 =G= 0;

e11..    x18 - x27 =G= 0;

e12..    x20 - x28 =G= 0;

e13..    x21 - x29 =G= 0;

e14..    x26 - x30 =G= 0;

e15..    x2 - x17 =G= 0;

e16..    x3 - x18 =G= 0;

e17..    x4 - x19 =G= 0;

e18..    x6 - x20 =G= 0;

e19..    x7 - x21 =G= 0;

e20..    x8 - x22 =G= 0;

e21..    x10 - x23 =G= 0;

e22..    x11 - x24 =G= 0;

e23..    x12 - x25 =G= 0;

e24..    x18 - x26 =G= 0;

e25..    x19 - x27 =G= 0;

e26..    x21 - x28 =G= 0;

e27..    x22 - x29 =G= 0;

e28..    x27 - x30 =G= 0;

e29..    x6 - x17 =G= 0;

e30..    x7 - x18 =G= 0;

e31..    x8 - x19 =G= 0;

e32..    x10 - x20 =G= 0;

e33..    x11 - x21 =G= 0;

e34..    x12 - x22 =G= 0;

e35..    x14 - x23 =G= 0;

e36..    x15 - x24 =G= 0;

e37..    x16 - x25 =G= 0;

e38..    x21 - x26 =G= 0;

e39..    x22 - x27 =G= 0;

e40..    x24 - x28 =G= 0;

e41..    x25 - x29 =G= 0;

e42..    x29 - x30 =G= 0;

e43..    x5 - x17 =G= 0;

e44..    x6 - x18 =G= 0;

e45..    x7 - x19 =G= 0;

e46..    x9 - x20 =G= 0;

e47..    x10 - x21 =G= 0;

e48..    x11 - x22 =G= 0;

e49..    x13 - x23 =G= 0;

e50..    x14 - x24 =G= 0;

e51..    x15 - x25 =G= 0;

e52..    x20 - x26 =G= 0;

e53..    x21 - x27 =G= 0;

e54..    x23 - x28 =G= 0;

e55..    x24 - x29 =G= 0;

e56..    x28 - x30 =G= 0;

e57..    1500*x4 - 1000*x6 + 1500*x8 + 1000*x9 + 1000*x10 + 1500*x11 + 2000*x12
       + 1500*x13 + 1500*x14 + 2000*x15 + 2500*x16 - 2000*x17 - 2000*x18
       + 2000*x19 + 4000*x22 + 2000*x23 + 2000*x24 + 5000*x25 - 16000*x26
       - 4000*x27 - 2000*x28 - 2000*x30 + x31 =E= 0;

* set non-default bounds
x1.up = 1;
x2.up = 1;
x3.up = 1;
x4.up = 1;
x5.up = 1;
x6.up = 1;
x7.up = 1;
x8.up = 1;
x9.up = 1;
x10.up = 1;
x11.up = 1;
x12.up = 1;
x13.up = 1;
x14.up = 1;
x15.up = 1;
x16.up = 1;
x17.up = 1;
x18.up = 1;
x19.up = 1;
x20.up = 1;
x21.up = 1;
x22.up = 1;
x23.up = 1;
x24.up = 1;
x25.up = 1;
x26.up = 1;
x27.up = 1;
x28.up = 1;
x29.up = 1;
x30.up = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x31;
