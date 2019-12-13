*  LP written by GAMS Convert at 12/13/18 10:24:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        348      164       69      115        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        284      284        0        0        0        0        0        0
*  FX      5        5        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        950      950        0        0
*
*  Solve m using LP maximizing x284;


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
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219,x220
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245,x246
          ,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258,x259
          ,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270,x271,x272
          ,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283,x284;

Negative Variables  x232,x233,x234,x235;

Positive Variables  x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37
          ,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54
          ,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x95,x96
          ,x97,x98,x99,x100,x101,x102,x103,x104,x105,x106,x107,x108,x109,x110
          ,x111,x112,x113,x114,x115,x116,x117,x118,x119,x120,x121,x122,x123
          ,x124,x125,x126,x127,x128,x129,x130,x131,x132,x133,x134,x135,x136
          ,x137,x138,x139,x140,x141,x142,x143,x190,x191,x192,x193,x194,x195
          ,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207,x208
          ,x209,x210,x211,x212;

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
          ,e195,e196,e197,e198,e199,e200,e201,e202,e203,e204,e205,e206,e207
          ,e208,e209,e210,e211,e212,e213,e214,e215,e216,e217,e218,e219,e220
          ,e221,e222,e223,e224,e225,e226,e227,e228,e229,e230,e231,e232,e233
          ,e234,e235,e236,e237,e238,e239,e240,e241,e242,e243,e244,e245,e246
          ,e247,e248,e249,e250,e251,e252,e253,e254,e255,e256,e257,e258,e259
          ,e260,e261,e262,e263,e264,e265,e266,e267,e268,e269,e270,e271,e272
          ,e273,e274,e275,e276,e277,e278,e279,e280,e281,e282,e283,e284,e285
          ,e286,e287,e288,e289,e290,e291,e292,e293,e294,e295,e296,e297,e298
          ,e299,e300,e301,e302,e303,e304,e305,e306,e307,e308,e309,e310,e311
          ,e312,e313,e314,e315,e316,e317,e318,e319,e320,e321,e322,e323,e324
          ,e325,e326,e327,e328,e329,e330,e331,e332,e333,e334,e335,e336,e337
          ,e338,e339,e340,e341,e342,e343,e344,e345,e346,e347,e348;


e1..    x1 - x24 - x25 =E= 0;

e2..    x2 - x26 - x27 =E= 0;

e3..    x3 - x28 - x29 =E= 0;

e4..    x4 - x30 - x31 =E= 0;

e5..    x5 - x32 - x33 =E= 0;

e6..    x6 - x34 - x35 =E= 0;

e7..    x7 - x36 - x37 =E= 0;

e8..    x8 - x38 - x39 =E= 0;

e9..    x9 - x40 - x41 =E= 0;

e10..    x10 - x42 - x43 =E= 0;

e11..    x11 - x44 - x45 =E= 0;

e12..    x12 - x46 - x47 =E= 0;

e13..    x13 - x48 - x49 =E= 0;

e14..    x14 - x50 - x51 =E= 0;

e15..    x15 - x52 - x53 =E= 0;

e16..    x16 - x54 - x55 =E= 0;

e17..    x17 - x56 - x57 =E= 0;

e18..    x18 - x58 - x59 =E= 0;

e19..    x19 - x60 - x61 =E= 0;

e20..    x20 - x62 - x63 =E= 0;

e21..    x21 - x64 - x65 =E= 0;

e22..    x22 - x66 - x67 =E= 0;

e23..    x23 - x68 - x69 =E= 0;

e24..    x71 - x190 - x213 =E= 0;

e25..    x72 - x191 - x214 =E= 0;

e26..    x73 - x192 - x215 =E= 0;

e27..    x74 - x193 - x216 =E= 0;

e28..    x75 - x194 - x217 =E= 0;

e29..    x76 - x195 - x218 =E= 0;

e30..    x77 - x196 - x219 =E= 0;

e31..    x78 - x197 - x220 =E= 0;

e32..    x79 - x198 - x221 =E= 0;

e33..    x80 - x199 - x222 =E= 0;

e34..    x81 - x200 - x223 =E= 0;

e35..    x82 - x201 - x224 =E= 0;

e36..    x83 - x202 - x225 =E= 0;

e37..    x84 - x203 - x226 =E= 0;

