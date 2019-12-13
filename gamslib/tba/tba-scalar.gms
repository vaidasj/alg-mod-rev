*  MIP written by GAMS Convert at 12/13/18 10:24:52
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        487       67      294      126        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        255       56      144       55        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       1619     1619        0        0
*
*  Solve m using MIP maximizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129
          ,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140,b141,b142
          ,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153,b154,b155
          ,b156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167,b168
          ,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180,b181
          ,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193,b194
          ,b195,b196,b197,b198,b199,b200,i201,i202,i203,i204,i205,i206,i207
          ,i208,i209,i210,i211,i212,i213,i214,i215,i216,i217,i218,i219,i220
          ,i221,i222,i223,i224,i225,i226,i227,i228,i229,i230,i231,i232,i233
          ,i234,i235,i236,i237,i238,i239,i240,i241,i242,i243,i244,i245,i246
          ,i247,i248,i249,i250,i251,i252,i253,i254,i255;

Positive Variables  x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56;

Binary Variables  b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70,b71
          ,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87,b88
          ,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,b111,b112,b113,b114,b115,b116
          ,b117,b118,b119,b120,b121,b122,b123,b124,b125,b126,b127,b128,b129
          ,b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b140,b141,b142
          ,b143,b144,b145,b146,b147,b148,b149,b150,b151,b152,b153,b154,b155
          ,b156,b157,b158,b159,b160,b161,b162,b163,b164,b165,b166,b167,b168
          ,b169,b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b180,b181
          ,b182,b183,b184,b185,b186,b187,b188,b189,b190,b191,b192,b193,b194
          ,b195,b196,b197,b198,b199,b200;

Integer Variables  i201,i202,i203,i204,i205,i206,i207,i208,i209,i210,i211,i212
          ,i213,i214,i215,i216,i217,i218,i219,i220,i221,i222,i223,i224,i225
          ,i226,i227,i228,i229,i230,i231,i232,i233,i234,i235,i236,i237,i238
          ,i239,i240,i241,i242,i243,i244,i245,i246,i247,i248,i249,i250,i251
          ,i252,i253,i254,i255;

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
          ,e338,e339,e340,e341,e342,e343,e344,e345,e346,e347,e348,e349,e350
          ,e351,e352,e353,e354,e355,e356,e357,e358,e359,e360,e361,e362,e363
          ,e364,e365,e366,e367,e368,e369,e370,e371,e372,e373,e374,e375,e376
          ,e377,e378,e379,e380,e381,e382,e383,e384,e385,e386,e387,e388,e389
          ,e390,e391,e392,e393,e394,e395,e396,e397,e398,e399,e400,e401,e402
          ,e403,e404,e405,e406,e407,e408,e409,e410,e411,e412,e413,e414,e415
          ,e416,e417,e418,e419,e420,e421,e422,e423,e424,e425,e426,e427,e428
          ,e429,e430,e431,e432,e433,e434,e435,e436,e437,e438,e439,e440,e441
          ,e442,e443,e444,e445,e446,e447,e448,e449,e450,e451,e452,e453,e454
          ,e455,e456,e457,e458,e459,e460,e461,e462,e463,e464,e465,e466,e467
          ,e468,e469,e470,e471,e472,e473,e474,e475,e476,e477,e478,e479,e480
          ,e481,e482,e483,e484,e485,e486,e487;


e1..    x2 + x6 + x10 + x14 + x18 + x22 + x26 + x30 + x34 + x38 + x42
      - 950*b123 =G= 0;

e2..    x3 + x7 + x11 + x15 + x19 + x23 + x27 + x31 + x35 + x39 + x43
      - 950*b124 =G= 0;

e3..    x4 + x8 + x12 + x16 + x20 + x24 + x28 + x32 + x36 + x40 + x44
      - 950*b125 =G= 0;

e4..    x5 + x9 + x13 + x17 + x21 + x25 + x29 + x33 + x37 + x41 + x45
      - 950*b126 =G= 0;

e5..    x2 + x6 + x10 + x14 + x18 + x22 + x26 + x30 + x34 + x38 + x42
      - 1050*b123 =L= 0;

e6..    x3 + x7 + x11 + x15 + x19 + x23 + x27 + x31 + x35 + x39 + x43
      - 1050*b124 =L= 0;

e7..    x4 + x8 + x12 + x16 + x20 + x24 + x28 + x32 + x36 + x40 + x44
      - 1050*b125 =L= 0;

e8..    x5 + x9 + x13 + x17 + x21 + x25 + x29 + x33 + x37 + x41 + x45
      - 1050*b126 =L= 0;

e9..    x2 + x3 + x4 + x5 + x46 =E= 50;

e10..    x6 + x7 + x8 + x9 + x47 =E= 100;

e11..    x10 + x11 + x12 + x13 + x48 =E= 300;

e12..    x14 + x15 + x16 + x17 + x49 =E= 400;

e13..    x18 + x19 + x20 + x21 + x50 =E= 450;

e14..    x22 + x23 + x24 + x25 + x51 =E= 450;

e15..    x26 + x27 + x28 + x29 + x52 =E= 475;

