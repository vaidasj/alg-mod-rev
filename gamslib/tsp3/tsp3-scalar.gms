*  MIP written by GAMS Convert at 12/13/18 10:31:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         75       13       62        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37        1       36        0        0        0        0        0
*  FX      6        0        6        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        581      581        0        0
*
*  Solve m using MIP minimizing x37;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,x37;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75;


e1..  - 3*b2 - 5*b3 - 48*b4 - 48*b5 - 8*b6 - 3*b7 - 3*b9 - 48*b10 - 48*b11
      - 8*b12 - 5*b13 - 3*b14 - 72*b16 - 72*b17 - 48*b18 - 48*b19 - 48*b20
      - 74*b21 - 6*b24 - 48*b25 - 48*b26 - 74*b27 - 6*b30 - 8*b31 - 8*b32
      - 50*b33 - 6*b34 - 6*b35 + x37 =E= 0;

e2..    b1 + b2 + b3 + b4 + b5 + b6 =E= 1;

e3..    b7 + b8 + b9 + b10 + b11 + b12 =E= 1;

e4..    b13 + b14 + b15 + b16 + b17 + b18 =E= 1;

e5..    b19 + b20 + b21 + b22 + b23 + b24 =E= 1;

e6..    b25 + b26 + b27 + b28 + b29 + b30 =E= 1;

e7..    b31 + b32 + b33 + b34 + b35 + b36 =E= 1;

e8..    b1 + b7 + b13 + b19 + b25 + b31 =E= 1;

e9..    b2 + b8 + b14 + b20 + b26 + b32 =E= 1;

e10..    b3 + b9 + b15 + b21 + b27 + b33 =E= 1;

e11..    b4 + b10 + b16 + b22 + b28 + b34 =E= 1;

e12..    b5 + b11 + b17 + b23 + b29 + b35 =E= 1;

e13..    b6 + b12 + b18 + b24 + b30 + b36 =E= 1;

e14..    b2 + b3 + b4 + b5 + b6 =G= 1;

e15..    b3 + b4 + b5 + b6 + b9 + b10 + b11 + b12 =G= 1;

e16..    b7 + b9 + b10 + b11 + b12 =G= 1;

e17..    b2 + b4 + b5 + b6 + b14 + b16 + b17 + b18 =G= 1;

e18..    b13 + b14 + b16 + b17 + b18 =G= 1;

e19..    b4 + b5 + b6 + b10 + b11 + b12 + b16 + b17 + b18 =G= 1;

e20..    b7 + b10 + b11 + b12 + b13 + b16 + b17 + b18 =G= 1;

e21..    b2 + b3 + b5 + b6 + b20 + b21 + b23 + b24 =G= 1;

e22..    b19 + b20 + b21 + b23 + b24 =G= 1;

e23..    b3 + b5 + b6 + b9 + b11 + b12 + b21 + b23 + b24 =G= 1;

e24..    b7 + b9 + b11 + b12 + b19 + b21 + b23 + b24 =G= 1;

e25..    b2 + b5 + b6 + b14 + b17 + b18 + b20 + b23 + b24 =G= 1;

e26..    b13 + b14 + b17 + b18 + b19 + b20 + b23 + b24 =G= 1;

e27..    b5 + b6 + b11 + b12 + b17 + b18 + b23 + b24 =G= 1;

e28..    b7 + b11 + b12 + b13 + b17 + b18 + b19 + b23 + b24 =G= 1;

e29..    b2 + b3 + b4 + b6 + b26 + b27 + b28 + b30 =G= 1;

e30..    b25 + b26 + b27 + b28 + b30 =G= 1;

e31..    b3 + b4 + b6 + b9 + b10 + b12 + b27 + b28 + b30 =G= 1;

e32..    b7 + b9 + b10 + b12 + b25 + b27 + b28 + b30 =G= 1;

e33..    b2 + b4 + b6 + b14 + b16 + b18 + b26 + b28 + b30 =G= 1;

e34..    b13 + b14 + b16 + b18 + b25 + b26 + b28 + b30 =G= 1;

e35..    b4 + b6 + b10 + b12 + b16 + b18 + b28 + b30 =G= 1;

e36..    b7 + b10 + b12 + b13 + b16 + b18 + b25 + b28 + b30 =G= 1;