e38..    x85 - x204 - x227 =E= 0;

e39..    x86 - x205 - x228 =E= 0;

e40..    x87 - x206 - x229 =E= 0;

e41..    x88 - x207 - x230 =E= 0;

e42..    x89 - x208 - x231 =E= 0;

e43..    x90 - x209 - x232 =E= 0;

e44..    x91 - x210 - x233 =E= 0;

e45..    x92 - x211 - x234 =E= 0;

e46..    x93 - x212 - x235 =E= 0;

e47..    x70 - x94 - x95 =E= 0;

e48..    x71 - x96 - x97 =E= 0;

e49..    x72 - x98 - x99 =E= 0;

e50..    x73 - x100 - x101 =E= 0;

e51..    x74 - x102 - x103 =E= 0;

e52..    x75 - x104 - x105 =E= 0;

e53..    x76 - x106 - x107 =E= 0;

e54..    x77 - x108 - x109 =E= 0;

e55..    x78 - x110 - x111 =E= 0;

e56..    x79 - x112 - x113 =E= 0;

e57..    x80 - x114 - x115 =E= 0;

e58..    x81 - x116 - x117 =E= 0;

e59..    x82 - x118 - x119 =E= 0;

e60..    x83 - x120 - x121 =E= 0;

e61..    x84 - x122 - x123 =E= 0;

e62..    x85 - x124 - x125 =E= 0;

e63..    x86 - x126 - x127 =E= 0;

e64..    x87 - x128 - x129 =E= 0;

e65..    x88 - x130 - x131 =E= 0;

e66..    x89 - x132 - x133 =E= 0;

e67..    x90 - x134 - x135 =E= 0;

e68..    x91 - x136 - x137 =E= 0;

e69..    x92 - x138 - x139 =E= 0;

e70..    x93 - x140 - x141 =E= 0;

e71..    x25 + x213 - x237 =E= -2.684391;

e72..    x27 + x214 - x238 =E= -2.815926159;

e73..    x29 + x215 - x239 =E= -2.953906540791;

e74..    x31 + x216 - x240 =E= -3.09864796128976;

e75..    x33 + x217 - x241 =E= -3.25048171139296;

e76..    x35 + x218 - x242 =E= -3.40975531525121;

e77..    x37 + x219 - x243 =E= -3.57683332569852;

e78..    x39 + x220 - x244 =E= -3.75209815865775;

e79..    x41 + x221 - x245 =E= -3.93595096843198;

e80..    x43 + x222 - x246 =E= -4.12881256588514;

e81..    x45 + x223 - x247 =E= -4.33112438161351;

e82..    x47 + x224 - x248 =E= -4.54334947631258;

e83..    x49 + x225 - x249 =E= -4.76597360065189;

e84..    x51 + x226 - x250 =E= -4.99950630708384;

e85..    x53 + x227 - x251 =E= -5.24448211613094;

e86..    x55 + x228 - x252 =E= -5.50146173982136;

e87..    x57 + x229 - x253 =E= -5.77103336507261;

e88..    x59 + x230 - x254 =E= -6.05381399996116;

e89..    x61 + x231 - x255 =E= -6.35045088595926;

e90..    x63 + x232 - x256 =E= -6.66162297937126;

e91..    x65 + x233 - x257 =E= -6.98804250536045;

e92..    x67 + x234 - x258 =E= -7.33045658812312;

e93..    x69 + x235 - x259 =E= -7.68964896094115;

e94..    x1 - x71 + x213 - x261 =E= 0;

e95..    x2 - x72 + x214 - x262 =E= 0;

e96..    x3 - x73 + x215 - x263 =E= 0;

e97..    x4 - x74 + x216 - x264 =E= 0;

e98..    x5 - x75 + x217 - x265 =E= 0;

e99..    x6 - x76 + x218 - x266 =E= 0;

e100..    x7 - x77 + x219 - x267 =E= 0;

e101..    x8 - x78 + x220 - x268 =E= 0;

e102..    x9 - x79 + x221 - x269 =E= 0;

e103..    x10 - x80 + x222 - x270 =E= 0;

e104..    x11 - x81 + x223 - x271 =E= 0;

e105..    x12 - x82 + x224 - x272 =E= 0;

e106..    x13 - x83 + x225 - x273 =E= 0;

e107..    x14 - x84 + x226 - x274 =E= 0;