e16..    x30 + x31 + x32 + x33 + x53 =E= 700;

e17..    x34 + x35 + x36 + x37 + x54 =E= 1000;

e18..    x38 + x39 + x40 + x41 + x55 =E= 1000;

e19..    x42 + x43 + x44 + x45 + x56 =E= 5000;

e20..    x2 + x6 + x10 + x14 + x18 + x22 + x26 + x30 + x34 - b123 =G= 0;

e21..    x3 + x7 + x11 + x15 + x19 + x23 + x27 + x31 + x35 - b124 =G= 0;

e22..    x4 + x8 + x12 + x16 + x20 + x24 + x28 + x32 + x36 - b125 =G= 0;

e23..    x5 + x9 + x13 + x17 + x21 + x25 + x29 + x33 + x37 - b126 =G= 0;

e24..    x2 - 25*b127 - 5*i201 =E= 0;

e25..    x3 - 25*b128 - 5*i202 =E= 0;

e26..    x4 - 25*b129 - 5*i203 =E= 0;

e27..    x5 - 25*b130 - 5*i204 =E= 0;

e28..    x6 - 25*b131 - 5*i205 =E= 0;

e29..    x7 - 25*b132 - 5*i206 =E= 0;

e30..    x8 - 25*b133 - 5*i207 =E= 0;

e31..    x9 - 25*b134 - 5*i208 =E= 0;

e32..    x10 - 25*b135 - 5*i209 =E= 0;

e33..    x11 - 25*b136 - 5*i210 =E= 0;

e34..    x12 - 25*b137 - 5*i211 =E= 0;

e35..    x13 - 25*b138 - 5*i212 =E= 0;

e36..    x14 - 25*b139 - 5*i213 =E= 0;

e37..    x15 - 25*b140 - 5*i214 =E= 0;

e38..    x16 - 25*b141 - 5*i215 =E= 0;

e39..    x17 - 25*b142 - 5*i216 =E= 0;

e40..    x18 - 25*b143 - 5*i217 =E= 0;

e41..    x19 - 25*b144 - 5*i218 =E= 0;

e42..    x20 - 25*b145 - 5*i219 =E= 0;

e43..    x21 - 25*b146 - 5*i220 =E= 0;

e44..    x22 - 25*b147 - 5*i221 =E= 0;

e45..    x23 - 25*b148 - 5*i222 =E= 0;

e46..    x24 - 25*b149 - 5*i223 =E= 0;

e47..    x25 - 25*b150 - 5*i224 =E= 0;

e48..    x26 - 25*b151 - 5*i225 =E= 0;

e49..    x27 - 25*b152 - 5*i226 =E= 0;

e50..    x28 - 25*b153 - 5*i227 =E= 0;

e51..    x29 - 25*b154 - 5*i228 =E= 0;

e52..    x30 - 25*b155 - 5*i229 =E= 0;

e53..    x31 - 25*b156 - 5*i230 =E= 0;

e54..    x32 - 25*b157 - 5*i231 =E= 0;

e55..    x33 - 25*b158 - 5*i232 =E= 0;

e56..    x34 - 25*b159 - 5*i233 =E= 0;

e57..    x35 - 25*b160 - 5*i234 =E= 0;

e58..    x36 - 25*b161 - 5*i235 =E= 0;

e59..    x37 - 25*b162 - 5*i236 =E= 0;

e60..    x38 - 25*b163 - 5*i237 =E= 0;

e61..    x39 - 25*b164 - 5*i238 =E= 0;

e62..    x40 - 25*b165 - 5*i239 =E= 0;

e63..    x41 - 25*b166 - 5*i240 =E= 0;

e64..    x42 - 25*b167 - 5*i241 =E= 0;

e65..    x43 - 25*b168 - 5*i242 =E= 0;

e66..    x44 - 25*b169 - 5*i243 =E= 0;

e67..    x45 - 25*b170 - 5*i244 =E= 0;

e68..  - 205*b127 + i201 =L= 0;

e69..  - 205*b128 + i202 =L= 0;

e70..  - 205*b129 + i203 =L= 0;

e71..  - 205*b130 + i204 =L= 0;

e72..  - 205*b131 + i205 =L= 0;

e73..  - 205*b132 + i206 =L= 0;

e74..  - 205*b133 + i207 =L= 0;

e75..  - 205*b134 + i208 =L= 0;

e76..  - 205*b135 + i209 =L= 0;

e77..  - 205*b136 + i210 =L= 0;

e78..  - 205*b137 + i211 =L= 0;

e79..  - 205*b138 + i212 =L= 0;

e80..  - 205*b139 + i213 =L= 0;

e81..  - 205*b140 + i214 =L= 0;

e82..  - 205*b141 + i215 =L= 0;

e83..  - 205*b142 + i216 =L= 0;

e84..  - 205*b143 + i217 =L= 0;

e85..  - 205*b144 + i218 =L= 0;

e86..  - 205*b145 + i219 =L= 0;

e87..  - 205*b146 + i220 =L= 0;

e88..  - 205*b147 + i221 =L= 0;

e89..  - 205*b148 + i222 =L= 0;

e90..  - 205*b149 + i223 =L= 0;

