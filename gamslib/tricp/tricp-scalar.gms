*  QCP written by GAMS Convert at 12/13/18 11:43:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        191       55      136        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        170      170        0        0        0        0        0        0
*  FX      6        6        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1494      354     1140        0
*
*  Solve m using QCP minimizing x170;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170;

Positive Variables  x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37
          ,x38,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,x71,x72,x73,x74,x75,x76
          ,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87,x88,x89,x90,x91,x92,x93
          ,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103,x104,x105,x106,x107
          ,x108,x109,x110,x111,x112,x113,x114,x115,x116,x117,x118,x119,x120
          ,x121,x122,x123,x124,x125,x126,x127,x128,x129,x130,x131,x132,x133
          ,x134,x135,x136,x137,x138,x139,x140,x141,x142,x143,x144,x145,x146
          ,x147,x148,x149,x150,x151,x152,x153,x154,x155,x156,x157,x158,x159
          ,x160,x161,x162,x163,x164,x165,x166,x167,x168,x169;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154,e155
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168
          ,e169,e170,e171,e172,e173,e174,e175,e176,e177,e178,e179,e180,e181
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191;


e1..  - x61 - x62 - x63 - x64 - x65 - x66 - x67 - x68 - x69 - x70 - x71 - x72
      - x73 - x74 - x75 - x76 - x77 - x78 - x79 - x80 - x81 - x82 - x83 - x84
      - x85 - x86 - x87 - x88 - x89 - x90 - x91 - x92 - x93 - x94 - x95 - x96
      - x97 - x98 - x99 - x100 - x101 - x102 - x103 - x104 - x105 - x106 - x107
      - x108 - x109 - x110 - x111 - x112 - x113 - x114 - x115 - x116 - x117
      - x118 - x119 - x120 - x121 - x122 - x123 - x124 - x125 - x126 - x127
      - x128 - x129 - x130 - x131 - x132 - x133 - x134 - x135 - x136 - x137
      - x138 - x139 - x140 - x141 - x142 - x143 - x144 - x145 - x146 - x147
      - x148 - x149 - x150 - x151 - x152 - x153 - x154 - x155 - x156 - x157
      - x158 - x159 - x160 - x161 - x162 - x163 - x164 - x165 - x166 - x167
      - x168 - 100*x169 + x170 =E= 0;

e2.. sqr(x1 - x3) + sqr(x2 - x4) - sqr(x41 + x42) - x61 + x115 =E= 0;

e3.. sqr(x1 - x5) + sqr(x2 - x6) - sqr(x41 + x43) - x62 + x116 =E= 0;

e4.. sqr(x1 - x7) + sqr(x2 - x8) - sqr(x41 + x44) - x63 + x117 =E= 0;

e5.. sqr(x1 - x11) + sqr(x2 - x12) - sqr(x41 + x46) - x64 + x118 =E= 0;

e6.. sqr(x1 - x13) + sqr(x2 - x14) - sqr(x41 + x47) - x65 + x119 =E= 0;

e7.. sqr(x1 - x15) + sqr(x2 - x16) - sqr(x41 + x48) - x66 + x120 =E= 0;

e8.. sqr(x1 - x19) + sqr(x2 - x20) - sqr(x41 + x50) - x67 + x121 =E= 0;

e9.. sqr(x1 - x23) + sqr(x2 - x24) - sqr(x41 + x52) - x68 + x122 =E= 0;

e10.. sqr(x1 - x39) + sqr(x2 - x40) - sqr(x41 + x60) - x69 + x123 =E= 0;

e11.. sqr(x3 - x5) + sqr(x4 - x6) - sqr(x42 + x43) - x70 + x124 =E= 0;

e12.. sqr(x3 - x7) + sqr(x4 - x8) - sqr(x42 + x44) - x71 + x125 =E= 0;

e13.. sqr(x5 - x7) + sqr(x6 - x8) - sqr(x43 + x44) - x72 + x126 =E= 0;

e14.. sqr(x5 - x9) + sqr(x6 - x10) - sqr(x43 + x45) - x73 + x127 =E= 0;

e15.. sqr(x5 - x15) + sqr(x6 - x16) - sqr(x43 + x48) - x74 + x128 =E= 0;

e16.. sqr(x7 - x9) + sqr(x8 - x10) - sqr(x44 + x45) - x75 + x129 =E= 0;