e108..    x15 - x85 + x227 - x275 =E= 0;

e109..    x16 - x86 + x228 - x276 =E= 0;

e110..    x17 - x87 + x229 - x277 =E= 0;

e111..    x18 - x88 + x230 - x278 =E= 0;

e112..    x19 - x89 + x231 - x279 =E= 0;

e113..    x20 - x90 + x232 - x280 =E= 0;

e114..    x21 - x91 + x233 - x281 =E= 0;

e115..    x22 - x92 + x234 - x282 =E= 0;

e116..    x23 - x93 + x235 - x283 =E= 0;

e117..    x24 - 0.333333333333333*x144 =L= 37.38;

e118..    x25 - 0.222222222222222*x145 =L= 0;

e119..    x26 - 0.333333333333333*x146 =L= 37.38;

e120..    x27 - 0.222222222222222*x147 =L= 0;

e121..    x28 - 0.333333333333333*x148 =L= 37.38;

e122..    x29 - 0.222222222222222*x149 =L= 0;

e123..    x30 - 0.333333333333333*x150 =L= 37.38;

e124..    x31 - 0.222222222222222*x151 =L= 0;

e125..    x32 - 0.333333333333333*x152 =L= 37.38;

e126..    x33 - 0.222222222222222*x153 =L= 0;

e127..    x34 - 0.333333333333333*x154 =L= 37.38;

e128..    x35 - 0.222222222222222*x155 =L= 0;

e129..    x36 - 0.333333333333333*x156 =L= 37.38;

e130..    x37 - 0.222222222222222*x157 =L= 0;

e131..    x38 - 0.333333333333333*x158 =L= 37.38;

e132..    x39 - 0.222222222222222*x159 =L= 0;

e133..    x40 - 0.333333333333333*x160 =L= 37.38;

e134..    x41 - 0.222222222222222*x161 =L= 0;

e135..    x42 - 0.333333333333333*x162 =L= 37.38;

e136..    x43 - 0.222222222222222*x163 =L= 0;

e137..    x44 - 0.333333333333333*x164 =L= 37.38;

e138..    x45 - 0.222222222222222*x165 =L= 0;

e139..    x46 - 0.333333333333333*x166 =L= 37.38;

e140..    x47 - 0.222222222222222*x167 =L= 0;

e141..    x48 - 0.333333333333333*x168 =L= 37.38;

e142..    x49 - 0.222222222222222*x169 =L= 0;

e143..    x50 - 0.333333333333333*x170 =L= 37.38;

e144..    x51 - 0.222222222222222*x171 =L= 0;

e145..    x52 - 0.333333333333333*x172 =L= 37.38;

e146..    x53 - 0.222222222222222*x173 =L= 0;

e147..    x54 - 0.333333333333333*x174 =L= 37.38;

e148..    x55 - 0.222222222222222*x175 =L= 0;

e149..    x56 - 0.333333333333333*x176 =L= 37.38;

e150..    x57 - 0.222222222222222*x177 =L= 0;

e151..    x58 - 0.333333333333333*x178 =L= 37.38;

e152..    x59 - 0.222222222222222*x179 =L= 0;

e153..    x60 - 0.333333333333333*x180 =L= 37.38;

e154..    x61 - 0.222222222222222*x181 =L= 0;

e155..    x62 - 0.333333333333333*x182 =L= 37.38;

e156..    x63 - 0.222222222222222*x183 =L= 0;

e157..    x64 - 0.333333333333333*x184 =L= 37.38;

e158..    x65 - 0.222222222222222*x185 =L= 0;

e159..    x66 - 0.333333333333333*x186 =L= 37.38;

e160..    x67 - 0.222222222222222*x187 =L= 0;

e161..    x68 - 0.333333333333333*x188 =L= 37.38;

e162..    x69 - 0.222222222222222*x189 =L= 0;

e163..  - x94 - x142 + x144 =E= 0;

e164..  - x95 - x143 + x145 =E= 0;

e165..  - x96 - x144 + x146 =E= 0;

e166..  - x97 - x145 + x147 =E= 0;

e167..  - x98 - x146 + x148 =E= 0;

e168..  - x99 - x147 + x149 =E= 0;

e169..  - x100 - x148 + x150 =E= 0;

e170..  - x101 - x149 + x151 =E= 0;