e91..  - 205*b150 + i224 =L= 0;

e92..  - 205*b151 + i225 =L= 0;

e93..  - 205*b152 + i226 =L= 0;

e94..  - 205*b153 + i227 =L= 0;

e95..  - 205*b154 + i228 =L= 0;

e96..  - 205*b155 + i229 =L= 0;

e97..  - 205*b156 + i230 =L= 0;

e98..  - 205*b157 + i231 =L= 0;

e99..  - 205*b158 + i232 =L= 0;

e100..  - 205*b159 + i233 =L= 0;

e101..  - 205*b160 + i234 =L= 0;

e102..  - 205*b161 + i235 =L= 0;

e103..  - 205*b162 + i236 =L= 0;

e104..  - 205*b163 + i237 =L= 0;

e105..  - 205*b164 + i238 =L= 0;

e106..  - 205*b165 + i239 =L= 0;

e107..  - 205*b166 + i240 =L= 0;

e108..  - 205*b167 + i241 =L= 0;

e109..  - 205*b168 + i242 =L= 0;

e110..  - 205*b169 + i243 =L= 0;

e111..  - 205*b170 + i244 =L= 0;

e112..    x46 - 25*b171 - 5*i245 =E= 0;

e113..    x47 - 25*b172 - 5*i246 =E= 0;

e114..    x48 - 25*b173 - 5*i247 =E= 0;

e115..    x49 - 25*b174 - 5*i248 =E= 0;

e116..    x50 - 25*b175 - 5*i249 =E= 0;

e117..    x51 - 25*b176 - 5*i250 =E= 0;

e118..    x52 - 25*b177 - 5*i251 =E= 0;

e119..    x53 - 25*b178 - 5*i252 =E= 0;

e120..    x54 - 25*b179 - 5*i253 =E= 0;

e121..    x55 - 25*b180 - 5*i254 =E= 0;

e122..    x56 - 25*b181 - 5*i255 =E= 0;

e123..  - 5*b171 + i245 =L= 0;

e124..  - 15*b172 + i246 =L= 0;

e125..  - 55*b173 + i247 =L= 0;

e126..  - 75*b174 + i248 =L= 0;

e127..  - 85*b175 + i249 =L= 0;

e128..  - 85*b176 + i250 =L= 0;

e129..  - 90*b177 + i251 =L= 0;

e130..  - 135*b178 + i252 =L= 0;

e131..  - 195*b179 + i253 =L= 0;

e132..  - 195*b180 + i254 =L= 0;

e133..  - 995*b181 + i255 =L= 0;

e134..    x2 - 1050*b57 =L= 0;

e135..    x3 - 1050*b58 =L= 0;

e136..    x4 - 1050*b59 =L= 0;

e137..    x5 - 1050*b60 =L= 0;

e138..    x6 - 1050*b61 =L= 0;

e139..    x7 - 1050*b62 =L= 0;

e140..    x8 - 1050*b63 =L= 0;

e141..    x9 - 1050*b64 =L= 0;

e142..    x10 - 1050*b65 =L= 0;

e143..    x11 - 1050*b66 =L= 0;

e144..    x12 - 1050*b67 =L= 0;

e145..    x13 - 1050*b68 =L= 0;

e146..    x14 - 1050*b69 =L= 0;

e147..    x15 - 1050*b70 =L= 0;

e148..    x16 - 1050*b71 =L= 0;

e149..    x17 - 1050*b72 =L= 0;

e150..    x18 - 1050*b73 =L= 0;

e151..    x19 - 1050*b74 =L= 0;

e152..    x20 - 1050*b75 =L= 0;

e153..    x21 - 1050*b76 =L= 0;

e154..    x22 - 1050*b77 =L= 0;

e155..    x23 - 1050*b78 =L= 0;

e156..    x24 - 1050*b79 =L= 0;

e157..    x25 - 1050*b80 =L= 0;

e158..    x26 - 1050*b81 =L= 0;

e159..    x27 - 1050*b82 =L= 0;

e160..    x28 - 1050*b83 =L= 0;

e161..    x29 - 1050*b84 =L= 0;

e162..    x30 - 1050*b85 =L= 0;

e163..    x31 - 1050*b86 =L= 0;

e164..    x32 - 1050*b87 =L= 0;

e165..    x33 - 1050*b88 =L= 0;

e166..    x34 - 1050*b89 =L= 0;

e167..    x35 - 1050*b90 =L= 0;

e168..    x36 - 1050*b91 =L= 0;

e169..    x37 - 1050*b92 =L= 0;

e170..    x38 - 1050*b93 =L= 0;

e171..    x39 - 1050*b94 =L= 0;

e172..    x40 - 1050*b95 =L= 0;

e173..    x41 - 1050*b96 =L= 0;

e174..    x42 - 1050*b97 =L= 0;

e175..    x43 - 1050*b98 =L= 0;

e176..    x44 - 1050*b99 =L= 0;

e177..    x45 - 1050*b100 =L= 0;

e178..    0.02*x46 + b101 =G= 1;

e179..    0.01*x47 + b102 =G= 1;

e180..    0.00333333333333333*x48 + b103 =G= 1;

