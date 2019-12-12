*  MIP written by GAMS Convert at 12/13/18 10:32:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         87       28        0       59        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         68       38       30        0        0        0        0        0
*  FX      3        0        3        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        239      239        0        0
*
*  Solve m using MIP maximizing x68;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68;

Positive Variables  x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44
          ,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61
          ,x62,x63,x64,x65,x66,x67;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87;


e1..  - b1 + x58 =L= 0;

e2..  - b2 + x59 =L= 0;

e3..  - b3 + x60 =L= 0;

e4..  - b4 + x61 =L= 0;

e5..  - b5 + x62 =L= 0;

e6..  - b6 + x63 =L= 0;

e7..  - b7 + x64 =L= 0;

e8..  - b8 + x65 =L= 0;

e9..  - b9 + x66 =L= 0;

e10..  - b10 + x67 =L= 0;

e11..  - b11 + x58 =L= 0;

e12..  - b12 + x59 =L= 0;

e13..  - b13 + x60 =L= 0;

e14..  - b14 + x61 =L= 0;

e15..  - b15 + x62 =L= 0;

e16..  - b16 + x63 =L= 0;

e17..  - b17 + x64 =L= 0;

e18..  - b18 + x65 =L= 0;

e19..  - b19 + x66 =L= 0;

e20..  - b20 + x67 =L= 0;

e21..  - b21 + x58 =L= 0;

e22..  - b22 + x59 =L= 0;

e23..  - b23 + x60 =L= 0;

e24..  - b24 + x61 =L= 0;

e25..  - b25 + x62 =L= 0;

e26..  - b26 + x63 =L= 0;

e27..  - b27 + x64 =L= 0;

e28..  - b28 + x65 =L= 0;

e29..  - b29 + x66 =L= 0;

e30..  - b30 + x67 =L= 0;

e31..  - b1 + b2 - x31 =E= 0;

e32..  - b2 + b3 + x32 =E= 0;

e33..  - b3 + b4 - x33 =E= 0;

e34..  - b4 + b5 + x34 =E= 0;

e35..  - b5 + b6 - x35 =E= 0;

e36..  - b6 + b7 + x36 =E= 0;

e37..  - b7 + b8 - x37 =E= 0;

e38..  - b8 + b9 + x38 =E= 0;

e39..  - b9 + b10 - x39 =E= 0;

e40..  - b11 + b12 - x40 =E= 0;

e41..  - b12 + b13 + x41 =E= 0;

e42..  - b13 + b14 - x42 =E= 0;

e43..  - b14 + b15 + x43 =E= 0;

e44..  - b15 + b16 - x44 =E= 0;

e45..  - b16 + b17 + x45 =E= 0;

e46..  - b17 + b18 - x46 =E= 0;

e47..  - b18 + b19 + x47 =E= 0;

e48..  - b19 + b20 - x48 =E= 0;

e49..  - b21 + b22 - x49 =E= 0;

e50..  - b22 + b23 + x50 =E= 0;

e51..  - b23 + b24 - x51 =E= 0;

e52..  - b24 + b25 + x52 =E= 0;

e53..  - b25 + b26 - x53 =E= 0;

e54..  - b26 + b27 + x54 =E= 0;

e55..  - b27 + b28 - x55 =E= 0;

e56..  - b28 + b29 + x56 =E= 0;

e57..  - b29 + b30 - x57 =E= 0;

e58..    x31 + x40 + x49 =L= 1;

e59..    x32 + x41 + x50 =L= 1;

e60..    x33 + x42 + x51 =L= 1;

e61..    x34 + x43 + x52 =L= 1;

e62..    x35 + x44 + x53 =L= 1;

e63..    x36 + x45 + x54 =L= 1;

e64..    x37 + x46 + x55 =L= 1;

e65..    x38 + x47 + x56 =L= 1;

e66..    x39 + x48 + x57 =L= 1;

e67..    b1 + b11 - x58 =L= 1;

e68..  - b2 - b12 - x59 =L= -1;

e69..    b3 + b13 - x60 =L= 1;

e70..  - b4 - b14 - x61 =L= -1;

e71..    b5 + b15 - x62 =L= 1;

e72..  - b6 - b16 - x63 =L= -1;

e73..    b7 + b17 - x64 =L= 1;

e74..  - b8 - b18 - x65 =L= -1;

e75..    b9 + b19 - x66 =L= 1;

e76..  - b10 - b20 - x67 =L= -1;

e77..    b1 + b21 - x58 =L= 1;

e78..  - b2 - b22 - x59 =L= -1;

e79..    b3 + b23 - x60 =L= 1;

e80..  - b4 - b24 - x61 =L= -1;

e81..    b5 + b25 - x62 =L= 1;

e82..  - b6 - b26 - x63 =L= -1;

e83..    b7 + b27 - x64 =L= 1;

e84..  - b8 - b28 - x65 =L= -1;

e85..    b9 + b29 - x66 =L= 1;

e86..  - b10 - b30 - x67 =L= -1;

e87..  - x58 - x59 - x60 - x61 - x62 - x63 - x64 - x65 - x66 - x67 + x68 =E= 0;

* set non-default bounds
b1.fx = 0;
b11.fx = 0;
b21.fx = 0;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIP maximizing x68;