e171..  - x102 - x150 + x152 =E= 0;

e172..  - x103 - x151 + x153 =E= 0;

e173..  - x104 - x152 + x154 =E= 0;

e174..  - x105 - x153 + x155 =E= 0;

e175..  - x106 - x154 + x156 =E= 0;

e176..  - x107 - x155 + x157 =E= 0;

e177..  - x108 - x156 + x158 =E= 0;

e178..  - x109 - x157 + x159 =E= 0;

e179..  - x110 - x158 + x160 =E= 0;

e180..  - x111 - x159 + x161 =E= 0;

e181..  - x112 - x160 + x162 =E= 0;

e182..  - x113 - x161 + x163 =E= 0;

e183..  - x114 - x162 + x164 =E= 0;

e184..  - x115 - x163 + x165 =E= 0;

e185..  - x116 - x164 + x166 =E= 0;

e186..  - x117 - x165 + x167 =E= 0;

e187..  - x118 - x166 + x168 =E= 0;

e188..  - x119 - x167 + x169 =E= 0;

e189..  - x120 - x168 + x170 =E= 0;

e190..  - x121 - x169 + x171 =E= 0;

e191..  - x122 - x170 + x172 =E= 0;

e192..  - x123 - x171 + x173 =E= 0;

e193..  - x124 - x172 + x174 =E= 0;

e194..  - x125 - x173 + x175 =E= 0;

e195..  - x126 - x174 + x176 =E= 0;

e196..  - x127 - x175 + x177 =E= 0;

e197..  - x128 - x176 + x178 =E= 0;

e198..  - x129 - x177 + x179 =E= 0;

e199..  - x130 - x178 + x180 =E= 0;

e200..  - x131 - x179 + x181 =E= 0;

e201..  - x132 - x180 + x182 =E= 0;

e202..  - x133 - x181 + x183 =E= 0;

e203..  - x134 - x182 + x184 =E= 0;

e204..  - x135 - x183 + x185 =E= 0;

e205..  - x136 - x184 + x186 =E= 0;

e206..  - x137 - x185 + x187 =E= 0;

e207..  - x138 - x186 + x188 =E= 0;

e208..  - x139 - x187 + x189 =E= 0;

e209..  - 0.24*x1 + x190 =L= -5.5902;

e210..  - 0.24*x2 + x191 =L= -5.5902;

e211..  - 0.24*x3 + x192 =L= -5.5902;

e212..  - 0.24*x4 + x193 =L= -5.5902;

e213..  - 0.24*x5 + x194 =L= -5.5902;

e214..  - 0.24*x6 + x195 =L= -5.5902;

e215..  - 0.24*x7 + x196 =L= -5.5902;

e216..  - 0.24*x8 + x197 =L= -5.5902;

e217..  - 0.24*x9 + x198 =L= -5.5902;

e218..  - 0.24*x10 + x199 =L= -5.5902;

e219..  - 0.24*x11 + x200 =L= -5.5902;

e220..  - 0.24*x12 + x201 =L= -5.5902;

e221..  - 0.24*x13 + x202 =L= -5.5902;

e222..  - 0.24*x14 + x203 =L= -5.5902;

e223..  - 0.24*x15 + x204 =L= -5.5902;

e224..  - 0.24*x16 + x205 =L= -5.5902;

e225..  - 0.24*x17 + x206 =L= -5.5902;

e226..  - 0.24*x18 + x207 =L= -5.5902;

e227..  - 0.24*x19 + x208 =L= -5.5902;

e228..  - 0.24*x20 + x209 =L= -5.5902;

e229..  - 0.24*x21 + x210 =L= -5.5902;

e230..  - 0.24*x22 + x211 =L= -5.5902;

e231..  - 0.24*x23 + x212 =L= -5.5902;

e232..  - 0.1*x1 - 0.35*x71 + x237 =G= -1.5924;

e233..  - 0.1*x2 - 0.35*x72 + x238 =G= -1.5924;

e234..  - 0.1*x3 - 0.35*x73 + x239 =G= -1.5924;

e235..  - 0.1*x4 - 0.35*x74 + x240 =G= -1.5924;

e236..  - 0.1*x5 - 0.35*x75 + x241 =G= -1.5924;

e237..  - 0.1*x6 - 0.35*x76 + x242 =G= -1.5924;