e181..    0.0025*x49 + b104 =G= 1;

e182..    0.00222222222222222*x50 + b105 =G= 1;

e183..    0.00222222222222222*x51 + b106 =G= 1;

e184..    0.00210526315789474*x52 + b107 =G= 1;

e185..    0.00142857142857143*x53 + b108 =G= 1;

e186..    0.001*x54 + b109 =G= 1;

e187..    0.001*x55 + b110 =G= 1;

e188..    0.0002*x56 + b111 =G= 1;

e189..  - 0.02*x46 + b112 =G= 0;

e190..  - 0.01*x47 + b113 =G= 0;

e191..  - 0.00333333333333333*x48 + b114 =G= 0;

e192..  - 0.0025*x49 + b115 =G= 0;

e193..  - 0.00222222222222222*x50 + b116 =G= 0;

e194..  - 0.00222222222222222*x51 + b117 =G= 0;

e195..  - 0.00210526315789474*x52 + b118 =G= 0;

e196..  - 0.00142857142857143*x53 + b119 =G= 0;

e197..  - 0.001*x54 + b120 =G= 0;

e198..  - 0.001*x55 + b121 =G= 0;

e199..  - 0.0002*x56 + b122 =G= 0;

e200..    b57 + b58 + b59 + b60 + b101 + b112 - 4*b182 =L= 2;

e201..    b61 + b62 + b63 + b64 + b102 + b113 - 4*b183 =L= 2;

e202..    b65 + b66 + b67 + b68 + b103 + b114 - 4*b184 =L= 2;

e203..    b69 + b70 + b71 + b72 + b104 + b115 - 4*b185 =L= 2;

e204..    b73 + b74 + b75 + b76 + b105 + b116 - 4*b186 =L= 2;

e205..    b77 + b78 + b79 + b80 + b106 + b117 - 4*b187 =L= 2;

e206..    b81 + b82 + b83 + b84 + b107 + b118 - 4*b188 =L= 2;

e207..    b85 + b86 + b87 + b88 + b108 + b119 - 4*b189 =L= 2;

e208..    b89 + b90 + b91 + b92 + b109 + b120 - 4*b190 =L= 2;

e209..    b93 + b94 + b95 + b96 + b110 + b121 - 4*b191 =L= 2;

e210..    b97 + b98 + b99 + b100 + b111 + b122 - 4*b192 =L= 2;

e211..  - x2 + 100*b193 =G= -950;

e212..  - x3 + 100*b194 =G= -950;

e213..  - x4 + 100*b195 =G= -950;

e214..  - x5 + 100*b196 =G= -950;

e215..  - x6 + 100*b193 =G= -950;

e216..  - x7 + 100*b194 =G= -950;

e217..  - x8 + 100*b195 =G= -950;

e218..  - x9 + 100*b196 =G= -950;

e219..  - x10 + 100*b193 =G= -950;

e220..  - x11 + 100*b194 =G= -950;

e221..  - x12 + 100*b195 =G= -950;

e222..  - x13 + 100*b196 =G= -950;

e223..  - x14 + 100*b193 =G= -950;

e224..  - x15 + 100*b194 =G= -950;

e225..  - x16 + 100*b195 =G= -950;

e226..  - x17 + 100*b196 =G= -950;

e227..  - x18 + 100*b193 =G= -950;

e228..  - x19 + 100*b194 =G= -950;

e229..  - x20 + 100*b195 =G= -950;

e230..  - x21 + 100*b196 =G= -950;

e231..  - x22 + 100*b193 =G= -950;

e232..  - x23 + 100*b194 =G= -950;

e233..  - x24 + 100*b195 =G= -950;

e234..  - x25 + 100*b196 =G= -950;

e235..  - x26 + 100*b193 =G= -950;

e236..  - x27 + 100*b194 =G= -950;

e237..  - x28 + 100*b195 =G= -950;

e238..  - x29 + 100*b196 =G= -950;

e239..  - x30 + 100*b193 =G= -950;

e240..  - x31 + 100*b194 =G= -950;

e241..  - x32 + 100*b195 =G= -950;

e242..  - x33 + 100*b196 =G= -950;

e243..  - x34 + 100*b193 =G= -950;

e244..  - x35 + 100*b194 =G= -950;

e245..  - x36 + 100*b195 =G= -950;

e246..  - x37 + 100*b196 =G= -950;

e247..  - x38 + 100*b193 =G= -950;

e248..  - x39 + 100*b194 =G= -950;

e249..  - x40 + 100*b195 =G= -950;

e250..  - x41 + 100*b196 =G= -950;

e251..  - x42 + 100*b193 =G= -950;

e252..  - x43 + 100*b194 =G= -950;

e253..  - x44 + 100*b195 =G= -950;

e254..  - x45 + 100*b196 =G= -950;

e255..  - x2 - x6 + 100*b197 =G= -950;

e256..  - x3 - x7 + 100*b198 =G= -950;

e257..  - x4 - x8 + 100*b199 =G= -950;

e258..  - x5 - x9 + 100*b200 =G= -950;

e259..  - x2 - x10 + 100*b197 =G= -950;