e17.. sqr(x7 - x11) + sqr(x8 - x12) - sqr(x44 + x46) - x76 + x130 =E= 0;

e18.. sqr(x9 - x11) + sqr(x10 - x12) - sqr(x45 + x46) - x77 + x131 =E= 0;

e19.. sqr(x9 - x13) + sqr(x10 - x14) - sqr(x45 + x47) - x78 + x132 =E= 0;

e20.. sqr(x9 - x15) + sqr(x10 - x16) - sqr(x45 + x48) - x79 + x133 =E= 0;

e21.. sqr(x11 - x13) + sqr(x12 - x14) - sqr(x46 + x47) - x80 + x134 =E= 0;

e22.. sqr(x13 - x15) + sqr(x14 - x16) - sqr(x47 + x48) - x81 + x135 =E= 0;

e23.. sqr(x13 - x17) + sqr(x14 - x18) - sqr(x47 + x49) - x82 + x136 =E= 0;

e24.. sqr(x13 - x21) + sqr(x14 - x22) - sqr(x47 + x51) - x83 + x137 =E= 0;

e25.. sqr(x13 - x23) + sqr(x14 - x24) - sqr(x47 + x52) - x84 + x138 =E= 0;

e26.. sqr(x15 - x17) + sqr(x16 - x18) - sqr(x48 + x49) - x85 + x139 =E= 0;

e27.. sqr(x15 - x19) + sqr(x16 - x20) - sqr(x48 + x50) - x86 + x140 =E= 0;

e28.. sqr(x17 - x19) + sqr(x18 - x20) - sqr(x49 + x50) - x87 + x141 =E= 0;

e29.. sqr(x17 - x21) + sqr(x18 - x22) - sqr(x49 + x51) - x88 + x142 =E= 0;

e30.. sqr(x19 - x21) + sqr(x20 - x22) - sqr(x50 + x51) - x89 + x143 =E= 0;

e31.. sqr(x19 - x23) + sqr(x20 - x24) - sqr(x50 + x52) - x90 + x144 =E= 0;

e32.. sqr(x19 - x25) + sqr(x20 - x26) - sqr(x50 + x53) - x91 + x145 =E= 0;

e33.. sqr(x19 - x27) + sqr(x20 - x28) - sqr(x50 + x54) - x92 + x146 =E= 0;

e34.. sqr(x19 - x29) + sqr(x20 - x30) - sqr(x50 + x55) - x93 + x147 =E= 0;

e35.. sqr(x19 - x31) + sqr(x20 - x32) - sqr(x50 + x56) - x94 + x148 =E= 0;

e36.. sqr(x19 - x37) + sqr(x20 - x38) - sqr(x50 + x59) - x95 + x149 =E= 0;

e37.. sqr(x19 - x39) + sqr(x20 - x40) - sqr(x50 + x60) - x96 + x150 =E= 0;

e38.. sqr(x21 - x23) + sqr(x22 - x24) - sqr(x51 + x52) - x97 + x151 =E= 0;

e39.. sqr(x23 - x25) + sqr(x24 - x26) - sqr(x52 + x53) - x98 + x152 =E= 0;

e40.. sqr(x23 - x27) + sqr(x24 - x28) - sqr(x52 + x54) - x99 + x153 =E= 0;

e41.. sqr(x23 - x29) + sqr(x24 - x30) - sqr(x52 + x55) - x100 + x154 =E= 0;

e42.. sqr(x23 - x33) + sqr(x24 - x34) - sqr(x52 + x57) - x101 + x155 =E= 0;

e43.. sqr(x23 - x35) + sqr(x24 - x36) - sqr(x52 + x58) - x102 + x156 =E= 0;

e44.. sqr(x23 - x39) + sqr(x24 - x40) - sqr(x52 + x60) - x103 + x157 =E= 0;

e45.. sqr(x25 - x27) + sqr(x26 - x28) - sqr(x53 + x54) - x104 + x158 =E= 0;

e46.. sqr(x27 - x29) + sqr(x28 - x30) - sqr(x54 + x55) - x105 + x159 =E= 0;

e47.. sqr(x29 - x31) + sqr(x30 - x32) - sqr(x55 + x56) - x106 + x160 =E= 0;