e37..    b2 + b3 + b6 + b20 + b21 + b24 + b26 + b27 + b30 =G= 1;

e38..    b19 + b20 + b21 + b24 + b25 + b26 + b27 + b30 =G= 1;

e39..    b3 + b6 + b9 + b12 + b21 + b24 + b27 + b30 =G= 1;

e40..    b7 + b9 + b12 + b19 + b21 + b24 + b25 + b27 + b30 =G= 1;

e41..    b2 + b6 + b14 + b18 + b20 + b24 + b26 + b30 =G= 1;

e42..    b13 + b14 + b18 + b19 + b20 + b24 + b25 + b26 + b30 =G= 1;

e43..    b6 + b12 + b18 + b24 + b30 =G= 1;

e44..    b7 + b12 + b13 + b18 + b19 + b24 + b25 + b30 =G= 1;

e45..    b2 + b3 + b4 + b5 + b32 + b33 + b34 + b35 =G= 1;

e46..    b31 + b32 + b33 + b34 + b35 =G= 1;

e47..    b3 + b4 + b5 + b9 + b10 + b11 + b33 + b34 + b35 =G= 1;

e48..    b7 + b9 + b10 + b11 + b31 + b33 + b34 + b35 =G= 1;

e49..    b2 + b4 + b5 + b14 + b16 + b17 + b32 + b34 + b35 =G= 1;

e50..    b13 + b14 + b16 + b17 + b31 + b32 + b34 + b35 =G= 1;

e51..    b4 + b5 + b10 + b11 + b16 + b17 + b34 + b35 =G= 1;

e52..    b7 + b10 + b11 + b13 + b16 + b17 + b31 + b34 + b35 =G= 1;

e53..    b2 + b3 + b5 + b20 + b21 + b23 + b32 + b33 + b35 =G= 1;

e54..    b19 + b20 + b21 + b23 + b31 + b32 + b33 + b35 =G= 1;

e55..    b3 + b5 + b9 + b11 + b21 + b23 + b33 + b35 =G= 1;

e56..    b7 + b9 + b11 + b19 + b21 + b23 + b31 + b33 + b35 =G= 1;

e57..    b2 + b5 + b14 + b17 + b20 + b23 + b32 + b35 =G= 1;

e58..    b13 + b14 + b17 + b19 + b20 + b23 + b31 + b32 + b35 =G= 1;

e59..    b5 + b11 + b17 + b23 + b35 =G= 1;

e60..    b7 + b11 + b13 + b17 + b19 + b23 + b31 + b35 =G= 1;

e61..    b2 + b3 + b4 + b26 + b27 + b28 + b32 + b33 + b34 =G= 1;

e62..    b25 + b26 + b27 + b28 + b31 + b32 + b33 + b34 =G= 1;

e63..    b3 + b4 + b9 + b10 + b27 + b28 + b33 + b34 =G= 1;

e64..    b7 + b9 + b10 + b25 + b27 + b28 + b31 + b33 + b34 =G= 1;

e65..    b2 + b4 + b14 + b16 + b26 + b28 + b32 + b34 =G= 1;

e66..    b13 + b14 + b16 + b25 + b26 + b28 + b31 + b32 + b34 =G= 1;

e67..    b4 + b10 + b16 + b28 + b34 =G= 1;

e68..    b7 + b10 + b13 + b16 + b25 + b28 + b31 + b34 =G= 1;

e69..    b2 + b3 + b20 + b21 + b26 + b27 + b32 + b33 =G= 1;

e70..    b19 + b20 + b21 + b25 + b26 + b27 + b31 + b32 + b33 =G= 1;

e71..    b3 + b9 + b21 + b27 + b33 =G= 1;

e72..    b7 + b9 + b19 + b21 + b25 + b27 + b31 + b33 =G= 1;

e73..    b2 + b14 + b20 + b26 + b32 =G= 1;

e74..    b13 + b14 + b19 + b20 + b25 + b26 + b31 + b32 =G= 1;

e75..    b7 + b13 + b19 + b25 + b31 =G= 1;

* set non-default bounds
b1.fx = 0;
b8.fx = 0;
b15.fx = 0;
b22.fx = 0;
b29.fx = 0;
b36.fx = 0;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MIP minimizing x37;
