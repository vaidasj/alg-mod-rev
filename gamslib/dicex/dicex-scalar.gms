*  MIP written by GAMS Convert at 12/13/18 11:23:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        162       39      108       15        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        451       19      432        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1131     1131        0        0
*
*  Solve m using MIP maximizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129
          ,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140,b141,b142
          ,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153,b154,b155
          ,b156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167,b168
          ,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180,b181
          ,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193,b194
          ,b195,b196,b197,b198,b199,b200,b201,b202,b203,b204,b205,b206,b207
          ,b208,b209,b210,b211,b212,b213,b214,b215,b216,b217,b218,b219,b220
          ,b221,b222,b223,b224,b225,b226,b227,b228,b229,b230,b231,b232,b233
          ,b234,b235,b236,b237,b238,b239,b240,b241,b242,b243,b244,b245,b246
          ,b247,b248,b249,b250,b251,b252,b253,b254,b255,b256,b257,b258,b259
          ,b260,b261,b262,b263,b264,b265,b266,b267,b268,b269,b270,b271,b272
          ,b273,b274,b275,b276,b277,b278,b279,b280,b281,b282,b283,b284,b285
          ,b286,b287,b288,b289,b290,b291,b292,b293,b294,b295,b296,b297,b298
          ,b299,b300,b301,b302,b303,b304,b305,b306,b307,b308,b309,b310,b311
          ,b312,b313,b314,b315,b316,b317,b318,b319,b320,b321,b322,b323,b324
          ,b325,b326,b327,b328,b329,b330,b331,b332,b333,b334,b335,b336,b337
          ,b338,b339,b340,b341,b342,b343,b344,b345,b346,b347,b348,b349,b350
          ,b351,b352,b353,b354,b355,b356,b357,b358,b359,b360,b361,b362,b363
          ,b364,b365,b366,b367,b368,b369,b370,b371,b372,b373,b374,b375,b376
          ,b377,b378,b379,b380,b381,b382,b383,b384,b385,b386,b387,b388,b389
          ,b390,b391,b392,b393,b394,b395,b396,b397,b398,b399,b400,b401,b402
          ,b403,b404,b405,b406,b407,b408,b409,b410,b411,b412,b413,b414,b415
          ,b416,b417,b418,b419,b420,b421,b422,b423,b424,b425,b426,b427,b428
          ,b429,b430,b431,b432,b433,b434,b435,b436,b437,b438,b439,b440,b441
          ,b442,b443,b444,b445,b446,b447,b448,b449,b450,b451;

Binary Variables  b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,b32,b33,b34
          ,b35,b36,b37,b38,b39,b40,b41,b42,b43,b44,b45,b46,b47,b48,b49,b50,b51
          ,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68
          ,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85
          ,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101
          ,b102,b103,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114
          ,b115,b116,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127
          ,b128,b129,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140
          ,b141,b142,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153
          ,b154,b155,b156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166
          ,b167,b168,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179
          ,b180,b181,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192
          ,b193,b194,b195,b196,b197,b198,b199,b200,b201,b202,b203,b204,b205
          ,b206,b207,b208,b209,b210,b211,b212,b213,b214,b215,b216,b217,b218
          ,b219,b220,b221,b222,b223,b224,b225,b226,b227,b228,b229,b230,b231
          ,b232,b233,b234,b235,b236,b237,b238,b239,b240,b241,b242,b243,b244
          ,b245,b246,b247,b248,b249,b250,b251,b252,b253,b254,b255,b256,b257
          ,b258,b259,b260,b261,b262,b263,b264,b265,b266,b267,b268,b269,b270
          ,b271,b272,b273,b274,b275,b276,b277,b278,b279,b280,b281,b282,b283
          ,b284,b285,b286,b287,b288,b289,b290,b291,b292,b293,b294,b295,b296
          ,b297,b298,b299,b300,b301,b302,b303,b304,b305,b306,b307,b308,b309
          ,b310,b311,b312,b313,b314,b315,b316,b317,b318,b319,b320,b321,b322
          ,b323,b324,b325,b326,b327,b328,b329,b330,b331,b332,b333,b334,b335
          ,b336,b337,b338,b339,b340,b341,b342,b343,b344,b345,b346,b347,b348
          ,b349,b350,b351,b352,b353,b354,b355,b356,b357,b358,b359,b360,b361
          ,b362,b363,b364,b365,b366,b367,b368,b369,b370,b371,b372,b373,b374
          ,b375,b376,b377,b378,b379,b380,b381,b382,b383,b384,b385,b386,b387
          ,b388,b389,b390,b391,b392,b393,b394,b395,b396,b397,b398,b399,b400
          ,b401,b402,b403,b404,b405,b406,b407,b408,b409,b410,b411,b412,b413
          ,b414,b415,b416,b417,b418,b419,b420,b421,b422,b423,b424,b425,b426
          ,b427,b428,b429,b430,b431,b432,b433,b434,b435,b436,b437,b438,b439
          ,b440,b441,b442,b443,b444,b445,b446,b447,b448,b449,b450,b451;

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
          ,e156,e157,e158,e159,e160,e161,e162;


