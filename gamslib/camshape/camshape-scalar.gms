*  NLP written by GAMS Convert at 12/13/18 11:22:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        201      100        0      101        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        200      200        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        697      398      299        0
*
*  Solve m using NLP maximizing x200;


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
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200;

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
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192,e193,e194
          ,e195,e196,e197,e198,e199,e200,e201;


e1..  - 0.0314159265358979*x1 - 0.0314159265358979*x2 - 0.0314159265358979*x3
      - 0.0314159265358979*x4 - 0.0314159265358979*x5 - 0.0314159265358979*x6
      - 0.0314159265358979*x7 - 0.0314159265358979*x8 - 0.0314159265358979*x9
      - 0.0314159265358979*x10 - 0.0314159265358979*x11
      - 0.0314159265358979*x12 - 0.0314159265358979*x13
      - 0.0314159265358979*x14 - 0.0314159265358979*x15
      - 0.0314159265358979*x16 - 0.0314159265358979*x17
      - 0.0314159265358979*x18 - 0.0314159265358979*x19
      - 0.0314159265358979*x20 - 0.0314159265358979*x21
      - 0.0314159265358979*x22 - 0.0314159265358979*x23
      - 0.0314159265358979*x24 - 0.0314159265358979*x25
      - 0.0314159265358979*x26 - 0.0314159265358979*x27
      - 0.0314159265358979*x28 - 0.0314159265358979*x29
      - 0.0314159265358979*x30 - 0.0314159265358979*x31
      - 0.0314159265358979*x32 - 0.0314159265358979*x33
      - 0.0314159265358979*x34 - 0.0314159265358979*x35
      - 0.0314159265358979*x36 - 0.0314159265358979*x37
      - 0.0314159265358979*x38 - 0.0314159265358979*x39
      - 0.0314159265358979*x40 - 0.0314159265358979*x41
      - 0.0314159265358979*x42 - 0.0314159265358979*x43
      - 0.0314159265358979*x44 - 0.0314159265358979*x45
      - 0.0314159265358979*x46 - 0.0314159265358979*x47
      - 0.0314159265358979*x48 - 0.0314159265358979*x49
      - 0.0314159265358979*x50 - 0.0314159265358979*x51
      - 0.0314159265358979*x52 - 0.0314159265358979*x53
      - 0.0314159265358979*x54 - 0.0314159265358979*x55
      - 0.0314159265358979*x56 - 0.0314159265358979*x57
      - 0.0314159265358979*x58 - 0.0314159265358979*x59
      - 0.0314159265358979*x60 - 0.0314159265358979*x61
      - 0.0314159265358979*x62 - 0.0314159265358979*x63
      - 0.0314159265358979*x64 - 0.0314159265358979*x65
      - 0.0314159265358979*x66 - 0.0314159265358979*x67
      - 0.0314159265358979*x68 - 0.0314159265358979*x69
      - 0.0314159265358979*x70 - 0.0314159265358979*x71
      - 0.0314159265358979*x72 - 0.0314159265358979*x73
      - 0.0314159265358979*x74 - 0.0314159265358979*x75
      - 0.0314159265358979*x76 - 0.0314159265358979*x77
      - 0.0314159265358979*x78 - 0.0314159265358979*x79
      - 0.0314159265358979*x80 - 0.0314159265358979*x81
      - 0.0314159265358979*x82 - 0.0314159265358979*x83
      - 0.0314159265358979*x84 - 0.0314159265358979*x85
      - 0.0314159265358979*x86 - 0.0314159265358979*x87
      - 0.0314159265358979*x88 - 0.0314159265358979*x89
      - 0.0314159265358979*x90 - 0.0314159265358979*x91
      - 0.0314159265358979*x92 - 0.0314159265358979*x93
      - 0.0314159265358979*x94 - 0.0314159265358979*x95
      - 0.0314159265358979*x96 - 0.0314159265358979*x97
      - 0.0314159265358979*x98 - 0.0314159265358979*x99
      - 0.0314159265358979*x100 + x200 =E= 0;

e2.. (-x1*x2) - x2*x3 + 1.99984519984971*x1*x3 =L= 0;

e3.. (-x2*x3) - x3*x4 + 1.99984519984971*x2*x4 =L= 0;

e4.. (-x3*x4) - x4*x5 + 1.99984519984971*x3*x5 =L= 0;

e5.. (-x4*x5) - x5*x6 + 1.99984519984971*x4*x6 =L= 0;