e48.. sqr(x29 - x33) + sqr(x30 - x34) - sqr(x55 + x57) - x107 + x161 =E= 0;

e49.. sqr(x31 - x33) + sqr(x32 - x34) - sqr(x56 + x57) - x108 + x162 =E= 0;

e50.. sqr(x31 - x35) + sqr(x32 - x36) - sqr(x56 + x58) - x109 + x163 =E= 0;

e51.. sqr(x31 - x37) + sqr(x32 - x38) - sqr(x56 + x59) - x110 + x164 =E= 0;

e52.. sqr(x33 - x35) + sqr(x34 - x36) - sqr(x57 + x58) - x111 + x165 =E= 0;

e53.. sqr(x35 - x37) + sqr(x36 - x38) - sqr(x58 + x59) - x112 + x166 =E= 0;

e54.. sqr(x35 - x39) + sqr(x36 - x40) - sqr(x58 + x60) - x113 + x167 =E= 0;

e55.. sqr(x37 - x39) + sqr(x38 - x40) - sqr(x59 + x60) - x114 + x168 =E= 0;

e56.. sqr(x1 - x9) + sqr(x2 - x10) - sqr(x41 + x45) + x169 =G= 0;

e57.. sqr(x1 - x17) + sqr(x2 - x18) - sqr(x41 + x49) + x169 =G= 0;

e58.. sqr(x1 - x21) + sqr(x2 - x22) - sqr(x41 + x51) + x169 =G= 0;

e59.. sqr(x1 - x25) + sqr(x2 - x26) - sqr(x41 + x53) + x169 =G= 0;

e60.. sqr(x1 - x27) + sqr(x2 - x28) - sqr(x41 + x54) + x169 =G= 0;

e61.. sqr(x1 - x29) + sqr(x2 - x30) - sqr(x41 + x55) + x169 =G= 0;

e62.. sqr(x1 - x31) + sqr(x2 - x32) - sqr(x41 + x56) + x169 =G= 0;

e63.. sqr(x1 - x33) + sqr(x2 - x34) - sqr(x41 + x57) + x169 =G= 0;

e64.. sqr(x1 - x35) + sqr(x2 - x36) - sqr(x41 + x58) + x169 =G= 0;

e65.. sqr(x1 - x37) + sqr(x2 - x38) - sqr(x41 + x59) + x169 =G= 0;

e66.. sqr(x3 - x9) + sqr(x4 - x10) - sqr(x42 + x45) + x169 =G= 0;

e67.. sqr(x3 - x11) + sqr(x4 - x12) - sqr(x42 + x46) + x169 =G= 0;

e68.. sqr(x3 - x13) + sqr(x4 - x14) - sqr(x42 + x47) + x169 =G= 0;

e69.. sqr(x3 - x15) + sqr(x4 - x16) - sqr(x42 + x48) + x169 =G= 0;

e70.. sqr(x3 - x17) + sqr(x4 - x18) - sqr(x42 + x49) + x169 =G= 0;

e71.. sqr(x3 - x19) + sqr(x4 - x20) - sqr(x42 + x50) + x169 =G= 0;

e72.. sqr(x3 - x21) + sqr(x4 - x22) - sqr(x42 + x51) + x169 =G= 0;

e73.. sqr(x3 - x23) + sqr(x4 - x24) - sqr(x42 + x52) + x169 =G= 0;

e74.. sqr(x3 - x25) + sqr(x4 - x26) - sqr(x42 + x53) + x169 =G= 0;

e75.. sqr(x3 - x27) + sqr(x4 - x28) - sqr(x42 + x54) + x169 =G= 0;

e76.. sqr(x3 - x29) + sqr(x4 - x30) - sqr(x42 + x55) + x169 =G= 0;

e77.. sqr(x3 - x31) + sqr(x4 - x32) - sqr(x42 + x56) + x169 =G= 0;

e78.. sqr(x3 - x33) + sqr(x4 - x34) - sqr(x42 + x57) + x169 =G= 0;

e79.. sqr(x3 - x35) + sqr(x4 - x36) - sqr(x42 + x58) + x169 =G= 0;

e80.. sqr(x3 - x37) + sqr(x4 - x38) - sqr(x42 + x59) + x169 =G= 0;

e81.. sqr(x3 - x39) + sqr(x4 - x40) - sqr(x42 + x60) + x169 =G= 0;

