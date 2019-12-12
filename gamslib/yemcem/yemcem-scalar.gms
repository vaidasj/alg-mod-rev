*  MIP written by GAMS Convert at 12/13/18 10:24:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        168       43       56       69        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        258      204       54        0        0        0        0        0
*  FX      1        0        1        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        953      953        0        0
*
*  Solve m using MIP minimizing x234;


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
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,b180,b181
          ,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193,b194
          ,b195,b196,b197,b198,b199,b200,b201,b202,b203,b204,b205,b206,b207
          ,b208,b209,b210,b211,b212,b213,b214,b215,b216,b217,b218,b219,b220
          ,b221,b222,b223,b224,b225,b226,b227,b228,b229,b230,b231,b232,b233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245,x246
          ,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101
          ,x102,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114
          ,x115,x116,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127
          ,x128,x129,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140
          ,x141,x142,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153
          ,x154,x155,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166
          ,x167,x168,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179;

Binary Variables  b180,b181,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191
          ,b192,b193,b194,b195,b196,b197,b198,b199,b200,b201,b202,b203,b204
          ,b205,b206,b207,b208,b209,b210,b211,b212,b213,b214,b215,b216,b217
          ,b218,b219,b220,b221,b222,b223,b224,b225,b226,b227,b228,b229,b230
          ,b231,b232,b233;

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
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168;


e1..  - 0.1127*x1 - 0.1465*x13 + x117 =G= 0;

e2..  - 0.1127*x2 - 0.1465*x14 + x118 =G= 0;

e3..  - 0.1127*x3 - 0.1465*x15 + x119 =G= 0;

e4..  - 0.1127*x4 - 0.1465*x16 + x120 =G= 0;

e5..  - 0.1127*x5 - 0.1465*x17 + x121 =G= 0;

e6..  - 0.1127*x6 - 0.1465*x18 + x122 =G= 0;

e7..  - 0.1127*x7 - 0.1465*x19 + x123 =G= 0;

e8..  - 0.1127*x8 - 0.1465*x20 + x124 =G= 0;

e9..  - 0.1127*x9 - 0.1465*x21 + x125 =G= 0;

e10..  - 0.1127*x10 - 0.1465*x22 + x126 =G= 0;

e11..  - 0.1127*x11 - 0.1465*x23 + x127 =G= 0;

e12..  - 0.1127*x12 - 0.1465*x24 + x128 =G= 0;

e13..    0.96*x1 + 0.96*x13 - 0.96*x25 + x129 =G= 0;

e14..    0.96*x2 + 0.96*x14 - 0.96*x26 + x130 =G= 0;

e15..    0.96*x3 + 0.96*x15 - 0.96*x27 + x131 =G= 0;

e16..    0.96*x4 + 0.96*x16 - 0.96*x28 + x132 =G= 0;

e17..    0.96*x5 + 0.96*x17 - 0.96*x29 + x133 =G= 0;

e18..    0.96*x6 + 0.96*x18 - 0.96*x30 + x134 =G= 0;

e19..    0.96*x7 + 0.96*x19 - 0.96*x31 + x135 =G= 0;

e20..    0.96*x8 + 0.96*x20 - 0.96*x32 + x136 =G= 0;

e21..    0.96*x9 + 0.96*x21 - 0.96*x33 + x137 =G= 0;

e22..    0.96*x10 + 0.96*x22 - 0.96*x34 + x138 =G= 0;

e23..    0.96*x11 + 0.96*x23 - 0.96*x35 + x139 =G= 0;

e24..    0.96*x12 + 0.96*x24 - 0.96*x36 + x140 =G= 0;

e25..    x25 - x37 - x41 - x45 - x49 - x53 - x141 =G= 0;

e26..    x26 - x38 - x42 - x46 - x50 - x54 - x142 =G= 0;

e27..    x27 - x39 - x43 - x47 - x51 - x55 - x143 =G= 0;

e28..    x28 - x40 - x44 - x48 - x52 - x56 - x144 =G= 0;

e29..    x29 - x57 - x61 - x65 - x69 - x73 - x145 =G= 0;