e6.. (-x5*x6) - x6*x7 + 1.99984519984971*x5*x7 =L= 0;

e7.. (-x6*x7) - x7*x8 + 1.99984519984971*x6*x8 =L= 0;

e8.. (-x7*x8) - x8*x9 + 1.99984519984971*x7*x9 =L= 0;

e9.. (-x8*x9) - x9*x10 + 1.99984519984971*x8*x10 =L= 0;

e10.. (-x9*x10) - x10*x11 + 1.99984519984971*x9*x11 =L= 0;

e11.. (-x10*x11) - x11*x12 + 1.99984519984971*x10*x12 =L= 0;

e12.. (-x11*x12) - x12*x13 + 1.99984519984971*x11*x13 =L= 0;

e13.. (-x12*x13) - x13*x14 + 1.99984519984971*x12*x14 =L= 0;

e14.. (-x13*x14) - x14*x15 + 1.99984519984971*x13*x15 =L= 0;

e15.. (-x14*x15) - x15*x16 + 1.99984519984971*x14*x16 =L= 0;

e16.. (-x15*x16) - x16*x17 + 1.99984519984971*x15*x17 =L= 0;

e17.. (-x16*x17) - x17*x18 + 1.99984519984971*x16*x18 =L= 0;

e18.. (-x17*x18) - x18*x19 + 1.99984519984971*x17*x19 =L= 0;

e19.. (-x18*x19) - x19*x20 + 1.99984519984971*x18*x20 =L= 0;

e20.. (-x19*x20) - x20*x21 + 1.99984519984971*x19*x21 =L= 0;

e21.. (-x20*x21) - x21*x22 + 1.99984519984971*x20*x22 =L= 0;

e22.. (-x21*x22) - x22*x23 + 1.99984519984971*x21*x23 =L= 0;

e23.. (-x22*x23) - x23*x24 + 1.99984519984971*x22*x24 =L= 0;

e24.. (-x23*x24) - x24*x25 + 1.99984519984971*x23*x25 =L= 0;

e25.. (-x24*x25) - x25*x26 + 1.99984519984971*x24*x26 =L= 0;

e26.. (-x25*x26) - x26*x27 + 1.99984519984971*x25*x27 =L= 0;

e27.. (-x26*x27) - x27*x28 + 1.99984519984971*x26*x28 =L= 0;

e28.. (-x27*x28) - x28*x29 + 1.99984519984971*x27*x29 =L= 0;

e29.. (-x28*x29) - x29*x30 + 1.99984519984971*x28*x30 =L= 0;

e30.. (-x29*x30) - x30*x31 + 1.99984519984971*x29*x31 =L= 0;

e31.. (-x30*x31) - x31*x32 + 1.99984519984971*x30*x32 =L= 0;

e32.. (-x31*x32) - x32*x33 + 1.99984519984971*x31*x33 =L= 0;

e33.. (-x32*x33) - x33*x34 + 1.99984519984971*x32*x34 =L= 0;

e34.. (-x33*x34) - x34*x35 + 1.99984519984971*x33*x35 =L= 0;

e35.. (-x34*x35) - x35*x36 + 1.99984519984971*x34*x36 =L= 0;

e36.. (-x35*x36) - x36*x37 + 1.99984519984971*x35*x37 =L= 0;

e37.. (-x36*x37) - x37*x38 + 1.99984519984971*x36*x38 =L= 0;

e38.. (-x37*x38) - x38*x39 + 1.99984519984971*x37*x39 =L= 0;

e39.. (-x38*x39) - x39*x40 + 1.99984519984971*x38*x40 =L= 0;

e40.. (-x39*x40) - x40*x41 + 1.99984519984971*x39*x41 =L= 0;

e41.. (-x40*x41) - x41*x42 + 1.99984519984971*x40*x42 =L= 0;

e42.. (-x41*x42) - x42*x43 + 1.99984519984971*x41*x43 =L= 0;

e43.. (-x42*x43) - x43*x44 + 1.99984519984971*x42*x44 =L= 0;

e44.. (-x43*x44) - x44*x45 + 1.99984519984971*x43*x45 =L= 0;

e45.. (-x44*x45) - x45*x46 + 1.99984519984971*x44*x46 =L= 0;

e46.. (-x45*x46) - x46*x47 + 1.99984519984971*x45*x47 =L= 0;

e47.. (-x46*x47) - x47*x48 + 1.99984519984971*x46*x48 =L= 0;