e1..  - x1 + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30
      + b31 + b32 + b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 + b41 + b42
      + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54
      + b55 =E= 0;

e2..  - x1 + b56 + b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66
      + b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78
      + b79 + b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90
      + b91 =E= 0;

e3..  - x1 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102
      + b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110 + b111 + b112
      + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 + b121 + b122
      + b123 + b124 + b125 + b126 + b127 =E= 0;

e4..    x2 - x8 - 17*b20 =G= -16;

e5..    x2 - x9 - 17*b21 =G= -16;

e6..    x2 - x10 - 17*b22 =G= -16;

e7..    x2 - x11 - 17*b23 =G= -16;

e8..    x2 - x12 - 17*b24 =G= -16;

e9..    x2 - x13 - 17*b25 =G= -16;

e10..    x3 - x8 - 17*b26 =G= -16;

e11..    x3 - x9 - 17*b27 =G= -16;

e12..    x3 - x10 - 17*b28 =G= -16;

e13..    x3 - x11 - 17*b29 =G= -16;

e14..    x3 - x12 - 17*b30 =G= -16;

e15..    x3 - x13 - 17*b31 =G= -16;

e16..    x4 - x8 - 17*b32 =G= -16;

e17..    x4 - x9 - 17*b33 =G= -16;

e18..    x4 - x10 - 17*b34 =G= -16;

e19..    x4 - x11 - 17*b35 =G= -16;

e20..    x4 - x12 - 17*b36 =G= -16;

e21..    x4 - x13 - 17*b37 =G= -16;

e22..    x5 - x8 - 17*b38 =G= -16;

e23..    x5 - x9 - 17*b39 =G= -16;

e24..    x5 - x10 - 17*b40 =G= -16;

e25..    x5 - x11 - 17*b41 =G= -16;

e26..    x5 - x12 - 17*b42 =G= -16;

e27..    x5 - x13 - 17*b43 =G= -16;

e28..    x6 - x8 - 17*b44 =G= -16;

e29..    x6 - x9 - 17*b45 =G= -16;

e30..    x6 - x10 - 17*b46 =G= -16;

e31..    x6 - x11 - 17*b47 =G= -16;

e32..    x6 - x12 - 17*b48 =G= -16;

e33..    x6 - x13 - 17*b49 =G= -16;

e34..    x7 - x8 - 17*b50 =G= -16;

e35..    x7 - x9 - 17*b51 =G= -16;

e36..    x7 - x10 - 17*b52 =G= -16;

e37..    x7 - x11 - 17*b53 =G= -16;

e38..    x7 - x12 - 17*b54 =G= -16;

e39..    x7 - x13 - 17*b55 =G= -16;

e40..    x8 - x14 - 17*b56 =G= -16;

e41..    x8 - x15 - 17*b57 =G= -16;

e42..    x8 - x16 - 17*b58 =G= -16;

e43..    x8 - x17 - 17*b59 =G= -16;

e44..    x8 - x18 - 17*b60 =G= -16;

e45..    x8 - x19 - 17*b61 =G= -16;