e260..  - x3 - x11 + 100*b198 =G= -950;

e261..  - x4 - x12 + 100*b199 =G= -950;

e262..  - x5 - x13 + 100*b200 =G= -950;

e263..  - x2 - x14 + 100*b197 =G= -950;

e264..  - x3 - x15 + 100*b198 =G= -950;

e265..  - x4 - x16 + 100*b199 =G= -950;

e266..  - x5 - x17 + 100*b200 =G= -950;

e267..  - x2 - x18 + 100*b197 =G= -950;

e268..  - x3 - x19 + 100*b198 =G= -950;

e269..  - x4 - x20 + 100*b199 =G= -950;

e270..  - x5 - x21 + 100*b200 =G= -950;

e271..  - x2 - x22 + 100*b197 =G= -950;

e272..  - x3 - x23 + 100*b198 =G= -950;

e273..  - x4 - x24 + 100*b199 =G= -950;

e274..  - x5 - x25 + 100*b200 =G= -950;

e275..  - x2 - x26 + 100*b197 =G= -950;

e276..  - x3 - x27 + 100*b198 =G= -950;

e277..  - x4 - x28 + 100*b199 =G= -950;

e278..  - x5 - x29 + 100*b200 =G= -950;

e279..  - x2 - x30 + 100*b197 =G= -950;

e280..  - x3 - x31 + 100*b198 =G= -950;

e281..  - x4 - x32 + 100*b199 =G= -950;

e282..  - x5 - x33 + 100*b200 =G= -950;

e283..  - x2 - x34 + 100*b197 =G= -950;

e284..  - x3 - x35 + 100*b198 =G= -950;

e285..  - x4 - x36 + 100*b199 =G= -950;

e286..  - x5 - x37 + 100*b200 =G= -950;

e287..  - x2 - x38 + 100*b197 =G= -950;

e288..  - x3 - x39 + 100*b198 =G= -950;

e289..  - x4 - x40 + 100*b199 =G= -950;

e290..  - x5 - x41 + 100*b200 =G= -950;

e291..  - x2 - x42 + 100*b197 =G= -950;

e292..  - x3 - x43 + 100*b198 =G= -950;

e293..  - x4 - x44 + 100*b199 =G= -950;

e294..  - x5 - x45 + 100*b200 =G= -950;

e295..  - x6 - x10 + 100*b197 =G= -950;

e296..  - x7 - x11 + 100*b198 =G= -950;

e297..  - x8 - x12 + 100*b199 =G= -950;

e298..  - x9 - x13 + 100*b200 =G= -950;

e299..  - x6 - x14 + 100*b197 =G= -950;

e300..  - x7 - x15 + 100*b198 =G= -950;

e301..  - x8 - x16 + 100*b199 =G= -950;

e302..  - x9 - x17 + 100*b200 =G= -950;

e303..  - x6 - x18 + 100*b197 =G= -950;

e304..  - x7 - x19 + 100*b198 =G= -950;

e305..  - x8 - x20 + 100*b199 =G= -950;

e306..  - x9 - x21 + 100*b200 =G= -950;

e307..  - x6 - x22 + 100*b197 =G= -950;

e308..  - x7 - x23 + 100*b198 =G= -950;

e309..  - x8 - x24 + 100*b199 =G= -950;

e310..  - x9 - x25 + 100*b200 =G= -950;

e311..  - x6 - x26 + 100*b197 =G= -950;

e312..  - x7 - x27 + 100*b198 =G= -950;

e313..  - x8 - x28 + 100*b199 =G= -950;

e314..  - x9 - x29 + 100*b200 =G= -950;

e315..  - x6 - x30 + 100*b197 =G= -950;

e316..  - x7 - x31 + 100*b198 =G= -950;

e317..  - x8 - x32 + 100*b199 =G= -950;

e318..  - x9 - x33 + 100*b200 =G= -950;

e319..  - x6 - x34 + 100*b197 =G= -950;

e320..  - x7 - x35 + 100*b198 =G= -950;

e321..  - x8 - x36 + 100*b199 =G= -950;

e322..  - x9 - x37 + 100*b200 =G= -950;

e323..  - x6 - x38 + 100*b197 =G= -950;

e324..  - x7 - x39 + 100*b198 =G= -950;

e325..  - x8 - x40 + 100*b199 =G= -950;

e326..  - x9 - x41 + 100*b200 =G= -950;

e327..  - x6 - x42 + 100*b197 =G= -950;

e328..  - x7 - x43 + 100*b198 =G= -950;

e329..  - x8 - x44 + 100*b199 =G= -950;

e330..  - x9 - x45 + 100*b200 =G= -950;

e331..  - x10 - x14 + 100*b197 =G= -950;

e332..  - x11 - x15 + 100*b198 =G= -950;

e333..  - x12 - x16 + 100*b199 =G= -950;

e334..  - x13 - x17 + 100*b200 =G= -950;

e335..  - x10 - x18 + 100*b197 =G= -950;

e336..  - x11 - x19 + 100*b198 =G= -950;

e337..  - x12 - x20 + 100*b199 =G= -950;

e338..  - x13 - x21 + 100*b200 =G= -950;