e48.. (-x47*x48) - x48*x49 + 1.99984519984971*x47*x49 =L= 0;

e49.. (-x48*x49) - x49*x50 + 1.99984519984971*x48*x50 =L= 0;

e50.. (-x49*x50) - x50*x51 + 1.99984519984971*x49*x51 =L= 0;

e51.. (-x50*x51) - x51*x52 + 1.99984519984971*x50*x52 =L= 0;

e52.. (-x51*x52) - x52*x53 + 1.99984519984971*x51*x53 =L= 0;

e53.. (-x52*x53) - x53*x54 + 1.99984519984971*x52*x54 =L= 0;

e54.. (-x53*x54) - x54*x55 + 1.99984519984971*x53*x55 =L= 0;

e55.. (-x54*x55) - x55*x56 + 1.99984519984971*x54*x56 =L= 0;

e56.. (-x55*x56) - x56*x57 + 1.99984519984971*x55*x57 =L= 0;

e57.. (-x56*x57) - x57*x58 + 1.99984519984971*x56*x58 =L= 0;

e58.. (-x57*x58) - x58*x59 + 1.99984519984971*x57*x59 =L= 0;

e59.. (-x58*x59) - x59*x60 + 1.99984519984971*x58*x60 =L= 0;

e60.. (-x59*x60) - x60*x61 + 1.99984519984971*x59*x61 =L= 0;

e61.. (-x60*x61) - x61*x62 + 1.99984519984971*x60*x62 =L= 0;

e62.. (-x61*x62) - x62*x63 + 1.99984519984971*x61*x63 =L= 0;

e63.. (-x62*x63) - x63*x64 + 1.99984519984971*x62*x64 =L= 0;

e64.. (-x63*x64) - x64*x65 + 1.99984519984971*x63*x65 =L= 0;

e65.. (-x64*x65) - x65*x66 + 1.99984519984971*x64*x66 =L= 0;

e66.. (-x65*x66) - x66*x67 + 1.99984519984971*x65*x67 =L= 0;

e67.. (-x66*x67) - x67*x68 + 1.99984519984971*x66*x68 =L= 0;

e68.. (-x67*x68) - x68*x69 + 1.99984519984971*x67*x69 =L= 0;

e69.. (-x68*x69) - x69*x70 + 1.99984519984971*x68*x70 =L= 0;

e70.. (-x69*x70) - x70*x71 + 1.99984519984971*x69*x71 =L= 0;

e71.. (-x70*x71) - x71*x72 + 1.99984519984971*x70*x72 =L= 0;

e72.. (-x71*x72) - x72*x73 + 1.99984519984971*x71*x73 =L= 0;

e73.. (-x72*x73) - x73*x74 + 1.99984519984971*x72*x74 =L= 0;

e74.. (-x73*x74) - x74*x75 + 1.99984519984971*x73*x75 =L= 0;

e75.. (-x74*x75) - x75*x76 + 1.99984519984971*x74*x76 =L= 0;

e76.. (-x75*x76) - x76*x77 + 1.99984519984971*x75*x77 =L= 0;

e77.. (-x76*x77) - x77*x78 + 1.99984519984971*x76*x78 =L= 0;

e78.. (-x77*x78) - x78*x79 + 1.99984519984971*x77*x79 =L= 0;

e79.. (-x78*x79) - x79*x80 + 1.99984519984971*x78*x80 =L= 0;

e80.. (-x79*x80) - x80*x81 + 1.99984519984971*x79*x81 =L= 0;

e81.. (-x80*x81) - x81*x82 + 1.99984519984971*x80*x82 =L= 0;

e82.. (-x81*x82) - x82*x83 + 1.99984519984971*x81*x83 =L= 0;

e83.. (-x82*x83) - x83*x84 + 1.99984519984971*x82*x84 =L= 0;

e84.. (-x83*x84) - x84*x85 + 1.99984519984971*x83*x85 =L= 0;

e85.. (-x84*x85) - x85*x86 + 1.99984519984971*x84*x86 =L= 0;

e86.. (-x85*x86) - x86*x87 + 1.99984519984971*x85*x87 =L= 0;

e87.. (-x86*x87) - x87*x88 + 1.99984519984971*x86*x88 =L= 0;

e88.. (-x87*x88) - x88*x89 + 1.99984519984971*x87*x89 =L= 0;

e89.. (-x88*x89) - x89*x90 + 1.99984519984971*x88*x90 =L= 0;