e46..    x9 - x14 - 17*b62 =G= -16;

e47..    x9 - x15 - 17*b63 =G= -16;

e48..    x9 - x16 - 17*b64 =G= -16;

e49..    x9 - x17 - 17*b65 =G= -16;

e50..    x9 - x18 - 17*b66 =G= -16;

e51..    x9 - x19 - 17*b67 =G= -16;

e52..    x10 - x14 - 17*b68 =G= -16;

e53..    x10 - x15 - 17*b69 =G= -16;

e54..    x10 - x16 - 17*b70 =G= -16;

e55..    x10 - x17 - 17*b71 =G= -16;

e56..    x10 - x18 - 17*b72 =G= -16;

e57..    x10 - x19 - 17*b73 =G= -16;

e58..    x11 - x14 - 17*b74 =G= -16;

e59..    x11 - x15 - 17*b75 =G= -16;

e60..    x11 - x16 - 17*b76 =G= -16;

e61..    x11 - x17 - 17*b77 =G= -16;

e62..    x11 - x18 - 17*b78 =G= -16;

e63..    x11 - x19 - 17*b79 =G= -16;

e64..    x12 - x14 - 17*b80 =G= -16;

e65..    x12 - x15 - 17*b81 =G= -16;

e66..    x12 - x16 - 17*b82 =G= -16;

e67..    x12 - x17 - 17*b83 =G= -16;

e68..    x12 - x18 - 17*b84 =G= -16;

e69..    x12 - x19 - 17*b85 =G= -16;

e70..    x13 - x14 - 17*b86 =G= -16;

e71..    x13 - x15 - 17*b87 =G= -16;

e72..    x13 - x16 - 17*b88 =G= -16;

e73..    x13 - x17 - 17*b89 =G= -16;

e74..    x13 - x18 - 17*b90 =G= -16;

e75..    x13 - x19 - 17*b91 =G= -16;

e76..  - x2 + x14 - 17*b92 =G= -16;

e77..  - x3 + x14 - 17*b93 =G= -16;

e78..  - x4 + x14 - 17*b94 =G= -16;

e79..  - x5 + x14 - 17*b95 =G= -16;

e80..  - x6 + x14 - 17*b96 =G= -16;

e81..  - x7 + x14 - 17*b97 =G= -16;

e82..  - x2 + x15 - 17*b98 =G= -16;

e83..  - x3 + x15 - 17*b99 =G= -16;

e84..  - x4 + x15 - 17*b100 =G= -16;

e85..  - x5 + x15 - 17*b101 =G= -16;

e86..  - x6 + x15 - 17*b102 =G= -16;

e87..  - x7 + x15 - 17*b103 =G= -16;

e88..  - x2 + x16 - 17*b104 =G= -16;

e89..  - x3 + x16 - 17*b105 =G= -16;

e90..  - x4 + x16 - 17*b106 =G= -16;

e91..  - x5 + x16 - 17*b107 =G= -16;

e92..  - x6 + x16 - 17*b108 =G= -16;

e93..  - x7 + x16 - 17*b109 =G= -16;

e94..  - x2 + x17 - 17*b110 =G= -16;

e95..  - x3 + x17 - 17*b111 =G= -16;

e96..  - x4 + x17 - 17*b112 =G= -16;

e97..  - x5 + x17 - 17*b113 =G= -16;

e98..  - x6 + x17 - 17*b114 =G= -16;

e99..  - x7 + x17 - 17*b115 =G= -16;

e100..  - x2 + x18 - 17*b116 =G= -16;

e101..  - x3 + x18 - 17*b117 =G= -16;

e102..  - x4 + x18 - 17*b118 =G= -16;

e103..  - x5 + x18 - 17*b119 =G= -16;

e104..  - x6 + x18 - 17*b120 =G= -16;

e105..  - x7 + x18 - 17*b121 =G= -16;

e106..  - x2 + x19 - 17*b122 =G= -16;

e107..  - x3 + x19 - 17*b123 =G= -16;

e108..  - x4 + x19 - 17*b124 =G= -16;