e30..    x30 - x58 - x62 - x66 - x70 - x74 - x146 =G= 0;

e31..    x31 - x59 - x63 - x67 - x71 - x75 - x147 =G= 0;

e32..    x32 - x60 - x64 - x68 - x72 - x76 - x148 =G= 0;

e33..    x33 - x77 - x81 - x85 - x89 - x93 - x149 =G= 0;

e34..    x34 - x78 - x82 - x86 - x90 - x94 - x150 =G= 0;

e35..    x35 - x79 - x83 - x87 - x91 - x95 - x151 =G= 0;

e36..    x36 - x80 - x84 - x88 - x92 - x96 - x152 =G= 0;

e37..    x1 =L= 500;

e38..    x2 - x153 =L= 500;

e39..    x3 - x153 - x154 =L= 500;

e40..    x4 - x153 - x154 - x155 =L= 500;

e41..    x5 =L= 0;

e42..    x6 - x156 =L= 0;

e43..    x7 - x156 - x157 =L= 0;

e44..    x8 - x156 - x157 - x158 =L= 0;

e45..    x9 =L= 0;

e46..    x10 - x159 =L= 0;

e47..    x11 - x159 - x160 =L= 0;

e48..    x12 - x159 - x160 - x161 =L= 0;

e49..    x13 =L= 0;

e50..    x14 - x162 =L= 0;

e51..    x15 - x162 - x163 =L= 0;

e52..    x16 - x162 - x163 - x164 =L= 0;

e53..    x17 =L= 320;

e54..    x18 - x165 =L= 320;

e55..    x19 - x165 - x166 =L= 320;

e56..    x20 - x165 - x166 - x167 =L= 320;

e57..    x21 =L= 0;

e58..    x22 - x168 =L= 0;

e59..    x23 - x168 - x169 =L= 0;

e60..    x24 - x168 - x169 - x170 =L= 0;

e61..    x25 =L= 500;

e62..    x26 - x171 =L= 500;

e63..    x27 - x171 - x172 =L= 500;

e64..    x28 - x171 - x172 - x173 =L= 500;

e65..    x29 =L= 320;

e66..    x30 - x174 =L= 320;

e67..    x31 - x174 - x175 =L= 320;

e68..    x32 - x174 - x175 - x176 =L= 320;

e69..    x33 =L= 0;

e70..    x34 - x177 =L= 0;

e71..    x35 - x177 - x178 =L= 0;

e72..    x36 - x177 - x178 - x179 =L= 0;

e73..    x153 - 500*b180 - 750*b183 - 1000*b186 =E= 0;

e74..    x154 - 500*b181 - 750*b184 - 1000*b187 =E= 0;

e75..    x155 - 500*b182 - 750*b185 - 1000*b188 =E= 0;

e76..    x156 - 500*b189 - 750*b192 - 1000*b195 =E= 0;

e77..    x157 - 500*b190 - 750*b193 - 1000*b196 =E= 0;

e78..    x158 - 500*b191 - 750*b194 - 1000*b197 =E= 0;

e79..    x159 - 500*b198 - 750*b201 - 1000*b204 =E= 0;

e80..    x160 - 500*b199 - 750*b202 - 1000*b205 =E= 0;

e81..    x161 - 500*b200 - 750*b203 - 1000*b206 =E= 0;

e82..    x162 - 500*b207 - 750*b210 - 1000*b213 =E= 0;

e83..    x163 - 500*b208 - 750*b211 - 1000*b214 =E= 0;

e84..    x164 - 500*b209 - 750*b212 - 1000*b215 =E= 0;

e85..    x165 - 500*b216 - 750*b219 - 1000*b222 =E= 0;

e86..    x166 - 500*b217 - 750*b220 - 1000*b223 =E= 0;

e87..    x167 - 500*b218 - 750*b221 - 1000*b224 =E= 0;

e88..    x168 - 500*b225 - 750*b228 - 1000*b231 =E= 0;

e89..    x169 - 500*b226 - 750*b229 - 1000*b232 =E= 0;