e339..  - x10 - x22 + 100*b197 =G= -950;

e340..  - x11 - x23 + 100*b198 =G= -950;

e341..  - x12 - x24 + 100*b199 =G= -950;

e342..  - x13 - x25 + 100*b200 =G= -950;

e343..  - x10 - x26 + 100*b197 =G= -950;

e344..  - x11 - x27 + 100*b198 =G= -950;

e345..  - x12 - x28 + 100*b199 =G= -950;

e346..  - x13 - x29 + 100*b200 =G= -950;

e347..  - x10 - x30 + 100*b197 =G= -950;

e348..  - x11 - x31 + 100*b198 =G= -950;

e349..  - x12 - x32 + 100*b199 =G= -950;

e350..  - x13 - x33 + 100*b200 =G= -950;

e351..  - x10 - x34 + 100*b197 =G= -950;

e352..  - x11 - x35 + 100*b198 =G= -950;

e353..  - x12 - x36 + 100*b199 =G= -950;

e354..  - x13 - x37 + 100*b200 =G= -950;

e355..  - x10 - x38 + 100*b197 =G= -950;

e356..  - x11 - x39 + 100*b198 =G= -950;

e357..  - x12 - x40 + 100*b199 =G= -950;

e358..  - x13 - x41 + 100*b200 =G= -950;

e359..  - x10 - x42 + 100*b197 =G= -950;

e360..  - x11 - x43 + 100*b198 =G= -950;

e361..  - x12 - x44 + 100*b199 =G= -950;

e362..  - x13 - x45 + 100*b200 =G= -950;

e363..  - x14 - x18 + 100*b197 =G= -950;

e364..  - x15 - x19 + 100*b198 =G= -950;

e365..  - x16 - x20 + 100*b199 =G= -950;

e366..  - x17 - x21 + 100*b200 =G= -950;

e367..  - x14 - x22 + 100*b197 =G= -950;

e368..  - x15 - x23 + 100*b198 =G= -950;

e369..  - x16 - x24 + 100*b199 =G= -950;

e370..  - x17 - x25 + 100*b200 =G= -950;

e371..  - x14 - x26 + 100*b197 =G= -950;

e372..  - x15 - x27 + 100*b198 =G= -950;

e373..  - x16 - x28 + 100*b199 =G= -950;

e374..  - x17 - x29 + 100*b200 =G= -950;

e375..  - x14 - x30 + 100*b197 =G= -950;

e376..  - x15 - x31 + 100*b198 =G= -950;

e377..  - x16 - x32 + 100*b199 =G= -950;

e378..  - x17 - x33 + 100*b200 =G= -950;

e379..  - x14 - x34 + 100*b197 =G= -950;

e380..  - x15 - x35 + 100*b198 =G= -950;

e381..  - x16 - x36 + 100*b199 =G= -950;

e382..  - x17 - x37 + 100*b200 =G= -950;

e383..  - x14 - x38 + 100*b197 =G= -950;

e384..  - x15 - x39 + 100*b198 =G= -950;

e385..  - x16 - x40 + 100*b199 =G= -950;

e386..  - x17 - x41 + 100*b200 =G= -950;

e387..  - x14 - x42 + 100*b197 =G= -950;

e388..  - x15 - x43 + 100*b198 =G= -950;

e389..  - x16 - x44 + 100*b199 =G= -950;

e390..  - x17 - x45 + 100*b200 =G= -950;

e391..  - x18 - x22 + 100*b197 =G= -950;

e392..  - x19 - x23 + 100*b198 =G= -950;

e393..  - x20 - x24 + 100*b199 =G= -950;

e394..  - x21 - x25 + 100*b200 =G= -950;

e395..  - x18 - x26 + 100*b197 =G= -950;

e396..  - x19 - x27 + 100*b198 =G= -950;

e397..  - x20 - x28 + 100*b199 =G= -950;

e398..  - x21 - x29 + 100*b200 =G= -950;

e399..  - x18 - x30 + 100*b197 =G= -950;

e400..  - x19 - x31 + 100*b198 =G= -950;

e401..  - x20 - x32 + 100*b199 =G= -950;

e402..  - x21 - x33 + 100*b200 =G= -950;

e403..  - x18 - x34 + 100*b197 =G= -950;

e404..  - x19 - x35 + 100*b198 =G= -950;

e405..  - x20 - x36 + 100*b199 =G= -950;

e406..  - x21 - x37 + 100*b200 =G= -950;

e407..  - x18 - x38 + 100*b197 =G= -950;

e408..  - x19 - x39 + 100*b198 =G= -950;

e409..  - x20 - x40 + 100*b199 =G= -950;

e410..  - x21 - x41 + 100*b200 =G= -950;

e411..  - x18 - x42 + 100*b197 =G= -950;

e412..  - x19 - x43 + 100*b198 =G= -950;

e413..  - x20 - x44 + 100*b199 =G= -950;

e414..  - x21 - x45 + 100*b200 =G= -950;

e415..  - x22 - x26 + 100*b197 =G= -950;

e416..  - x23 - x27 + 100*b198 =G= -950;

e417..  - x24 - x28 + 100*b199 =G= -950;