e82.. sqr(x5 - x11) + sqr(x6 - x12) - sqr(x43 + x46) + x169 =G= 0;

e83.. sqr(x5 - x13) + sqr(x6 - x14) - sqr(x43 + x47) + x169 =G= 0;

e84.. sqr(x5 - x17) + sqr(x6 - x18) - sqr(x43 + x49) + x169 =G= 0;

e85.. sqr(x5 - x19) + sqr(x6 - x20) - sqr(x43 + x50) + x169 =G= 0;

e86.. sqr(x5 - x21) + sqr(x6 - x22) - sqr(x43 + x51) + x169 =G= 0;

e87.. sqr(x5 - x23) + sqr(x6 - x24) - sqr(x43 + x52) + x169 =G= 0;

e88.. sqr(x5 - x25) + sqr(x6 - x26) - sqr(x43 + x53) + x169 =G= 0;

e89.. sqr(x5 - x27) + sqr(x6 - x28) - sqr(x43 + x54) + x169 =G= 0;

e90.. sqr(x5 - x29) + sqr(x6 - x30) - sqr(x43 + x55) + x169 =G= 0;

e91.. sqr(x5 - x31) + sqr(x6 - x32) - sqr(x43 + x56) + x169 =G= 0;

e92.. sqr(x5 - x33) + sqr(x6 - x34) - sqr(x43 + x57) + x169 =G= 0;

e93.. sqr(x5 - x35) + sqr(x6 - x36) - sqr(x43 + x58) + x169 =G= 0;

e94.. sqr(x5 - x37) + sqr(x6 - x38) - sqr(x43 + x59) + x169 =G= 0;

e95.. sqr(x5 - x39) + sqr(x6 - x40) - sqr(x43 + x60) + x169 =G= 0;

e96.. sqr(x7 - x13) + sqr(x8 - x14) - sqr(x44 + x47) + x169 =G= 0;

e97.. sqr(x7 - x15) + sqr(x8 - x16) - sqr(x44 + x48) + x169 =G= 0;

e98.. sqr(x7 - x17) + sqr(x8 - x18) - sqr(x44 + x49) + x169 =G= 0;

e99.. sqr(x7 - x19) + sqr(x8 - x20) - sqr(x44 + x50) + x169 =G= 0;

e100.. sqr(x7 - x21) + sqr(x8 - x22) - sqr(x44 + x51) + x169 =G= 0;

e101.. sqr(x7 - x23) + sqr(x8 - x24) - sqr(x44 + x52) + x169 =G= 0;

e102.. sqr(x7 - x25) + sqr(x8 - x26) - sqr(x44 + x53) + x169 =G= 0;

e103.. sqr(x7 - x27) + sqr(x8 - x28) - sqr(x44 + x54) + x169 =G= 0;

e104.. sqr(x7 - x29) + sqr(x8 - x30) - sqr(x44 + x55) + x169 =G= 0;

e105.. sqr(x7 - x31) + sqr(x8 - x32) - sqr(x44 + x56) + x169 =G= 0;

e106.. sqr(x7 - x33) + sqr(x8 - x34) - sqr(x44 + x57) + x169 =G= 0;

e107.. sqr(x7 - x35) + sqr(x8 - x36) - sqr(x44 + x58) + x169 =G= 0;

e108.. sqr(x7 - x37) + sqr(x8 - x38) - sqr(x44 + x59) + x169 =G= 0;

e109.. sqr(x7 - x39) + sqr(x8 - x40) - sqr(x44 + x60) + x169 =G= 0;

e110.. sqr(x9 - x17) + sqr(x10 - x18) - sqr(x45 + x49) + x169 =G= 0;

e111.. sqr(x9 - x19) + sqr(x10 - x20) - sqr(x45 + x50) + x169 =G= 0;

e112.. sqr(x9 - x21) + sqr(x10 - x22) - sqr(x45 + x51) + x169 =G= 0;

e113.. sqr(x9 - x23) + sqr(x10 - x24) - sqr(x45 + x52) + x169 =G= 0;

e114.. sqr(x9 - x25) + sqr(x10 - x26) - sqr(x45 + x53) + x169 =G= 0;

e115.. sqr(x9 - x27) + sqr(x10 - x28) - sqr(x45 + x54) + x169 =G= 0;

