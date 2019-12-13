*  MIP written by GAMS Convert at 12/13/18 10:24:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         89       53        4       32        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        118       77       41        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        384      384        0        0
*
*  Solve m using MIP minimizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,x86,x87
          ,x88,x89,b90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,b103
          ,b104,b105,b106,b107,b108,b109,b110,x111,x112,x113,x114,x115,x116
          ,x117,x118;

Positive Variables  x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27
          ,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44
          ,x45,x46,x47,x48,x49,x50,x51,x52,x53,x86,x87,x88,x89,x111,x112,x113
          ,x114,x115,x116,x117,x118;

Binary Variables  b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68
          ,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b90,b103,b104,b105,b106,b107,b108,b109,b110;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89;


e1..    x1 - x2 - 0.970873786407767*x3 - 0.942595909133754*x4
      - 0.91514165935316*x5 - x6 - 0.970873786407767*x7 - 0.942595909133754*x8
      - 0.91514165935316*x9 - x10 - 0.970873786407767*x11
      - 0.942595909133754*x12 - 0.91514165935316*x13 =E= 0;

e2..    x2 - 0.1*x18 - 3.5*x95 - 4.1*x96 - 10*b103 - 16*b104 =E= 0;

e3..    x3 - 0.1*x19 - 3.5*x97 - 4.1*x98 - 10*b105 - 16*b106 =E= 0;

e4..    x4 - 0.1*x20 - 3.5*x99 - 4.1*x100 - 10*b107 - 16*b108 =E= 0;

e5..    x5 - 0.1*x21 - 3.5*x101 - 4.1*x102 - 10*b109 - 16*b110 =E= 0;

e6..    x18 - 1000*x22 - 1000*x23 - 3000*x30 - 3000*x31 - 4500*x38 - 4500*x39
      - 5800*x46 - 5800*x47 =E= 0;

e7..    x19 - 1000*x24 - 1000*x25 - 3000*x32 - 3000*x33 - 4500*x40 - 4500*x41
      - 5800*x48 - 5800*x49 =E= 0;

e8..    x20 - 1000*x26 - 1000*x27 - 3000*x34 - 3000*x35 - 4500*x42 - 4500*x43
      - 5800*x50 - 5800*x51 =E= 0;

e9..    x21 - 1000*x28 - 1000*x29 - 3000*x36 - 3000*x37 - 4500*x44 - 4500*x45
      - 5800*x52 - 5800*x53 =E= 0;

e10..  - 20*x22 - 40*x30 - 50*x38 - 60*x46 + x95 =E= 0;

e11..  - 20*x23 - 40*x31 - 50*x39 - 60*x47 + x96 =E= 0;

e12..  - 20*x24 - 40*x32 - 50*x40 - 60*x48 + x97 =E= 0;

e13..  - 20*x25 - 40*x33 - 50*x41 - 60*x49 + x98 =E= 0;

e14..  - 20*x26 - 40*x34 - 50*x42 - 60*x50 + x99 =E= 0;

e15..  - 20*x27 - 40*x35 - 50*x43 - 60*x51 + x100 =E= 0;

e16..  - 20*x28 - 40*x36 - 50*x44 - 60*x52 + x101 =E= 0;

e17..  - 20*x29 - 40*x37 - 50*x45 - 60*x53 + x102 =E= 0;

e18..    x22 + x30 + x38 + x46 - b103 =E= 0;

e19..    x23 + x31 + x39 + x47 - b104 =E= 0;

e20..    x24 + x32 + x40 + x48 - b105 =E= 0;

e21..    x25 + x33 + x41 + x49 - b106 =E= 0;

e22..    x26 + x34 + x42 + x50 - b107 =E= 0;

e23..    x27 + x35 + x43 + x51 - b108 =E= 0;

e24..    x28 + x36 + x44 + x52 - b109 =E= 0;

e25..    x29 + x37 + x45 + x53 - b110 =E= 0;

e26..    x6 - 0.001*x14 - 15*b90 =E= 0;

e27..    x7 - 0.001*x15 =E= 0;

e28..    x8 - 0.001*x16 =E= 0;