e418..  - x25 - x29 + 100*b200 =G= -950;

e419..  - x22 - x30 + 100*b197 =G= -950;

e420..  - x23 - x31 + 100*b198 =G= -950;

e421..  - x24 - x32 + 100*b199 =G= -950;

e422..  - x25 - x33 + 100*b200 =G= -950;

e423..  - x22 - x34 + 100*b197 =G= -950;

e424..  - x23 - x35 + 100*b198 =G= -950;

e425..  - x24 - x36 + 100*b199 =G= -950;

e426..  - x25 - x37 + 100*b200 =G= -950;

e427..  - x22 - x38 + 100*b197 =G= -950;

e428..  - x23 - x39 + 100*b198 =G= -950;

e429..  - x24 - x40 + 100*b199 =G= -950;

e430..  - x25 - x41 + 100*b200 =G= -950;

e431..  - x22 - x42 + 100*b197 =G= -950;

e432..  - x23 - x43 + 100*b198 =G= -950;

e433..  - x24 - x44 + 100*b199 =G= -950;

e434..  - x25 - x45 + 100*b200 =G= -950;

e435..  - x26 - x30 + 100*b197 =G= -950;

e436..  - x27 - x31 + 100*b198 =G= -950;

e437..  - x28 - x32 + 100*b199 =G= -950;

e438..  - x29 - x33 + 100*b200 =G= -950;

e439..  - x26 - x34 + 100*b197 =G= -950;

e440..  - x27 - x35 + 100*b198 =G= -950;

e441..  - x28 - x36 + 100*b199 =G= -950;

e442..  - x29 - x37 + 100*b200 =G= -950;

e443..  - x26 - x38 + 100*b197 =G= -950;

e444..  - x27 - x39 + 100*b198 =G= -950;

e445..  - x28 - x40 + 100*b199 =G= -950;

e446..  - x29 - x41 + 100*b200 =G= -950;

e447..  - x26 - x42 + 100*b197 =G= -950;

e448..  - x27 - x43 + 100*b198 =G= -950;

e449..  - x28 - x44 + 100*b199 =G= -950;

e450..  - x29 - x45 + 100*b200 =G= -950;

e451..  - x30 - x34 + 100*b197 =G= -950;

e452..  - x31 - x35 + 100*b198 =G= -950;

e453..  - x32 - x36 + 100*b199 =G= -950;

e454..  - x33 - x37 + 100*b200 =G= -950;

e455..  - x30 - x38 + 100*b197 =G= -950;

e456..  - x31 - x39 + 100*b198 =G= -950;

e457..  - x32 - x40 + 100*b199 =G= -950;

e458..  - x33 - x41 + 100*b200 =G= -950;

e459..  - x30 - x42 + 100*b197 =G= -950;

e460..  - x31 - x43 + 100*b198 =G= -950;

e461..  - x32 - x44 + 100*b199 =G= -950;

e462..  - x33 - x45 + 100*b200 =G= -950;

e463..  - x34 - x38 + 100*b197 =G= -950;

e464..  - x35 - x39 + 100*b198 =G= -950;

e465..  - x36 - x40 + 100*b199 =G= -950;

e466..  - x37 - x41 + 100*b200 =G= -950;

e467..  - x34 - x42 + 100*b197 =G= -950;

e468..  - x35 - x43 + 100*b198 =G= -950;

e469..  - x36 - x44 + 100*b199 =G= -950;

e470..  - x37 - x45 + 100*b200 =G= -950;

e471..  - x38 - x42 + 100*b197 =G= -950;

e472..  - x39 - x43 + 100*b198 =G= -950;

e473..  - x40 - x44 + 100*b199 =G= -950;

e474..  - x41 - x45 + 100*b200 =G= -950;

e475..    b57 + b61 + b65 + b69 + b73 + b77 + b81 + b85 + b89 + b93 + b97 =L= 3
       ;

e476..    b58 + b62 + b66 + b70 + b74 + b78 + b82 + b86 + b90 + b94 + b98 =L= 3
       ;

e477..    b59 + b63 + b67 + b71 + b75 + b79 + b83 + b87 + b91 + b95 + b99 =L= 3
       ;

e478..    b60 + b64 + b68 + b72 + b76 + b80 + b84 + b88 + b92 + b96 + b100
        =L= 3;

e479..    b57 + b61 + b65 + b69 + b73 + b77 + b81 + b85 + b89 + b93 + b97
        + 3*b193 =L= 4;

e480..    b58 + b62 + b66 + b70 + b74 + b78 + b82 + b86 + b90 + b94 + b98
        + 3*b194 =L= 4;

e481..    b59 + b63 + b67 + b71 + b75 + b79 + b83 + b87 + b91 + b95 + b99
        + 3*b195 =L= 4;

e482..    b60 + b64 + b68 + b72 + b76 + b80 + b84 + b88 + b92 + b96 + b100
        + 3*b196 =L= 4;

e483..    b57 + b61 + b65 + b69 + b73 + b77 + b81 + b85 + b89 + b93 + b97
        + 3*b197 =L= 5;

