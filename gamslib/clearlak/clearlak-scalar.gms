*  LP written by GAMS Convert at 12/13/18 11:22:40
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         23       23        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         92       92        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        157      157        0        0
*
*  Solve m using LP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92;

Positive Variables  x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86
          ,x87,x88,x89,x90,x91,x92;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23;


e1..    x1 - 10*x47 - 7.5*x48 - 2.5*x49 - 5.625*x50 - 1.875*x51 - 1.875*x52
      - 0.625*x53 - 1.40625*x54 - 2.8125*x55 - 1.40625*x56 - 1.875*x57
      - 1.875*x58 - 0.625*x59 - 1.40625*x60 - 0.703125*x61 - 1.40625*x62
      - 0.703125*x63 - 1.40625*x64 - 0.46875*x65 - 0.9375*x66 - 0.46875*x67
      - 1.875*x68 - 0.625*x69 - 5*x70 - 3.75*x71 - 1.25*x72 - 2.8125*x73
      - 0.9375*x74 - 0.9375*x75 - 0.3125*x76 - 0.703125*x77 - 1.40625*x78
      - 0.703125*x79 - 0.9375*x80 - 0.9375*x81 - 0.3125*x82 - 0.703125*x83
      - 0.3515625*x84 - 0.703125*x85 - 0.3515625*x86 - 0.703125*x87
      - 0.234375*x88 - 0.46875*x89 - 0.234375*x90 - 0.9375*x91 - 0.3125*x92
      =E= 0;

e2..  - x2 + x3 + x25 + x48 - x71 =E= 150;

e3..  - x2 + x4 + x26 + x49 - x72 =E= 350;

e4..  - x3 + x5 + x27 + x50 - x73 =E= 150;

e5..  - x3 + x6 + x28 + x51 - x74 =E= 350;

e6..  - x4 + x7 + x29 + x52 - x75 =E= 150;

e7..  - x4 + x8 + x30 + x53 - x76 =E= 350;

e8..  - x5 + x9 + x31 + x54 - x77 =E= -50;

e9..  - x5 + x10 + x32 + x55 - x78 =E= 100;

e10..  - x5 + x11 + x33 + x56 - x79 =E= 250;

e11..  - x6 + x12 + x34 + x57 - x80 =E= 100;

e12..  - x7 + x13 + x35 + x58 - x81 =E= 100;

e13..  - x8 + x14 + x36 + x59 - x82 =E= 100;

e14..  - x9 + x15 + x37 + x60 - x83 =E= 100;

e15..  - x10 + x16 + x38 + x61 - x84 =E= -50;

e16..  - x10 + x17 + x39 + x62 - x85 =E= 100;

e17..  - x10 + x18 + x40 + x63 - x86 =E= 250;

e18..  - x11 + x19 + x41 + x64 - x87 =E= 100;

e19..  - x12 + x20 + x42 + x65 - x88 =E= -50;

e20..  - x12 + x21 + x43 + x66 - x89 =E= 100;

e21..  - x12 + x22 + x44 + x67 - x90 =E= 250;

e22..  - x13 + x23 + x45 + x68 - x91 =E= 100;

e23..  - x14 + x24 + x46 + x69 - x92 =E= 100;

* set non-default bounds
x2.fx = 100;
x3.up = 250;
x4.up = 250;
x5.up = 250;
x6.up = 250;
x7.up = 250;
x8.up = 250;
x9.up = 250;
x10.up = 250;
x11.up = 250;
x12.up = 250;
x13.up = 250;
x14.up = 250;
x15.up = 250;
x16.up = 250;
x17.up = 250;
x18.up = 250;
x19.up = 250;
x20.up = 250;
x21.up = 250;
x22.up = 250;
x23.up = 250;
x24.up = 250;
x25.up = 200;
x26.up = 200;
x27.up = 200;
x28.up = 200;
x29.up = 200;
x30.up = 200;
x31.up = 200;
x32.up = 200;
x33.up = 200;
x34.up = 200;
x35.up = 200;
x36.up = 200;
x37.up = 200;
x38.up = 200;
x39.up = 200;
x40.up = 200;
x41.up = 200;
x42.up = 200;
x43.up = 200;
x44.up = 200;
x45.up = 200;
x46.up = 200;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x1;