e109..  - x5 + x19 - 17*b125 =G= -16;

e110..  - x6 + x19 - 17*b126 =G= -16;

e111..  - x7 + x19 - 17*b127 =G= -16;

e112..    x2 - x3 =L= -1;

e113..    x3 - x4 =L= -1;

e114..    x4 - x5 =L= -1;

e115..    x5 - x6 =L= -1;

e116..    x6 - x7 =L= -1;

e117..    x8 - x9 =L= -1;

e118..    x9 - x10 =L= -1;

e119..    x10 - x11 =L= -1;

e120..    x11 - x12 =L= -1;

e121..    x12 - x13 =L= -1;

e122..    x14 - x15 =L= -1;

e123..    x15 - x16 =L= -1;

e124..    x16 - x17 =L= -1;

e125..    x17 - x18 =L= -1;

e126..    x18 - x19 =L= -1;

e127..  - x2 + b128 + 2*b129 + 3*b130 + 4*b131 + 5*b132 + 6*b133 + 7*b134
        + 8*b135 + 9*b136 + 10*b137 + 11*b138 + 12*b139 + 13*b140 + 14*b141
        + 15*b142 + 16*b143 + 17*b144 + 18*b145 =E= 0;

e128..  - x3 + b146 + 2*b147 + 3*b148 + 4*b149 + 5*b150 + 6*b151 + 7*b152
        + 8*b153 + 9*b154 + 10*b155 + 11*b156 + 12*b157 + 13*b158 + 14*b159
        + 15*b160 + 16*b161 + 17*b162 + 18*b163 =E= 0;

e129..  - x4 + b164 + 2*b165 + 3*b166 + 4*b167 + 5*b168 + 6*b169 + 7*b170
        + 8*b171 + 9*b172 + 10*b173 + 11*b174 + 12*b175 + 13*b176 + 14*b177
        + 15*b178 + 16*b179 + 17*b180 + 18*b181 =E= 0;

e130..  - x5 + b182 + 2*b183 + 3*b184 + 4*b185 + 5*b186 + 6*b187 + 7*b188
        + 8*b189 + 9*b190 + 10*b191 + 11*b192 + 12*b193 + 13*b194 + 14*b195
        + 15*b196 + 16*b197 + 17*b198 + 18*b199 =E= 0;

e131..  - x6 + b200 + 2*b201 + 3*b202 + 4*b203 + 5*b204 + 6*b205 + 7*b206
        + 8*b207 + 9*b208 + 10*b209 + 11*b210 + 12*b211 + 13*b212 + 14*b213
        + 15*b214 + 16*b215 + 17*b216 + 18*b217 =E= 0;

e132..  - x7 + b218 + 2*b219 + 3*b220 + 4*b221 + 5*b222 + 6*b223 + 7*b224
        + 8*b225 + 9*b226 + 10*b227 + 11*b228 + 12*b229 + 13*b230 + 14*b231
        + 15*b232 + 16*b233 + 17*b234 + 18*b235 =E= 0;

e133..  - x8 + b236 + 2*b237 + 3*b238 + 4*b239 + 5*b240 + 6*b241 + 7*b242
        + 8*b243 + 9*b244 + 10*b245 + 11*b246 + 12*b247 + 13*b248 + 14*b249
        + 15*b250 + 16*b251 + 17*b252 + 18*b253 =E= 0;

e134..  - x9 + b254 + 2*b255 + 3*b256 + 4*b257 + 5*b258 + 6*b259 + 7*b260
        + 8*b261 + 9*b262 + 10*b263 + 11*b264 + 12*b265 + 13*b266 + 14*b267
        + 15*b268 + 16*b269 + 17*b270 + 18*b271 =E= 0;

e135..  - x10 + b272 + 2*b273 + 3*b274 + 4*b275 + 5*b276 + 6*b277 + 7*b278
        + 8*b279 + 9*b280 + 10*b281 + 11*b282 + 12*b283 + 13*b284 + 14*b285
        + 15*b286 + 16*b287 + 17*b288 + 18*b289 =E= 0;