e484..    b58 + b62 + b66 + b70 + b74 + b78 + b82 + b86 + b90 + b94 + b98
        + 3*b198 =L= 5;

e485..    b59 + b63 + b67 + b71 + b75 + b79 + b83 + b87 + b91 + b95 + b99
        + 3*b199 =L= 5;

e486..    b60 + b64 + b68 + b72 + b76 + b80 + b84 + b88 + b92 + b96 + b100
        + 3*b200 =L= 5;

e487..    x1 - 0.00879999999999992*x2 - 0.00879999999999992*x3
        - 0.00879999999999992*x4 - 0.00879999999999992*x5
        - 0.00879999999999992*x6 - 0.00879999999999992*x7
        - 0.00879999999999992*x8 - 0.00879999999999992*x9
        - 0.00879999999999992*x10 - 0.00879999999999992*x11
        - 0.00879999999999992*x12 - 0.00879999999999992*x13
        - 0.00879999999999992*x14 - 0.00879999999999992*x15
        - 0.00879999999999992*x16 - 0.00879999999999992*x17
        - 0.00879999999999992*x18 - 0.00879999999999992*x19
        - 0.00879999999999992*x20 - 0.00879999999999992*x21
        - 0.00879999999999992*x22 - 0.00879999999999992*x23
        - 0.00879999999999992*x24 - 0.00879999999999992*x25
        - 0.00879999999999992*x26 - 0.00879999999999992*x27
        - 0.00879999999999992*x28 - 0.00879999999999992*x29
        - 0.00879999999999992*x30 - 0.00879999999999992*x31
        - 0.00879999999999992*x32 - 0.00879999999999992*x33
        - 0.00879999999999992*x34 - 0.00879999999999992*x35
        - 0.00879999999999992*x36 - 0.00879999999999992*x37
        - 0.00879999999999992*x38 - 0.00879999999999992*x39
        - 0.00879999999999992*x40 - 0.00879999999999992*x41
        - 0.00879999999999992*x42 - 0.00879999999999992*x43
        - 0.00879999999999992*x44 - 0.00879999999999992*x45 + 1E-5*b182
        + 1E-5*b183 + 1E-5*b184 + 1E-5*b185 + 1E-5*b186 + 1E-5*b187 + 1E-5*b188
        + 1E-5*b189 + 1E-5*b190 + 1E-5*b191 + 1E-5*b192 =E= 0;

* set non-default bounds
i201.up = 205;
i202.up = 205;
i203.up = 205;
i204.up = 205;
i205.up = 205;
i206.up = 205;
i207.up = 205;
i208.up = 205;
i209.up = 205;
i210.up = 205;
i211.up = 205;
i212.up = 205;
i213.up = 205;
i214.up = 205;
i215.up = 205;
i216.up = 205;
i217.up = 205;
i218.up = 205;
i219.up = 205;
i220.up = 205;
i221.up = 205;
i222.up = 205;
i223.up = 205;
i224.up = 205;
i225.up = 205;
i226.up = 205;
i227.up = 205;
i228.up = 205;
i229.up = 205;
i230.up = 205;
i231.up = 205;
i232.up = 205;
i233.up = 205;
i234.up = 205;
i235.up = 205;
i236.up = 205;
i237.up = 205;
i238.up = 205;
i239.up = 205;
i240.up = 205;
i241.up = 205;
i242.up = 205;
i243.up = 205;
i244.up = 205;
i245.up = 5;
i246.up = 15;
i247.up = 55;
i248.up = 75;
i249.up = 85;
i250.up = 85;
i251.up = 90;
i252.up = 135;
i253.up = 195;
i254.up = 195;
i255.up = 995;

* set non-default priorities
i201.prior = 2;
i202.prior = 2;
i203.prior = 2;
i204.prior = 2;
i205.prior = 2;
i206.prior = 2;
i207.prior = 2;
i208.prior = 2;
i209.prior = 2;
i210.prior = 2;
i211.prior = 2;
i212.prior = 2;
i213.prior = 2;
i214.prior = 2;
i215.prior = 2;
i216.prior = 2;
i217.prior = 2;
i218.prior = 2;
i219.prior = 2;
i220.prior = 2;
i221.prior = 2;
i222.prior = 2;
i223.prior = 2;
i224.prior = 2;
i225.prior = 2;
i226.prior = 2;
i227.prior = 2;
i228.prior = 2;
i229.prior = 2;
i230.prior = 2;
i231.prior = 2;
i232.prior = 2;
i233.prior = 2;
i234.prior = 2;
i235.prior = 2;
i236.prior = 2;
i237.prior = 2;
i238.prior = 2;
i239.prior = 2;
i240.prior = 2;
i241.prior = 2;
i242.prior = 2;
i243.prior = 2;
i244.prior = 2;
i245.prior = 2;
i246.prior = 2;
i247.prior = 2;
i248.prior = 2;
i249.prior = 2;
i250.prior = 2;
i251.prior = 2;
i252.prior = 2;
i253.prior = 2;
i254.prior = 2;
i255.prior = 2;

Model m / all /;

m.limrow=0; m.limcol=0;
m.prioropt = 1;

m.optcr      = 0.0001;
Solve m using MIP maximizing x1;