e238..  - 0.1*x7 - 0.35*x77 + x243 =G= -1.5924;

e239..  - 0.1*x8 - 0.35*x78 + x244 =G= -1.5924;

e240..  - 0.1*x9 - 0.35*x79 + x245 =G= -1.5924;

e241..  - 0.1*x10 - 0.35*x80 + x246 =G= -1.5924;

e242..  - 0.1*x11 - 0.35*x81 + x247 =G= -1.5924;

e243..  - 0.1*x12 - 0.35*x82 + x248 =G= -1.5924;

e244..  - 0.1*x13 - 0.35*x83 + x249 =G= -1.5924;

e245..  - 0.1*x14 - 0.35*x84 + x250 =G= -1.5924;

e246..  - 0.1*x15 - 0.35*x85 + x251 =G= -1.5924;

e247..  - 0.1*x16 - 0.35*x86 + x252 =G= -1.5924;

e248..  - 0.1*x17 - 0.35*x87 + x253 =G= -1.5924;

e249..  - 0.1*x18 - 0.35*x88 + x254 =G= -1.5924;

e250..  - 0.1*x19 - 0.35*x89 + x255 =G= -1.5924;

e251..  - 0.1*x20 - 0.35*x90 + x256 =G= -1.5924;

e252..  - 0.1*x21 - 0.35*x91 + x257 =G= -1.5924;

e253..  - 0.1*x22 - 0.35*x92 + x258 =G= -1.5924;

e254..  - 0.1*x23 - 0.35*x93 + x259 =G= -1.5924;

e255..  - 1.13*x70 + x71 =L= 0;

e256..  - 1.13*x71 + x72 =L= 0;

e257..  - 1.13*x72 + x73 =L= 0;

e258..  - 1.13*x73 + x74 =L= 0;

e259..  - 1.13*x74 + x75 =L= 0;

e260..  - 1.13*x75 + x76 =L= 0;

e261..  - 1.13*x76 + x77 =L= 0;

e262..  - 1.13*x77 + x78 =L= 0;

e263..  - 1.13*x78 + x79 =L= 0;

e264..  - 1.13*x79 + x80 =L= 0;

e265..  - 1.13*x80 + x81 =L= 0;

e266..  - 1.13*x81 + x82 =L= 0;

e267..  - 1.13*x82 + x83 =L= 0;

e268..  - 1.13*x83 + x84 =L= 0;

e269..  - 1.13*x84 + x85 =L= 0;

e270..  - 1.13*x85 + x86 =L= 0;

e271..  - 1.13*x86 + x87 =L= 0;

e272..  - 1.13*x87 + x88 =L= 0;

e273..  - 1.13*x88 + x89 =L= 0;

e274..  - 1.13*x89 + x90 =L= 0;

e275..  - 1.13*x90 + x91 =L= 0;

e276..  - 1.13*x91 + x92 =L= 0;

e277..  - 1.13*x92 + x93 =L= 0;

e278..  - x70 + x71 =G= 0;

e279..  - x71 + x72 =G= 0;

e280..  - x72 + x73 =G= 0;

e281..  - x73 + x74 =G= 0;

e282..  - x74 + x75 =G= 0;

e283..  - x75 + x76 =G= 0;

e284..  - x76 + x77 =G= 0;

e285..  - x77 + x78 =G= 0;

e286..  - x78 + x79 =G= 0;

e287..  - x79 + x80 =G= 0;

e288..  - x80 + x81 =G= 0;

e289..  - x81 + x82 =G= 0;

e290..  - x82 + x83 =G= 0;

e291..  - x83 + x84 =G= 0;

e292..  - x84 + x85 =G= 0;

e293..  - x85 + x86 =G= 0;

e294..  - x86 + x87 =G= 0;

e295..  - x87 + x88 =G= 0;

e296..  - x88 + x89 =G= 0;

e297..  - x89 + x90 =G= 0;

e298..  - x90 + x91 =G= 0;

e299..  - x91 + x92 =G= 0;

e300..  - x92 + x93 =G= 0;

e301..  - 1.025*x260 + x261 =G= 0;

e302..  - 1.025*x261 + x262 =G= 0;

e303..  - 1.025*x262 + x263 =G= 0;

e304..  - 1.025*x263 + x264 =G= 0;

e305..  - 1.025*x264 + x265 =G= 0;