e90.. (-x89*x90) - x90*x91 + 1.99984519984971*x89*x91 =L= 0;

e91.. (-x90*x91) - x91*x92 + 1.99984519984971*x90*x92 =L= 0;

e92.. (-x91*x92) - x92*x93 + 1.99984519984971*x91*x93 =L= 0;

e93.. (-x92*x93) - x93*x94 + 1.99984519984971*x92*x94 =L= 0;

e94.. (-x93*x94) - x94*x95 + 1.99984519984971*x93*x95 =L= 0;

e95.. (-x94*x95) - x95*x96 + 1.99984519984971*x94*x96 =L= 0;

e96.. (-x95*x96) - x96*x97 + 1.99984519984971*x95*x97 =L= 0;

e97.. (-x96*x97) - x97*x98 + 1.99984519984971*x96*x98 =L= 0;

e98.. (-x97*x98) - x98*x99 + 1.99984519984971*x97*x99 =L= 0;

e99.. (-x98*x99) - x99*x100 + 1.99984519984971*x98*x100 =L= 0;

e100.. (-x1*x2) - x1 + 1.99984519984971*x2 =L= 0;

e101.. (-x99*x100) - 2*x100 + 3.99969039969942*x99 =L= 0;

e102.. 1.99984519984971*sqr(x100) - 4*x100 =L= 0;

e103..    x1 - x2 + x101 =E= 0;

e104..    x2 - x3 + x102 =E= 0;

e105..    x3 - x4 + x103 =E= 0;

e106..    x4 - x5 + x104 =E= 0;

e107..    x5 - x6 + x105 =E= 0;

e108..    x6 - x7 + x106 =E= 0;

e109..    x7 - x8 + x107 =E= 0;

e110..    x8 - x9 + x108 =E= 0;

e111..    x9 - x10 + x109 =E= 0;

e112..    x10 - x11 + x110 =E= 0;

e113..    x11 - x12 + x111 =E= 0;

e114..    x12 - x13 + x112 =E= 0;

e115..    x13 - x14 + x113 =E= 0;

e116..    x14 - x15 + x114 =E= 0;

e117..    x15 - x16 + x115 =E= 0;

e118..    x16 - x17 + x116 =E= 0;

e119..    x17 - x18 + x117 =E= 0;

e120..    x18 - x19 + x118 =E= 0;

e121..    x19 - x20 + x119 =E= 0;

e122..    x20 - x21 + x120 =E= 0;

e123..    x21 - x22 + x121 =E= 0;

e124..    x22 - x23 + x122 =E= 0;

e125..    x23 - x24 + x123 =E= 0;

e126..    x24 - x25 + x124 =E= 0;

e127..    x25 - x26 + x125 =E= 0;

e128..    x26 - x27 + x126 =E= 0;

e129..    x27 - x28 + x127 =E= 0;

e130..    x28 - x29 + x128 =E= 0;

e131..    x29 - x30 + x129 =E= 0;

e132..    x30 - x31 + x130 =E= 0;

e133..    x31 - x32 + x131 =E= 0;

e134..    x32 - x33 + x132 =E= 0;

e135..    x33 - x34 + x133 =E= 0;

e136..    x34 - x35 + x134 =E= 0;

e137..    x35 - x36 + x135 =E= 0;

e138..    x36 - x37 + x136 =E= 0;

e139..    x37 - x38 + x137 =E= 0;

e140..    x38 - x39 + x138 =E= 0;

e141..    x39 - x40 + x139 =E= 0;

e142..    x40 - x41 + x140 =E= 0;

e143..    x41 - x42 + x141 =E= 0;

e144..    x42 - x43 + x142 =E= 0;

e145..    x43 - x44 + x143 =E= 0;

e146..    x44 - x45 + x144 =E= 0;

e147..    x45 - x46 + x145 =E= 0;

e148..    x46 - x47 + x146 =E= 0;

e149..    x47 - x48 + x147 =E= 0;

e150..    x48 - x49 + x148 =E= 0;

e151..    x49 - x50 + x149 =E= 0;

e152..    x50 - x51 + x150 =E= 0;

e153..    x51 - x52 + x151 =E= 0;

e154..    x52 - x53 + x152 =E= 0;

e155..    x53 - x54 + x153 =E= 0;

e156..    x54 - x55 + x154 =E= 0;

e157..    x55 - x56 + x155 =E= 0;