e136..  - x11 + b290 + 2*b291 + 3*b292 + 4*b293 + 5*b294 + 6*b295 + 7*b296
        + 8*b297 + 9*b298 + 10*b299 + 11*b300 + 12*b301 + 13*b302 + 14*b303
        + 15*b304 + 16*b305 + 17*b306 + 18*b307 =E= 0;

e137..  - x12 + b308 + 2*b309 + 3*b310 + 4*b311 + 5*b312 + 6*b313 + 7*b314
        + 8*b315 + 9*b316 + 10*b317 + 11*b318 + 12*b319 + 13*b320 + 14*b321
        + 15*b322 + 16*b323 + 17*b324 + 18*b325 =E= 0;

e138..  - x13 + b326 + 2*b327 + 3*b328 + 4*b329 + 5*b330 + 6*b331 + 7*b332
        + 8*b333 + 9*b334 + 10*b335 + 11*b336 + 12*b337 + 13*b338 + 14*b339
        + 15*b340 + 16*b341 + 17*b342 + 18*b343 =E= 0;

e139..  - x14 + b344 + 2*b345 + 3*b346 + 4*b347 + 5*b348 + 6*b349 + 7*b350
        + 8*b351 + 9*b352 + 10*b353 + 11*b354 + 12*b355 + 13*b356 + 14*b357
        + 15*b358 + 16*b359 + 17*b360 + 18*b361 =E= 0;

e140..  - x15 + b362 + 2*b363 + 3*b364 + 4*b365 + 5*b366 + 6*b367 + 7*b368
        + 8*b369 + 9*b370 + 10*b371 + 11*b372 + 12*b373 + 13*b374 + 14*b375
        + 15*b376 + 16*b377 + 17*b378 + 18*b379 =E= 0;

e141..  - x16 + b380 + 2*b381 + 3*b382 + 4*b383 + 5*b384 + 6*b385 + 7*b386
        + 8*b387 + 9*b388 + 10*b389 + 11*b390 + 12*b391 + 13*b392 + 14*b393
        + 15*b394 + 16*b395 + 17*b396 + 18*b397 =E= 0;

e142..  - x17 + b398 + 2*b399 + 3*b400 + 4*b401 + 5*b402 + 6*b403 + 7*b404
        + 8*b405 + 9*b406 + 10*b407 + 11*b408 + 12*b409 + 13*b410 + 14*b411
        + 15*b412 + 16*b413 + 17*b414 + 18*b415 =E= 0;

e143..  - x18 + b416 + 2*b417 + 3*b418 + 4*b419 + 5*b420 + 6*b421 + 7*b422
        + 8*b423 + 9*b424 + 10*b425 + 11*b426 + 12*b427 + 13*b428 + 14*b429
        + 15*b430 + 16*b431 + 17*b432 + 18*b433 =E= 0;

e144..  - x19 + b434 + 2*b435 + 3*b436 + 4*b437 + 5*b438 + 6*b439 + 7*b440
        + 8*b441 + 9*b442 + 10*b443 + 11*b444 + 12*b445 + 13*b446 + 14*b447
        + 15*b448 + 16*b449 + 17*b450 + 18*b451 =E= 0;

e145..    b128 + b146 + b164 + b182 + b200 + b218 + b236 + b254 + b272 + b290
        + b308 + b326 + b344 + b362 + b380 + b398 + b416 + b434 =E= 1;

e146..    b129 + b147 + b165 + b183 + b201 + b219 + b237 + b255 + b273 + b291
        + b309 + b327 + b345 + b363 + b381 + b399 + b417 + b435 =E= 1;

e147..    b130 + b148 + b166 + b184 + b202 + b220 + b238 + b256 + b274 + b292
        + b310 + b328 + b346 + b364 + b382 + b400 + b418 + b436 =E= 1;

e148..    b131 + b149 + b167 + b185 + b203 + b221 + b239 + b257 + b275 + b293
        + b311 + b329 + b347 + b365 + b383 + b401 + b419 + b437 =E= 1;

e149..    b132 + b150 + b168 + b186 + b204 + b222 + b240 + b258 + b276 + b294
        + b312 + b330 + b348 + b366 + b384 + b402 + b420 + b438 =E= 1;