e306..  - 1.025*x265 + x266 =G= 0;

e307..  - 1.025*x266 + x267 =G= 0;

e308..  - 1.025*x267 + x268 =G= 0;

e309..  - 1.025*x268 + x269 =G= 0;

e310..  - 1.025*x269 + x270 =G= 0;

e311..  - 1.025*x270 + x271 =G= 0;

e312..  - 1.025*x271 + x272 =G= 0;

e313..  - 1.025*x272 + x273 =G= 0;

e314..  - 1.025*x273 + x274 =G= 0;

e315..  - 1.025*x274 + x275 =G= 0;

e316..  - 1.025*x275 + x276 =G= 0;

e317..  - 1.025*x276 + x277 =G= 0;

e318..  - 1.025*x277 + x278 =G= 0;

e319..  - 1.025*x278 + x279 =G= 0;

e320..  - 1.025*x279 + x280 =G= 0;

e321..  - 1.025*x280 + x281 =G= 0;

e322..  - 1.025*x281 + x282 =G= 0;

e323..  - 1.025*x282 + x283 =G= 0;

e324..  - 0.5*x1 + x213 =L= 0;

e325..  - 0.5*x2 + x214 =L= 0;

e326..  - 0.5*x3 + x215 =L= 0;

e327..  - 0.5*x4 + x216 =L= 0;

e328..  - 0.5*x5 + x217 =L= 0;

e329..  - 0.5*x6 + x218 =L= 0;

e330..  - 0.5*x7 + x219 =L= 0;

e331..  - 0.5*x8 + x220 =L= 0;

e332..  - 0.5*x9 + x221 =L= 0;

e333..  - 0.5*x10 + x222 =L= 0;

e334..  - 0.5*x11 + x223 =L= 0;

e335..  - 0.5*x12 + x224 =L= 0;

e336..  - 0.5*x13 + x225 =L= 0;

e337..  - 0.5*x14 + x226 =L= 0;

e338..  - 0.5*x15 + x227 =L= 0;

e339..  - 0.5*x16 + x228 =L= 0;

e340..  - 0.5*x17 + x229 =L= 0;

e341..  - 0.5*x18 + x230 =L= 0;

e342..  - 0.5*x19 + x231 =L= 0;

e343..  - 0.5*x20 + x232 =L= 0;

e344..  - 0.5*x21 + x233 =L= 0;

e345..  - 0.5*x22 + x234 =L= 0;

e346..  - 0.5*x23 + x235 =L= 0;

e347..  - 0.925925925925926*x213 - 0.857338820301783*x214
        - 0.793832241020169*x215 - 0.735029852796453*x216
        - 0.680583197033753*x217 - 0.630169626883105*x218
        - 0.583490395262134*x219 - 0.540268884501976*x220
        - 0.500248967131459*x221 - 0.463193488084684*x222
        - 0.42888285933767*x223 - 0.397113758645991*x224
        - 0.367697924672214*x225 - 0.340461041363161*x226
        - 0.31524170496589*x227 - 0.291890467561009*x228
        - 0.270268951445379*x229 - 0.250249029116091*x230
        - 0.231712063996381*x231 - 0.214548207404056*x232
        - 0.198655747596349*x233 - 0.183940507033656*x234
        - 0.170315284290422*x235 + x236 =E= 0;

e348..  - 3.37301126363159*x23 + 2*x236 - 0.925925925925926*x261
        - 0.857338820301783*x262 - 0.793832241020169*x263
        - 0.735029852796453*x264 - 0.680583197033753*x265
        - 0.630169626883105*x266 - 0.583490395262134*x267
        - 0.540268884501976*x268 - 0.500248967131459*x269
        - 0.463193488084684*x270 - 0.42888285933767*x271
        - 0.397113758645991*x272 - 0.367697924672214*x273
        - 0.340461041363161*x274 - 0.31524170496589*x275
        - 0.291890467561009*x276 - 0.270268951445379*x277
        - 0.250249029116091*x278 - 0.231712063996381*x279
        - 0.214548207404056*x280 - 0.198655747596349*x281
        - 0.183940507033656*x282 - 0.170315284290422*x283 + x284 =E= 0;

* set non-default bounds
x94.fx = 4.564;
x95.fx = 0;
x142.fx = 0;
x143.fx = 0;
x260.fx = 33.999;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x284;