e116.. sqr(x9 - x29) + sqr(x10 - x30) - sqr(x45 + x55) + x169 =G= 0;

e117.. sqr(x9 - x31) + sqr(x10 - x32) - sqr(x45 + x56) + x169 =G= 0;

e118.. sqr(x9 - x33) + sqr(x10 - x34) - sqr(x45 + x57) + x169 =G= 0;

e119.. sqr(x9 - x35) + sqr(x10 - x36) - sqr(x45 + x58) + x169 =G= 0;

e120.. sqr(x9 - x37) + sqr(x10 - x38) - sqr(x45 + x59) + x169 =G= 0;

e121.. sqr(x9 - x39) + sqr(x10 - x40) - sqr(x45 + x60) + x169 =G= 0;

e122.. sqr(x11 - x15) + sqr(x12 - x16) - sqr(x46 + x48) + x169 =G= 0;

e123.. sqr(x11 - x17) + sqr(x12 - x18) - sqr(x46 + x49) + x169 =G= 0;

e124.. sqr(x11 - x19) + sqr(x12 - x20) - sqr(x46 + x50) + x169 =G= 0;

e125.. sqr(x11 - x21) + sqr(x12 - x22) - sqr(x46 + x51) + x169 =G= 0;

e126.. sqr(x11 - x23) + sqr(x12 - x24) - sqr(x46 + x52) + x169 =G= 0;

e127.. sqr(x11 - x25) + sqr(x12 - x26) - sqr(x46 + x53) + x169 =G= 0;

e128.. sqr(x11 - x27) + sqr(x12 - x28) - sqr(x46 + x54) + x169 =G= 0;

e129.. sqr(x11 - x29) + sqr(x12 - x30) - sqr(x46 + x55) + x169 =G= 0;

e130.. sqr(x11 - x31) + sqr(x12 - x32) - sqr(x46 + x56) + x169 =G= 0;

e131.. sqr(x11 - x33) + sqr(x12 - x34) - sqr(x46 + x57) + x169 =G= 0;

e132.. sqr(x11 - x35) + sqr(x12 - x36) - sqr(x46 + x58) + x169 =G= 0;

e133.. sqr(x11 - x37) + sqr(x12 - x38) - sqr(x46 + x59) + x169 =G= 0;

e134.. sqr(x11 - x39) + sqr(x12 - x40) - sqr(x46 + x60) + x169 =G= 0;

e135.. sqr(x13 - x19) + sqr(x14 - x20) - sqr(x47 + x50) + x169 =G= 0;

e136.. sqr(x13 - x25) + sqr(x14 - x26) - sqr(x47 + x53) + x169 =G= 0;

e137.. sqr(x13 - x27) + sqr(x14 - x28) - sqr(x47 + x54) + x169 =G= 0;

e138.. sqr(x13 - x29) + sqr(x14 - x30) - sqr(x47 + x55) + x169 =G= 0;

e139.. sqr(x13 - x31) + sqr(x14 - x32) - sqr(x47 + x56) + x169 =G= 0;

e140.. sqr(x13 - x33) + sqr(x14 - x34) - sqr(x47 + x57) + x169 =G= 0;

e141.. sqr(x13 - x35) + sqr(x14 - x36) - sqr(x47 + x58) + x169 =G= 0;

e142.. sqr(x13 - x37) + sqr(x14 - x38) - sqr(x47 + x59) + x169 =G= 0;

e143.. sqr(x13 - x39) + sqr(x14 - x40) - sqr(x47 + x60) + x169 =G= 0;

e144.. sqr(x15 - x21) + sqr(x16 - x22) - sqr(x48 + x51) + x169 =G= 0;

e145.. sqr(x15 - x23) + sqr(x16 - x24) - sqr(x48 + x52) + x169 =G= 0;

e146.. sqr(x15 - x25) + sqr(x16 - x26) - sqr(x48 + x53) + x169 =G= 0;

e147.. sqr(x15 - x27) + sqr(x16 - x28) - sqr(x48 + x54) + x169 =G= 0;

e148.. sqr(x15 - x29) + sqr(x16 - x30) - sqr(x48 + x55) + x169 =G= 0;

e149.. sqr(x15 - x31) + sqr(x16 - x32) - sqr(x48 + x56) + x169 =G= 0;