e150..    b133 + b151 + b169 + b187 + b205 + b223 + b241 + b259 + b277 + b295
        + b313 + b331 + b349 + b367 + b385 + b403 + b421 + b439 =E= 1;

e151..    b134 + b152 + b170 + b188 + b206 + b224 + b242 + b260 + b278 + b296
        + b314 + b332 + b350 + b368 + b386 + b404 + b422 + b440 =E= 1;

e152..    b135 + b153 + b171 + b189 + b207 + b225 + b243 + b261 + b279 + b297
        + b315 + b333 + b351 + b369 + b387 + b405 + b423 + b441 =E= 1;

e153..    b136 + b154 + b172 + b190 + b208 + b226 + b244 + b262 + b280 + b298
        + b316 + b334 + b352 + b370 + b388 + b406 + b424 + b442 =E= 1;

e154..    b137 + b155 + b173 + b191 + b209 + b227 + b245 + b263 + b281 + b299
        + b317 + b335 + b353 + b371 + b389 + b407 + b425 + b443 =E= 1;

e155..    b138 + b156 + b174 + b192 + b210 + b228 + b246 + b264 + b282 + b300
        + b318 + b336 + b354 + b372 + b390 + b408 + b426 + b444 =E= 1;

e156..    b139 + b157 + b175 + b193 + b211 + b229 + b247 + b265 + b283 + b301
        + b319 + b337 + b355 + b373 + b391 + b409 + b427 + b445 =E= 1;

e157..    b140 + b158 + b176 + b194 + b212 + b230 + b248 + b266 + b284 + b302
        + b320 + b338 + b356 + b374 + b392 + b410 + b428 + b446 =E= 1;

e158..    b141 + b159 + b177 + b195 + b213 + b231 + b249 + b267 + b285 + b303
        + b321 + b339 + b357 + b375 + b393 + b411 + b429 + b447 =E= 1;

e159..    b142 + b160 + b178 + b196 + b214 + b232 + b250 + b268 + b286 + b304
        + b322 + b340 + b358 + b376 + b394 + b412 + b430 + b448 =E= 1;

e160..    b143 + b161 + b179 + b197 + b215 + b233 + b251 + b269 + b287 + b305
        + b323 + b341 + b359 + b377 + b395 + b413 + b431 + b449 =E= 1;

e161..    b144 + b162 + b180 + b198 + b216 + b234 + b252 + b270 + b288 + b306
        + b324 + b342 + b360 + b378 + b396 + b414 + b432 + b450 =E= 1;

e162..    b145 + b163 + b181 + b199 + b217 + b235 + b253 + b271 + b289 + b307
        + b325 + b343 + b361 + b379 + b397 + b415 + b433 + b451 =E= 1;

* set non-default bounds
x2.fx = 1;
x3.lo = 1; x3.up = 18;
x4.lo = 1; x4.up = 18;
x5.lo = 1; x5.up = 18;
x6.lo = 1; x6.up = 18;
x7.lo = 1; x7.up = 18;
x8.lo = 1; x8.up = 18;
x9.lo = 1; x9.up = 18;
x10.lo = 1; x10.up = 18;
x11.lo = 1; x11.up = 18;
x12.lo = 1; x12.up = 18;
x13.lo = 1; x13.up = 18;
x14.lo = 1; x14.up = 18;
x15.lo = 1; x15.up = 18;
x16.lo = 1; x16.up = 18;
x17.lo = 1; x17.up = 18;
x18.lo = 1; x18.up = 18;
x19.lo = 1; x19.up = 18;

* set non-default levels
x3.l = 1;
x4.l = 1;
x5.l = 1;
x6.l = 1;
x7.l = 1;
x8.l = 1;
x9.l = 1;
x10.l = 1;
x11.l = 1;
x12.l = 1;
x13.l = 1;
x14.l = 1;
x15.l = 1;
x16.l = 1;
x17.l = 1;
x18.l = 1;
x19.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
m.optca      = 0.99;
m.reslim     = 50;
Solve m using MIP maximizing x1;