e90..    x170 - 500*b227 - 750*b230 - 1000*b233 =E= 0;

e91..    b180 + b183 + b186 =L= 1;

e92..    b181 + b184 + b187 =L= 1;

e93..    b182 + b185 + b188 =L= 1;

e94..    b189 + b192 + b195 =L= 1;

e95..    b190 + b193 + b196 =L= 1;

e96..    b191 + b194 + b197 =L= 1;

e97..    b198 + b201 + b204 =L= 1;

e98..    b199 + b202 + b205 =L= 1;

e99..    b200 + b203 + b206 =L= 1;

e100..    b207 + b210 + b213 =L= 1;

e101..    b208 + b211 + b214 =L= 1;

e102..    b209 + b212 + b215 =L= 1;

e103..    b216 + b219 + b222 =L= 1;

e104..    b217 + b220 + b223 =L= 1;

e105..    b218 + b221 + b224 =L= 1;

e106..    b225 + b228 + b231 =L= 1;

e107..    b226 + b229 + b232 =L= 1;

e108..    b227 + b230 + b233 =L= 1;

e109..    x153 + x154 + x155 + x162 + x163 + x164 =L= 1500;

e110..    x156 + x157 + x158 + x165 + x166 + x167 =L= 1680;

e111..    x159 + x160 + x161 + x168 + x169 + x170 =L= 2000;

e112..    x37 + x57 + x77 + x97 =G= 382.55374332;

e113..    x38 + x58 + x78 + x98 =G= 523.192358530475;

e114..    x39 + x59 + x79 + x99 =G= 715.534088489393;

e115..    x40 + x60 + x80 + x100 =G= 978.586600974837;

e116..    x41 + x61 + x81 + x101 =G= 368.89110963;

e117..    x42 + x62 + x82 + x102 =G= 504.506917154387;

e118..    x43 + x63 + x83 + x103 =G= 689.979299614772;

e119..    x44 + x64 + x84 + x104 =G= 943.63707951145;

e120..    x45 + x65 + x85 + x105 =G= 273.2526738;

e121..    x46 + x66 + x86 + x106 =G= 373.708827521768;

e122..    x47 + x67 + x87 + x107 =G= 511.095777492423;

e123..    x48 + x68 + x88 + x108 =G= 698.990429267741;

e124..    x49 + x69 + x89 + x109 =G= 170.782921125;

e125..    x50 + x70 + x90 + x110 =G= 233.568017201105;

e126..    x51 + x71 + x91 + x111 =G= 319.434860932765;

e127..    x52 + x72 + x92 + x112 =G= 436.869018292338;

e128..    x53 + x73 + x93 + x113 =G= 170.782921125;

e129..    x54 + x74 + x94 + x114 =G= 233.568017201105;

e130..    x55 + x75 + x95 + x115 =G= 319.434860932765;

e131..    x56 + x76 + x96 + x116 =G= 436.869018292338;

e132..    x141 + x145 + x149 =L= 1000;

e133..    x142 + x146 + x150 =L= 1000;

e134..    x143 + x147 + x151 =L= 1000;

e135..    x144 + x148 + x152 =L= 1000;

e136..    x97 + x101 + x105 + x109 + x113 =L= 3000;

e137..    x98 + x102 + x106 + x110 + x114 =L= 3000;

e138..    x99 + x103 + x107 + x111 + x115 =L= 3000;

e139..    x100 + x104 + x108 + x112 + x116 =L= 3000;

e140..    x129 + x133 + x137 =L= 0;

e141..    x130 + x134 + x138 =L= 0;

e142..    x131 + x135 + x139 =L= 0;

e143..    x132 + x136 + x140 =L= 0;

e144..    x234 - 0.826446280991735*x235 - 0.620921323059155*x236
        - 0.466507380209733*x237 - 0.350493899481392*x238
        - 0.826446280991735*x239 - 0.620921323059155*x240
        - 0.466507380209733*x241 - 0.350493899481392*x242
        - 0.826446280991735*x243 - 0.620921323059155*x244
        - 0.466507380209733*x245 - 0.350493899481392*x246
        - 0.826446280991735*x247 - 0.620921323059155*x248
        - 0.466507380209733*x249 - 0.350493899481392*x250
        + 0.826446280991735*x251 + 0.620921323059155*x252
        + 0.466507380209733*x253 + 0.350493899481392*x254
        - 0.826446280991735*x255 - 0.620921323059155*x256
        - 0.466507380209733*x257 - 0.350493899481392*x258 =E= 0;