e150.. sqr(x15 - x33) + sqr(x16 - x34) - sqr(x48 + x57) + x169 =G= 0;

e151.. sqr(x15 - x35) + sqr(x16 - x36) - sqr(x48 + x58) + x169 =G= 0;

e152.. sqr(x15 - x37) + sqr(x16 - x38) - sqr(x48 + x59) + x169 =G= 0;

e153.. sqr(x15 - x39) + sqr(x16 - x40) - sqr(x48 + x60) + x169 =G= 0;

e154.. sqr(x17 - x23) + sqr(x18 - x24) - sqr(x49 + x52) + x169 =G= 0;

e155.. sqr(x17 - x25) + sqr(x18 - x26) - sqr(x49 + x53) + x169 =G= 0;

e156.. sqr(x17 - x27) + sqr(x18 - x28) - sqr(x49 + x54) + x169 =G= 0;

e157.. sqr(x17 - x29) + sqr(x18 - x30) - sqr(x49 + x55) + x169 =G= 0;

e158.. sqr(x17 - x31) + sqr(x18 - x32) - sqr(x49 + x56) + x169 =G= 0;

e159.. sqr(x17 - x33) + sqr(x18 - x34) - sqr(x49 + x57) + x169 =G= 0;

e160.. sqr(x17 - x35) + sqr(x18 - x36) - sqr(x49 + x58) + x169 =G= 0;

e161.. sqr(x17 - x37) + sqr(x18 - x38) - sqr(x49 + x59) + x169 =G= 0;

e162.. sqr(x17 - x39) + sqr(x18 - x40) - sqr(x49 + x60) + x169 =G= 0;

e163.. sqr(x19 - x33) + sqr(x20 - x34) - sqr(x50 + x57) + x169 =G= 0;

e164.. sqr(x19 - x35) + sqr(x20 - x36) - sqr(x50 + x58) + x169 =G= 0;

e165.. sqr(x21 - x25) + sqr(x22 - x26) - sqr(x51 + x53) + x169 =G= 0;

e166.. sqr(x21 - x27) + sqr(x22 - x28) - sqr(x51 + x54) + x169 =G= 0;

e167.. sqr(x21 - x29) + sqr(x22 - x30) - sqr(x51 + x55) + x169 =G= 0;

e168.. sqr(x21 - x31) + sqr(x22 - x32) - sqr(x51 + x56) + x169 =G= 0;

e169.. sqr(x21 - x33) + sqr(x22 - x34) - sqr(x51 + x57) + x169 =G= 0;

e170.. sqr(x21 - x35) + sqr(x22 - x36) - sqr(x51 + x58) + x169 =G= 0;

e171.. sqr(x21 - x37) + sqr(x22 - x38) - sqr(x51 + x59) + x169 =G= 0;

e172.. sqr(x21 - x39) + sqr(x22 - x40) - sqr(x51 + x60) + x169 =G= 0;

e173.. sqr(x23 - x31) + sqr(x24 - x32) - sqr(x52 + x56) + x169 =G= 0;

e174.. sqr(x23 - x37) + sqr(x24 - x38) - sqr(x52 + x59) + x169 =G= 0;

e175.. sqr(x25 - x29) + sqr(x26 - x30) - sqr(x53 + x55) + x169 =G= 0;

e176.. sqr(x25 - x31) + sqr(x26 - x32) - sqr(x53 + x56) + x169 =G= 0;

e177.. sqr(x25 - x33) + sqr(x26 - x34) - sqr(x53 + x57) + x169 =G= 0;

e178.. sqr(x25 - x35) + sqr(x26 - x36) - sqr(x53 + x58) + x169 =G= 0;

e179.. sqr(x25 - x37) + sqr(x26 - x38) - sqr(x53 + x59) + x169 =G= 0;

e180.. sqr(x25 - x39) + sqr(x26 - x40) - sqr(x53 + x60) + x169 =G= 0;

e181.. sqr(x27 - x31) + sqr(x28 - x32) - sqr(x54 + x56) + x169 =G= 0;

e182.. sqr(x27 - x33) + sqr(x28 - x34) - sqr(x54 + x57) + x169 =G= 0;

e183.. sqr(x27 - x35) + sqr(x28 - x36) - sqr(x54 + x58) + x169 =G= 0;

