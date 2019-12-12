*  LP written by GAMS Convert at 12/13/18 10:24:49
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         11       11        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         51       51        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        130      130        0        0
*
*  Solve m using LP minimizing x51;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - 50*x1 - 85*x2 - 115*x3 - 143*x4 - 52.5*x5 - 89.25*x6 - 120.75*x7
      - 150.15*x8 - 56*x9 - 95.2*x10 - 128.8*x11 - 160.16*x12 - 85.5*x13
      - 145.35*x14 - 196.65*x15 - 244.53*x16 - 90*x17 - 153*x18 - 207*x19
      - 257.4*x20 - 95*x21 - 161.5*x22 - 218.5*x23 - 271.7*x24 - 98.5*x25
      - 167.45*x26 - 226.55*x27 - 281.71*x28 - 105*x29 - 178.5*x30 - 241.5*x31
      - 300.3*x32 - 111*x33 - 188.7*x34 - 255.3*x35 - 317.46*x36 - 119*x37
      - 202.3*x38 - 273.7*x39 - 340.34*x40 + x51 =E= 0;

e2..  - x1 - x2 - x3 - x4 + x41 =E= 0;

e3..    x1 - x5 - x6 - x7 - x8 - x41 + x42 =E= 0;

e4..    x2 + x5 - x9 - x10 - x11 - x12 - x42 + x43 =E= 0;

e5..    x3 + x6 + x9 - x13 - x14 - x15 - x16 - x43 + x44 =E= 0;

e6..    x4 + x7 + x10 + x13 - x17 - x18 - x19 - x20 - x44 + x45 =E= 0;

e7..    x8 + x11 + x14 + x17 - x21 - x22 - x23 - x24 - x45 + x46 =E= 0;

e8..    x12 + x15 + x18 + x21 - x25 - x26 - x27 - x28 - x46 + x47 =E= 0;

e9..    x16 + x19 + x22 + x25 - x29 - x30 - x31 - x32 - x47 + x48 =E= 0;

e10..    x20 + x23 + x26 + x29 - x33 - x34 - x35 - x36 - x48 + x49 =E= 0;

e11..    x24 + x27 + x30 + x33 - x37 - x38 - x39 - x40 - x49 + x50 =E= 0;

* set non-default bounds
x41.lo = 5;
x42.lo = 6;
x43.lo = 7;
x44.lo = 6;
x45.lo = 4;
x46.lo = 9;
x47.lo = 8;
x48.lo = 8;
x49.lo = 6;
x50.lo = 4;

* set non-default levels
x41.l = 5;
x42.l = 6;
x43.l = 7;
x44.l = 6;
x45.l = 4;
x46.l = 9;
x47.l = 8;
x48.l = 8;
x49.l = 6;
x50.l = 4;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x51;