e145..  - 0.01020325*x1 - 0.01020325*x5 - 0.01020325*x9 - 0.01020325*x13
        - 0.01020325*x17 - 0.01020325*x21 - 0.02846528*x25 - 0.02846528*x29
        - 0.02846528*x33 + x239 =E= 47.1;

e146..  - 0.01020325*x2 - 0.01020325*x6 - 0.01020325*x10 - 0.01020325*x14
        - 0.01020325*x18 - 0.01020325*x22 - 0.02846528*x26 - 0.02846528*x30
        - 0.02846528*x34 - 0.0558*x153 - 0.0558*x156 - 0.0558*x159 - 0.06*x162
        - 0.06*x165 - 0.06*x168 + x240 =E= 47.1;

e147..  - 0.01020325*x3 - 0.01020325*x7 - 0.01020325*x11 - 0.01020325*x15
        - 0.01020325*x19 - 0.01020325*x23 - 0.02846528*x27 - 0.02846528*x31
        - 0.02846528*x35 - 0.0558*x153 - 0.0558*x154 - 0.0558*x156
        - 0.0558*x157 - 0.0558*x159 - 0.0558*x160 - 0.06*x162 - 0.06*x163
        - 0.06*x165 - 0.06*x166 - 0.06*x168 - 0.06*x169 + x241 =E= 47.1;

e148..  - 0.01020325*x4 - 0.01020325*x8 - 0.01020325*x12 - 0.01020325*x16
        - 0.01020325*x20 - 0.01020325*x24 - 0.02846528*x28 - 0.02846528*x32
        - 0.02846528*x36 - 0.0558*x153 - 0.0558*x154 - 0.0558*x155
        - 0.0558*x156 - 0.0558*x157 - 0.0558*x158 - 0.0558*x159 - 0.0558*x160
        - 0.0558*x161 - 0.06*x162 - 0.06*x163 - 0.06*x164 - 0.06*x165
        - 0.06*x166 - 0.06*x167 - 0.06*x168 - 0.06*x169 - 0.06*x170 + x242
        =E= 47.1;

e149..    x235 =E= 0;

e150..  - 0.0267979094203776*x171 - 0.0256813298611952*x174
        - 0.0234481707428304*x177 - 66.9949008460419*b180
        - 83.0558287330283*b183 - 96.7358932827346*b186 - 64.2034466441234*b189
        - 79.5951692024855*b192 - 92.7052310626207*b195 - 58.6205382402866*b198
        - 72.6738501413998*b201 - 84.6439066223928*b204 - 56.9457166371747*b207
        - 71.4615065582968*b210 - 83.9533170947684*b213 - 54.5729784439591*b216
        - 68.4839437850345*b219 - 80.4552622158197*b222 - 49.8275020575279*b225
        - 62.5288182385097*b228 - 73.4591524579224*b231 + x236 =E= 0;

e151..  - 0.0267979094203776*x171 - 0.0267979094203776*x172
        - 0.0256813298611952*x174 - 0.0256813298611952*x175
        - 0.0234481707428304*x177 - 0.0234481707428304*x178
        - 66.9949008460419*b180 - 66.9949008460419*b181 - 83.0558287330283*b183
        - 83.0558287330283*b184 - 96.7358932827346*b186 - 96.7358932827346*b187
        - 64.2034466441234*b189 - 64.2034466441234*b190 - 79.5951692024855*b192
        - 79.5951692024855*b193 - 92.7052310626207*b195 - 92.7052310626207*b196
        - 58.6205382402866*b198 - 58.6205382402866*b199 - 72.6738501413998*b201
        - 72.6738501413998*b202 - 84.6439066223928*b204 - 84.6439066223928*b205
        - 56.9457166371747*b207 - 56.9457166371747*b208 - 71.4615065582968*b210
        - 71.4615065582968*b211 - 83.9533170947684*b213 - 83.9533170947684*b214
        - 54.5729784439591*b216 - 54.5729784439591*b217 - 68.4839437850345*b219
        - 68.4839437850345*b220 - 80.4552622158197*b222 - 80.4552622158197*b223
        - 49.8275020575279*b225 - 49.8275020575279*b226 - 62.5288182385097*b228
        - 62.5288182385097*b229 - 73.4591524579224*b231 - 73.4591524579224*b232
        + x237 =E= 0;