e158..    x56 - x57 + x156 =E= 0;

e159..    x57 - x58 + x157 =E= 0;

e160..    x58 - x59 + x158 =E= 0;

e161..    x59 - x60 + x159 =E= 0;

e162..    x60 - x61 + x160 =E= 0;

e163..    x61 - x62 + x161 =E= 0;

e164..    x62 - x63 + x162 =E= 0;

e165..    x63 - x64 + x163 =E= 0;

e166..    x64 - x65 + x164 =E= 0;

e167..    x65 - x66 + x165 =E= 0;

e168..    x66 - x67 + x166 =E= 0;

e169..    x67 - x68 + x167 =E= 0;

e170..    x68 - x69 + x168 =E= 0;

e171..    x69 - x70 + x169 =E= 0;

e172..    x70 - x71 + x170 =E= 0;

e173..    x71 - x72 + x171 =E= 0;

e174..    x72 - x73 + x172 =E= 0;

e175..    x73 - x74 + x173 =E= 0;

e176..    x74 - x75 + x174 =E= 0;

e177..    x75 - x76 + x175 =E= 0;

e178..    x76 - x77 + x176 =E= 0;

e179..    x77 - x78 + x177 =E= 0;

e180..    x78 - x79 + x178 =E= 0;

e181..    x79 - x80 + x179 =E= 0;

e182..    x80 - x81 + x180 =E= 0;

e183..    x81 - x82 + x181 =E= 0;

e184..    x82 - x83 + x182 =E= 0;

e185..    x83 - x84 + x183 =E= 0;

e186..    x84 - x85 + x184 =E= 0;

e187..    x85 - x86 + x185 =E= 0;

e188..    x86 - x87 + x186 =E= 0;

e189..    x87 - x88 + x187 =E= 0;

e190..    x88 - x89 + x188 =E= 0;

e191..    x89 - x90 + x189 =E= 0;

e192..    x90 - x91 + x190 =E= 0;

e193..    x91 - x92 + x191 =E= 0;

e194..    x92 - x93 + x192 =E= 0;

e195..    x93 - x94 + x193 =E= 0;

e196..    x94 - x95 + x194 =E= 0;

e197..    x95 - x96 + x195 =E= 0;

e198..    x96 - x97 + x196 =E= 0;

e199..    x97 - x98 + x197 =E= 0;

e200..    x98 - x99 + x198 =E= 0;

e201..    x99 - x100 + x199 =E= 0;

