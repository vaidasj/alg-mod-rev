*  MIQCP written by GAMS Convert at 12/13/18 11:23:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         46       10       14       22        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37       23       14        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        119      112        7        0
*
*  Solve m using MIQCP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37;

Positive Variables  x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23;

Binary Variables  b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36,b37;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46;


e1..    x3 + x4 + x5 + x6 + x7 + x8 + x9 =E= 1;

e2..    x3 - x10 + x17 =E= 0.2;

e3..    x4 - x11 + x18 =E= 0.2;

e4..    x5 - x12 + x19 =E= 0;

e5..    x6 - x13 + x20 =E= 0;

e6..    x7 - x14 + x21 =E= 0.2;

e7..    x8 - x15 + x22 =E= 0.2;

e8..    x9 - x16 + x23 =E= 0.2;

e9..    x10 + x11 + x12 + x13 + x14 + x15 + x16 =L= 0.3;

e10..    x10 - 0.11*b24 =L= 0;

e11..    x11 - 0.1*b25 =L= 0;

e12..    x12 - 0.07*b26 =L= 0;

e13..    x13 - 0.11*b27 =L= 0;

e14..    x14 - 0.2*b28 =L= 0;

e15..    x15 - 0.1*b29 =L= 0;

e16..    x16 - 0.1*b30 =L= 0;

e17..    x10 - 0.03*b24 =G= 0;

e18..    x11 - 0.04*b25 =G= 0;

e19..    x12 - 0.04*b26 =G= 0;

e20..    x13 - 0.03*b27 =G= 0;

e21..    x14 - 0.03*b28 =G= 0;

e22..    x15 - 0.03*b29 =G= 0;

e23..    x16 - 0.03*b30 =G= 0;

e24..    x17 - 0.2*b31 =L= 0;

e25..    x18 - 0.15*b32 =L= 0;

e26..    x19 =L= 0;

e27..    x20 =L= 0;

e28..    x21 - 0.1*b35 =L= 0;

e29..    x22 - 0.15*b36 =L= 0;

e30..    x23 - 0.2*b37 =L= 0;

e31..    x17 - 0.02*b31 =G= 0;

e32..    x18 - 0.02*b32 =G= 0;

e33..    x19 - 0.04*b33 =G= 0;

e34..    x20 - 0.04*b34 =G= 0;

e35..    x21 - 0.04*b35 =G= 0;

e36..    x22 - 0.04*b36 =G= 0;

e37..    x23 - 0.04*b37 =G= 0;

e38..    b24 + b31 =L= 1;

e39..    b25 + b32 =L= 1;

e40..    b26 + b33 =L= 1;

e41..    b27 + b34 =L= 1;

e42..    b28 + b35 =L= 1;

e43..    b29 + b36 =L= 1;

e44..    b30 + b37 =L= 1;

e45..    x2 - 0.1287*x3 - 0.1096*x4 - 0.0501*x5 - 0.1524*x6 - 0.0763*x7
       - 0.1854*x8 - 0.062*x9 =E= 0;

e46.. -(42.18*x3*x3 + 40.36*x3*x4 + 21.76*x3*x5 + 10.6*x3*x6 + 24.64*x3*x7 + 
      47.68*x3*x8 + 34.82*x3*x9 + 70.89*x4*x4 + 43.16*x4*x5 + 30.82*x4*x6 + 
      46.48*x4*x7 + 47.6*x4*x8 + 25.24*x4*x9 + 25.51*x5*x5 + 19.2*x5*x6 + 45.26
      *x5*x7 + 26.44*x5*x8 + 9.4*x5*x9 + 22.33*x6*x6 + 20.64*x6*x7 + 20.92*x6*
      x8 + 2*x6*x9 + 30.01*x7*x7 + 32.72*x7*x8 + 14.4*x7*x9 + 42.23*x8*x8 + 
      19.8*x8*x9 + 16.42*x9*x9) + x1 =E= 0;

* set non-default bounds
x2.fx = 0;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIQCP minimizing x1;