e152..  - 0.0267979094203776*x171 - 0.0267979094203776*x172
        - 0.0267979094203776*x173 - 0.0256813298611952*x174
        - 0.0256813298611952*x175 - 0.0256813298611952*x176
        - 0.0234481707428304*x177 - 0.0234481707428304*x178
        - 0.0234481707428304*x179 - 66.9949008460419*b180
        - 66.9949008460419*b181 - 66.9949008460419*b182 - 83.0558287330283*b183
        - 83.0558287330283*b184 - 83.0558287330283*b185 - 96.7358932827346*b186
        - 96.7358932827346*b187 - 96.7358932827346*b188 - 64.2034466441234*b189
        - 64.2034466441234*b190 - 64.2034466441234*b191 - 79.5951692024855*b192
        - 79.5951692024855*b193 - 79.5951692024855*b194 - 92.7052310626207*b195
        - 92.7052310626207*b196 - 92.7052310626207*b197 - 58.6205382402866*b198
        - 58.6205382402866*b199 - 58.6205382402866*b200 - 72.6738501413998*b201
        - 72.6738501413998*b202 - 72.6738501413998*b203 - 84.6439066223928*b204
        - 84.6439066223928*b205 - 84.6439066223928*b206 - 56.9457166371747*b207
        - 56.9457166371747*b208 - 56.9457166371747*b209 - 71.4615065582968*b210
        - 71.4615065582968*b211 - 71.4615065582968*b212 - 83.9533170947684*b213
        - 83.9533170947684*b214 - 83.9533170947684*b215 - 54.5729784439591*b216
        - 54.5729784439591*b217 - 54.5729784439591*b218 - 68.4839437850345*b219
        - 68.4839437850345*b220 - 68.4839437850345*b221 - 80.4552622158197*b222
        - 80.4552622158197*b223 - 80.4552622158197*b224 - 49.8275020575279*b225
        - 49.8275020575279*b226 - 49.8275020575279*b227 - 62.5288182385097*b228
        - 62.5288182385097*b229 - 62.5288182385097*b230 - 73.4591524579224*b231
        - 73.4591524579224*b232 - 73.4591524579224*b233 + x238 =E= 0;

e153..  - 0.055944*x37 - 0.1794882*x41 - 0.1957408*x45 - 0.1439468*x49
        - 0.1082268*x53 - 0.1216218*x57 - 0.061302*x61 - 0.1861434*x65
        - 0.2078856*x69 - 0.173397*x73 - 0.2039188*x77 - 0.1411221*x81
        - 0.0646437*x85 - 0.1155964*x89 - 0.150978*x93 - 0.1537698*x97
        - 0.03235*x101 - 0.1778808*x105 - 0.2305255*x109 - 0.2093708*x113
        - 0.2119815*x117 - 0.079965*x121 - 0.16912575*x125 - 0.141321*x129
        - 0.05331*x133 - 0.1127505*x137 - 0.1794882*x141 - 0.061302*x145
        - 0.1411221*x149 + x243 =E= 0;

e154..  - 0.055944*x38 - 0.1794882*x42 - 0.1957408*x46 - 0.1439468*x50
        - 0.1082268*x54 - 0.1216218*x58 - 0.061302*x62 - 0.1861434*x66
        - 0.2078856*x70 - 0.173397*x74 - 0.2039188*x78 - 0.1411221*x82
        - 0.0646437*x86 - 0.1155964*x90 - 0.150978*x94 - 0.1537698*x98
        - 0.03235*x102 - 0.1778808*x106 - 0.2305255*x110 - 0.2093708*x114
        - 0.2119815*x118 - 0.079965*x122 - 0.16912575*x126 - 0.141321*x130
        - 0.05331*x134 - 0.1127505*x138 - 0.1794882*x142 - 0.061302*x146
        - 0.1411221*x150 + x244 =E= 0;