* set non-default bounds
x1.lo = 1; x1.up = 1.00015482411709;
x2.lo = 1; x2.up = 2;
x3.lo = 1; x3.up = 2;
x4.lo = 1; x4.up = 2;
x5.lo = 1; x5.up = 2;
x6.lo = 1; x6.up = 2;
x7.lo = 1; x7.up = 2;
x8.lo = 1; x8.up = 2;
x9.lo = 1; x9.up = 2;
x10.lo = 1; x10.up = 2;
x11.lo = 1; x11.up = 2;
x12.lo = 1; x12.up = 2;
x13.lo = 1; x13.up = 2;
x14.lo = 1; x14.up = 2;
x15.lo = 1; x15.up = 2;
x16.lo = 1; x16.up = 2;
x17.lo = 1; x17.up = 2;
x18.lo = 1; x18.up = 2;
x19.lo = 1; x19.up = 2;
x20.lo = 1; x20.up = 2;
x21.lo = 1; x21.up = 2;
x22.lo = 1; x22.up = 2;
x23.lo = 1; x23.up = 2;
x24.lo = 1; x24.up = 2;
x25.lo = 1; x25.up = 2;
x26.lo = 1; x26.up = 2;
x27.lo = 1; x27.up = 2;
x28.lo = 1; x28.up = 2;
x29.lo = 1; x29.up = 2;
x30.lo = 1; x30.up = 2;
x31.lo = 1; x31.up = 2;
x32.lo = 1; x32.up = 2;
x33.lo = 1; x33.up = 2;
x34.lo = 1; x34.up = 2;
x35.lo = 1; x35.up = 2;
x36.lo = 1; x36.up = 2;
x37.lo = 1; x37.up = 2;
x38.lo = 1; x38.up = 2;
x39.lo = 1; x39.up = 2;
x40.lo = 1; x40.up = 2;
x41.lo = 1; x41.up = 2;
x42.lo = 1; x42.up = 2;
x43.lo = 1; x43.up = 2;
x44.lo = 1; x44.up = 2;
x45.lo = 1; x45.up = 2;
x46.lo = 1; x46.up = 2;
x47.lo = 1; x47.up = 2;
x48.lo = 1; x48.up = 2;
x49.lo = 1; x49.up = 2;
x50.lo = 1; x50.up = 2;
x51.lo = 1; x51.up = 2;
x52.lo = 1; x52.up = 2;
x53.lo = 1; x53.up = 2;
x54.lo = 1; x54.up = 2;
x55.lo = 1; x55.up = 2;
x56.lo = 1; x56.up = 2;
x57.lo = 1; x57.up = 2;
x58.lo = 1; x58.up = 2;
x59.lo = 1; x59.up = 2;
x60.lo = 1; x60.up = 2;
x61.lo = 1; x61.up = 2;
x62.lo = 1; x62.up = 2;
x63.lo = 1; x63.up = 2;
x64.lo = 1; x64.up = 2;
x65.lo = 1; x65.up = 2;
x66.lo = 1; x66.up = 2;
x67.lo = 1; x67.up = 2;
x68.lo = 1; x68.up = 2;
x69.lo = 1; x69.up = 2;
x70.lo = 1; x70.up = 2;
x71.lo = 1; x71.up = 2;
x72.lo = 1; x72.up = 2;
x73.lo = 1; x73.up = 2;
x74.lo = 1; x74.up = 2;
x75.lo = 1; x75.up = 2;
x76.lo = 1; x76.up = 2;
x77.lo = 1; x77.up = 2;
x78.lo = 1; x78.up = 2;
x79.lo = 1; x79.up = 2;
x80.lo = 1; x80.up = 2;
x81.lo = 1; x81.up = 2;
x82.lo = 1; x82.up = 2;
x83.lo = 1; x83.up = 2;
x84.lo = 1; x84.up = 2;
x85.lo = 1; x85.up = 2;
x86.lo = 1; x86.up = 2;
x87.lo = 1; x87.up = 2;
x88.lo = 1; x88.up = 2;
x89.lo = 1; x89.up = 2;
x90.lo = 1; x90.up = 2;
x91.lo = 1; x91.up = 2;
x92.lo = 1; x92.up = 2;
x93.lo = 1; x93.up = 2;
x94.lo = 1; x94.up = 2;
x95.lo = 1; x95.up = 2;
x96.lo = 1; x96.up = 2;
x97.lo = 1; x97.up = 2;
x98.lo = 1; x98.up = 2;
x99.lo = 1; x99.up = 2;
x100.lo = 1.98133707334501; x100.up = 2;
x102.lo = -0.0186629266549889; x102.up = 0.0186629266549889;
x103.lo = -0.0186629266549889; x103.up = 0.0186629266549889;
x104.lo = -0.0186629266549889; x104.up = 0.0186629266549889;
x105.lo = -0.0186629266549889; x105.up = 0.0186629266549889;
x106.lo = -0.0186629266549889; x106.up = 0.0186629266549889;
x107.lo = -0.0186629266549889; x107.up = 0.0186629266549889;
x108.lo = -0.0186629266549889; x108.up = 0.0186629266549889;
x109.lo = -0.0186629266549889; x109.up = 0.0186629266549889;
x110.lo = -0.0186629266549889; x110.up = 0.0186629266549889;
x111.lo = -0.0186629266549889; x111.up = 0.0186629266549889;
x112.lo = -0.0186629266549889; x112.up = 0.0186629266549889;
x113.lo = -0.0186629266549889; x113.up = 0.0186629266549889;
x114.lo = -0.0186629266549889; x114.up = 0.0186629266549889;
x115.lo = -0.0186629266549889; x115.up = 0.0186629266549889;
x116.lo = -0.0186629266549889; x116.up = 0.0186629266549889;
x117.lo = -0.0186629266549889; x117.up = 0.0186629266549889;
x118.lo = -0.0186629266549889; x118.up = 0.0186629266549889;
x119.lo = -0.0186629266549889; x119.up = 0.0186629266549889;
x120.lo = -0.0186629266549889; x120.up = 0.0186629266549889;
x121.lo = -0.0186629266549889; x121.up = 0.0186629266549889;
x122.lo = -0.0186629266549889; x122.up = 0.0186629266549889;
x123.lo = -0.0186629266549889; x123.up = 0.0186629266549889;
x124.lo = -0.0186629266549889; x124.up = 0.0186629266549889;
x125.lo = -0.0186629266549889; x125.up = 0.0186629266549889;
x126.lo = -0.0186629266549889; x126.up = 0.0186629266549889;
x127.lo = -0.0186629266549889; x127.up = 0.0186629266549889;
x128.lo = -0.0186629266549889; x128.up = 0.0186629266549889;
x129.lo = -0.0186629266549889; x129.up = 0.0186629266549889;
x130.lo = -0.0186629266549889; x130.up = 0.0186629266549889;
x131.lo = -0.0186629266549889; x131.up = 0.0186629266549889;
x132.lo = -0.0186629266549889; x132.up = 0.0186629266549889;
x133.lo = -0.0186629266549889; x133.up = 0.0186629266549889;
x134.lo = -0.0186629266549889; x134.up = 0.0186629266549889;
x135.lo = -0.0186629266549889; x135.up = 0.0186629266549889;
x136.lo = -0.0186629266549889; x136.up = 0.0186629266549889;
x137.lo = -0.0186629266549889; x137.up = 0.0186629266549889;
x138.lo = -0.0186629266549889; x138.up = 0.0186629266549889;
x139.lo = -0.0186629266549889; x139.up = 0.0186629266549889;
x140.lo = -0.0186629266549889; x140.up = 0.0186629266549889;
x141.lo = -0.0186629266549889; x141.up = 0.0186629266549889;
x142.lo = -0.0186629266549889; x142.up = 0.0186629266549889;
x143.lo = -0.0186629266549889; x143.up = 0.0186629266549889;
x144.lo = -0.0186629266549889; x144.up = 0.0186629266549889;
x145.lo = -0.0186629266549889; x145.up = 0.0186629266549889;
x146.lo = -0.0186629266549889; x146.up = 0.0186629266549889;
x147.lo = -0.0186629266549889; x147.up = 0.0186629266549889;
x148.lo = -0.0186629266549889; x148.up = 0.0186629266549889;
x149.lo = -0.0186629266549889; x149.up = 0.0186629266549889;
x150.lo = -0.0186629266549889; x150.up = 0.0186629266549889;
x151.lo = -0.0186629266549889; x151.up = 0.0186629266549889;
x152.lo = -0.0186629266549889; x152.up = 0.0186629266549889;
x153.lo = -0.0186629266549889; x153.up = 0.0186629266549889;
x154.lo = -0.0186629266549889; x154.up = 0.0186629266549889;
x155.lo = -0.0186629266549889; x155.up = 0.0186629266549889;
x156.lo = -0.0186629266549889; x156.up = 0.0186629266549889;
x157.lo = -0.0186629266549889; x157.up = 0.0186629266549889;
x158.lo = -0.0186629266549889; x158.up = 0.0186629266549889;
x159.lo = -0.0186629266549889; x159.up = 0.0186629266549889;
x160.lo = -0.0186629266549889; x160.up = 0.0186629266549889;
x161.lo = -0.0186629266549889; x161.up = 0.0186629266549889;
x162.lo = -0.0186629266549889; x162.up = 0.0186629266549889;
x163.lo = -0.0186629266549889; x163.up = 0.0186629266549889;
x164.lo = -0.0186629266549889; x164.up = 0.0186629266549889;
x165.lo = -0.0186629266549889; x165.up = 0.0186629266549889;
x166.lo = -0.0186629266549889; x166.up = 0.0186629266549889;
x167.lo = -0.0186629266549889; x167.up = 0.0186629266549889;
x168.lo = -0.0186629266549889; x168.up = 0.0186629266549889;
x169.lo = -0.0186629266549889; x169.up = 0.0186629266549889;
x170.lo = -0.0186629266549889; x170.up = 0.0186629266549889;
x171.lo = -0.0186629266549889; x171.up = 0.0186629266549889;
x172.lo = -0.0186629266549889; x172.up = 0.0186629266549889;
x173.lo = -0.0186629266549889; x173.up = 0.0186629266549889;
x174.lo = -0.0186629266549889; x174.up = 0.0186629266549889;
x175.lo = -0.0186629266549889; x175.up = 0.0186629266549889;
x176.lo = -0.0186629266549889; x176.up = 0.0186629266549889;
x177.lo = -0.0186629266549889; x177.up = 0.0186629266549889;
x178.lo = -0.0186629266549889; x178.up = 0.0186629266549889;
x179.lo = -0.0186629266549889; x179.up = 0.0186629266549889;
x180.lo = -0.0186629266549889; x180.up = 0.0186629266549889;
x181.lo = -0.0186629266549889; x181.up = 0.0186629266549889;
x182.lo = -0.0186629266549889; x182.up = 0.0186629266549889;
x183.lo = -0.0186629266549889; x183.up = 0.0186629266549889;
x184.lo = -0.0186629266549889; x184.up = 0.0186629266549889;
x185.lo = -0.0186629266549889; x185.up = 0.0186629266549889;
x186.lo = -0.0186629266549889; x186.up = 0.0186629266549889;
x187.lo = -0.0186629266549889; x187.up = 0.0186629266549889;
x188.lo = -0.0186629266549889; x188.up = 0.0186629266549889;
x189.lo = -0.0186629266549889; x189.up = 0.0186629266549889;
x190.lo = -0.0186629266549889; x190.up = 0.0186629266549889;
x191.lo = -0.0186629266549889; x191.up = 0.0186629266549889;
x192.lo = -0.0186629266549889; x192.up = 0.0186629266549889;
x193.lo = -0.0186629266549889; x193.up = 0.0186629266549889;
x194.lo = -0.0186629266549889; x194.up = 0.0186629266549889;
x195.lo = -0.0186629266549889; x195.up = 0.0186629266549889;
x196.lo = -0.0186629266549889; x196.up = 0.0186629266549889;
x197.lo = -0.0186629266549889; x197.up = 0.0186629266549889;
x198.lo = -0.0186629266549889; x198.up = 0.0186629266549889;
x199.lo = -0.0186629266549889; x199.up = 0.0186629266549889;