e29..    x9 - 0.001*x17 =E= 0;

e30..  - x18 + x86 =E= 0;

e31..  - x19 - x86 + x87 =E= 0;

e32..  - x20 - x87 + x88 =E= 0;

e33..  - x21 - x88 + x89 =E= -24000;

e34..    x14 - 2*x86 + 48000*b90 =G= 0;

e35..    x15 - 2*x87 + 48000*b90 =G= 0;

e36..    x16 - 2*x88 + 48000*b90 =G= 0;

e37..    x17 - 2*x89 + 48000*b90 =G= 0;

e38..    x10 - 0.9*x111 - 0.15*x115 =E= 0;

e39..    x11 - 0.9*x112 - 0.15*x116 =E= 0;

e40..    x12 - 0.9*x113 - 0.15*x117 =E= 0;

e41..    x13 - 0.9*x114 - 0.15*x118 =E= 0;

e42..    x91 - x95 - x96 =E= 0;

e43..    x92 - x97 - x98 =E= 0;

e44..    x93 - x99 - x100 =E= 0;

e45..    x94 - x101 - x102 =E= 0;

e46..    x91 - x111 + x115 =E= 84;

e47..  - x91 + x92 - x112 + x116 =E= 0;

e48..  - x92 + x93 - x113 + x117 =E= 0;

e49..  - x93 + x94 - x114 + x118 =E= 0;

e50..    b54 + b62 + b70 + b78 =E= 1;

e51..    b55 + b63 + b71 + b79 =E= 1;

e52..    b56 + b64 + b72 + b80 =E= 1;

e53..    b57 + b65 + b73 + b81 =E= 1;

e54..    b58 + b66 + b74 + b82 =E= 1;

e55..    b59 + b67 + b75 + b83 =E= 1;

e56..    b60 + b68 + b76 + b84 =E= 1;

e57..    b61 + b69 + b77 + b85 =E= 1;

e58..    x22 - b54 =L= 0;

e59..    x23 - b55 =L= 0;

e60..    x24 - b56 =L= 0;

e61..    x25 - b57 =L= 0;

e62..    x26 - b58 =L= 0;

e63..    x27 - b59 =L= 0;

e64..    x28 - b60 =L= 0;

e65..    x29 - b61 =L= 0;

e66..    x22 + x30 - b54 - b62 =L= 0;

e67..    x23 + x31 - b55 - b63 =L= 0;

e68..    x24 + x32 - b56 - b64 =L= 0;

e69..    x25 + x33 - b57 - b65 =L= 0;

e70..    x26 + x34 - b58 - b66 =L= 0;

e71..    x27 + x35 - b59 - b67 =L= 0;

e72..    x28 + x36 - b60 - b68 =L= 0;

e73..    x29 + x37 - b61 - b69 =L= 0;

e74..    x30 + x38 - b54 - b62 - b70 =L= 0;

e75..    x31 + x39 - b55 - b63 - b71 =L= 0;

e76..    x32 + x40 - b56 - b64 - b72 =L= 0;

e77..    x33 + x41 - b57 - b65 - b73 =L= 0;

e78..    x34 + x42 - b58 - b66 - b74 =L= 0;

e79..    x35 + x43 - b59 - b67 - b75 =L= 0;

e80..    x36 + x44 - b60 - b68 - b76 =L= 0;

e81..    x37 + x45 - b61 - b69 - b77 =L= 0;

e82..    x38 + x46 - b62 - b70 - b78 =L= 0;

e83..    x39 + x47 - b63 - b71 - b79 =L= 0;

e84..    x40 + x48 - b64 - b72 - b80 =L= 0;

e85..    x41 + x49 - b65 - b73 - b81 =L= 0;

e86..    x42 + x50 - b66 - b74 - b82 =L= 0;

e87..    x43 + x51 - b67 - b75 - b83 =L= 0;

e88..    x44 + x52 - b68 - b76 - b84 =L= 0;

e89..    x45 + x53 - b69 - b77 - b85 =L= 0;

* set non-default bounds
x21.up = 9280;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MIP minimizing x1;