e155..  - 0.055944*x39 - 0.1794882*x43 - 0.1957408*x47 - 0.1439468*x51
        - 0.1082268*x55 - 0.1216218*x59 - 0.061302*x63 - 0.1861434*x67
        - 0.2078856*x71 - 0.173397*x75 - 0.2039188*x79 - 0.1411221*x83
        - 0.0646437*x87 - 0.1155964*x91 - 0.150978*x95 - 0.1537698*x99
        - 0.03235*x103 - 0.1778808*x107 - 0.2305255*x111 - 0.2093708*x115
        - 0.2119815*x119 - 0.079965*x123 - 0.16912575*x127 - 0.141321*x131
        - 0.05331*x135 - 0.1127505*x139 - 0.1794882*x143 - 0.061302*x147
        - 0.1411221*x151 + x245 =E= 0;

e156..  - 0.055944*x40 - 0.1794882*x44 - 0.1957408*x48 - 0.1439468*x52
        - 0.1082268*x56 - 0.1216218*x60 - 0.061302*x64 - 0.1861434*x68
        - 0.2078856*x72 - 0.173397*x76 - 0.2039188*x80 - 0.1411221*x84
        - 0.0646437*x88 - 0.1155964*x92 - 0.150978*x96 - 0.1537698*x100
        - 0.03235*x104 - 0.1778808*x108 - 0.2305255*x112 - 0.2093708*x116
        - 0.2119815*x120 - 0.079965*x124 - 0.16912575*x128 - 0.141321*x132
        - 0.05331*x136 - 0.1127505*x140 - 0.1794882*x144 - 0.061302*x148
        - 0.1411221*x152 + x246 =E= 0;

e157..  - 0.28*x97 - 0.28*x101 - 0.28*x105 - 0.28*x109 - 0.28*x113 - 0.6*x117
        - 0.6*x121 - 0.6*x125 - 0.224*x129 - 0.224*x133 - 0.224*x137 + x247
        =E= 0;

e158..  - 0.28*x98 - 0.28*x102 - 0.28*x106 - 0.28*x110 - 0.28*x114 - 0.6*x118
        - 0.6*x122 - 0.6*x126 - 0.224*x130 - 0.224*x134 - 0.224*x138 + x248
        =E= 0;

e159..  - 0.28*x99 - 0.28*x103 - 0.28*x107 - 0.28*x111 - 0.28*x115 - 0.6*x119
        - 0.6*x123 - 0.6*x127 - 0.224*x131 - 0.224*x135 - 0.224*x139 + x249
        =E= 0;

e160..  - 0.28*x100 - 0.28*x104 - 0.28*x108 - 0.28*x112 - 0.28*x116 - 0.6*x120
        - 0.6*x124 - 0.6*x128 - 0.224*x132 - 0.224*x136 - 0.224*x140 + x250
        =E= 0;

e161..  - 0.001*x141 - 0.001*x145 - 0.001*x149 + x251 =E= 0;

e162..  - 0.001*x142 - 0.001*x146 - 0.001*x150 + x252 =E= 0;

e163..  - 0.001*x143 - 0.001*x147 - 0.001*x151 + x253 =E= 0;

e164..  - 0.001*x144 - 0.001*x148 - 0.001*x152 + x254 =E= 0;

e165..  - 0.025*x239 - 0.025*x247 + x255 =E= 0;

e166..  - 0.025*x240 - 0.025*x248 + x256 =E= 0;

e167..  - 0.025*x241 - 0.025*x249 + x257 =E= 0;

e168..  - 0.025*x242 - 0.025*x250 + x258 =E= 0;

* set non-default bounds
b198.fx = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MIP minimizing x234;