* set non-default levels
x1.l = 1.00015482411709;
x2.l = 1.5;
x3.l = 1.5;
x4.l = 1.5;
x5.l = 1.5;
x6.l = 1.5;
x7.l = 1.5;
x8.l = 1.5;
x9.l = 1.5;
x10.l = 1.5;
x11.l = 1.5;
x12.l = 1.5;
x13.l = 1.5;
x14.l = 1.5;
x15.l = 1.5;
x16.l = 1.5;
x17.l = 1.5;
x18.l = 1.5;
x19.l = 1.5;
x20.l = 1.5;
x21.l = 1.5;
x22.l = 1.5;
x23.l = 1.5;
x24.l = 1.5;
x25.l = 1.5;
x26.l = 1.5;
x27.l = 1.5;
x28.l = 1.5;
x29.l = 1.5;
x30.l = 1.5;
x31.l = 1.5;
x32.l = 1.5;
x33.l = 1.5;
x34.l = 1.5;
x35.l = 1.5;
x36.l = 1.5;
x37.l = 1.5;
x38.l = 1.5;
x39.l = 1.5;
x40.l = 1.5;
x41.l = 1.5;
x42.l = 1.5;
x43.l = 1.5;
x44.l = 1.5;
x45.l = 1.5;
x46.l = 1.5;
x47.l = 1.5;
x48.l = 1.5;
x49.l = 1.5;
x50.l = 1.5;
x51.l = 1.5;
x52.l = 1.5;
x53.l = 1.5;
x54.l = 1.5;
x55.l = 1.5;
x56.l = 1.5;
x57.l = 1.5;
x58.l = 1.5;
x59.l = 1.5;
x60.l = 1.5;
x61.l = 1.5;
x62.l = 1.5;
x63.l = 1.5;
x64.l = 1.5;
x65.l = 1.5;
x66.l = 1.5;
x67.l = 1.5;
x68.l = 1.5;
x69.l = 1.5;
x70.l = 1.5;
x71.l = 1.5;
x72.l = 1.5;
x73.l = 1.5;
x74.l = 1.5;
x75.l = 1.5;
x76.l = 1.5;
x77.l = 1.5;
x78.l = 1.5;
x79.l = 1.5;
x80.l = 1.5;
x81.l = 1.5;
x82.l = 1.5;
x83.l = 1.5;
x84.l = 1.5;
x85.l = 1.5;
x86.l = 1.5;
x87.l = 1.5;
x88.l = 1.5;
x89.l = 1.5;
x90.l = 1.5;
x91.l = 1.5;
x92.l = 1.5;
x93.l = 1.5;
x94.l = 1.5;
x95.l = 1.5;
x96.l = 1.5;
x97.l = 1.5;
x98.l = 1.5;
x99.l = 1.5;
x100.l = 1.98133707334501;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x200;