e184.. sqr(x27 - x37) + sqr(x28 - x38) - sqr(x54 + x59) + x169 =G= 0;

e185.. sqr(x27 - x39) + sqr(x28 - x40) - sqr(x54 + x60) + x169 =G= 0;

e186.. sqr(x29 - x35) + sqr(x30 - x36) - sqr(x55 + x58) + x169 =G= 0;

e187.. sqr(x29 - x37) + sqr(x30 - x38) - sqr(x55 + x59) + x169 =G= 0;

e188.. sqr(x29 - x39) + sqr(x30 - x40) - sqr(x55 + x60) + x169 =G= 0;

e189.. sqr(x31 - x39) + sqr(x32 - x40) - sqr(x56 + x60) + x169 =G= 0;

e190.. sqr(x33 - x37) + sqr(x34 - x38) - sqr(x57 + x59) + x169 =G= 0;

e191.. sqr(x33 - x39) + sqr(x34 - x40) - sqr(x57 + x60) + x169 =G= 0;

* set non-default bounds
x1.fx = 1000;
x2.fx = 1000;
x3.up = 2000;
x4.up = 2000;
x5.up = 2000;
x6.up = 2000;
x7.up = 2000;
x8.up = 2000;
x9.up = 2000;
x10.up = 2000;
x11.up = 2000;
x12.up = 2000;
x13.up = 2000;
x14.up = 2000;
x15.up = 2000;
x16.up = 2000;
x17.up = 2000;
x18.up = 2000;
x19.fx = 1500;
x20.fx = 2000;
x21.up = 2000;
x22.up = 2000;
x23.up = 2000;
x24.up = 2000;
x25.up = 2000;
x26.up = 2000;
x27.up = 2000;
x28.up = 2000;
x29.up = 2000;
x30.up = 2000;
x31.up = 2000;
x32.up = 2000;
x33.up = 2000;
x34.up = 2000;
x35.up = 2000;
x36.up = 2000;
x37.up = 2000;
x38.up = 2000;
x39.fx = 2000;
x40.fx = 1000;
x41.lo = 0.1;
x42.lo = 0.1;
x43.lo = 0.1;
x44.lo = 0.1;
x45.lo = 0.1;
x46.lo = 0.1;
x47.lo = 0.1;
x48.lo = 0.1;
x49.lo = 0.1;
x50.lo = 0.1;
x51.lo = 0.1;
x52.lo = 0.1;
x53.lo = 0.1;
x54.lo = 0.1;
x55.lo = 0.1;
x56.lo = 0.1;
x57.lo = 0.1;
x58.lo = 0.1;
x59.lo = 0.1;
x60.lo = 0.1;

* set non-default levels
x3.l = 1100.750712;
x4.l = 602.275808;
x5.l = 584.424234;
x6.l = 448.105734;
x7.l = 699.661008;
x8.l = 1712.540694;
x9.l = 134.227446;
x10.l = 1000.421338;
x11.l = 1996.235254;
x12.l = 1157.466756;
x13.l = 1982.266078;
x14.l = 1524.500934;
x15.l = 261.384966;
x16.l = 1279.437518;
x17.l = 319.035728;
x18.l = 500.161066;
x21.l = 719.400532;
x22.l = 702.882736;
x23.l = 262.98318;
x24.l = 300.203576;
x25.l = 1178.2273;
x26.l = 1661.785624;
x27.l = 461.631476;
x28.l = 1331.46892;
x29.l = 1551.715212;
x30.l = 607.316954;
x31.l = 220.984582;
x32.l = 1004.769732;
x33.l = 320.345524;
x34.l = 1744.924622;
x35.l = 530.22909;
x36.l = 571.628644;
x37.l = 1187.911844;
x38.l = 1445.438142;
x41.l = 100;
x42.l = 100;
x43.l = 100;
x44.l = 100;
x45.l = 100;
x46.l = 100;
x47.l = 100;
x48.l = 100;
x49.l = 100;
x50.l = 100;
x51.l = 100;
x52.l = 100;
x53.l = 100;
x54.l = 100;
x55.l = 100;
x56.l = 100;
x57.l = 100;
x58.l = 100;
x59.l = 100;
x60.l = 100;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 1E-6;
Solve m using QCP minimizing x170;
