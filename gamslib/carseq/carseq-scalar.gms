*  MINLP written by GAMS Convert at 12/13/18 11:43:40
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        154      154        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        198      138       60        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        591      415      176        0
*
*  Solve m using MINLP minimizing x198;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99,b100,b101,b102,b103
          ,b104,b105,b106,b107,b108,b109,b110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198;

Binary Variables  b51,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65
          ,b66,b67,b68,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82
          ,b83,b84,b85,b86,b87,b88,b89,b90,b91,b92,b93,b94,b95,b96,b97,b98,b99
          ,b100,b101,b102,b103,b104,b105,b106,b107,b108,b109,b110;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154;


e1..    b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 =E= 1;

e2..    b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 =E= 1;

e3..    b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 =E= 2;

e4..    b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 =E= 2;

e5..    b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 =E= 2;

e6..    b101 + b102 + b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110
      =E= 2;

e7..    b51 + b61 + b71 + b81 + b91 + b101 =E= 1;

e8..    b52 + b62 + b72 + b82 + b92 + b102 =E= 1;

e9..    b53 + b63 + b73 + b83 + b93 + b103 =E= 1;

e10..    b54 + b64 + b74 + b84 + b94 + b104 =E= 1;

e11..    b55 + b65 + b75 + b85 + b95 + b105 =E= 1;

e12..    b56 + b66 + b76 + b86 + b96 + b106 =E= 1;

e13..    b57 + b67 + b77 + b87 + b97 + b107 =E= 1;

e14..    b58 + b68 + b78 + b88 + b98 + b108 =E= 1;

e15..    b59 + b69 + b79 + b89 + b99 + b109 =E= 1;

e16..    b60 + b70 + b80 + b90 + b100 + b110 =E= 1;

e17.. -IfThen(rel_ge(x1,0.5),1,eps) + x111 =E= 0;

e18.. -IfThen(rel_ge(x2,0.5),1,eps) + x112 =E= 0;

e19.. -IfThen(rel_ge(x3,0.5),1,eps) + x113 =E= 0;

e20.. -IfThen(rel_ge(x4,0.5),1,eps) + x114 =E= 0;

e21.. -IfThen(rel_ge(x5,0.5),1,eps) + x115 =E= 0;

e22.. -IfThen(rel_ge(x6,0.5),1,eps) + x116 =E= 0;

e23.. -IfThen(rel_ge(x7,0.5),1,eps) + x117 =E= 0;

e24.. -IfThen(rel_ge(x8,0.5),1,eps) + x118 =E= 0;

e25.. -IfThen(rel_ge(x9,0.5),1,eps) + x119 =E= 0;

e26.. -IfThen(rel_ge(x10,0.5),1,eps) + x120 =E= 0;

e27.. -IfThen(rel_ge(x11,0.5),1,eps) + x121 =E= 0;

e28.. -IfThen(rel_ge(x12,0.5),1,eps) + x122 =E= 0;

e29.. -IfThen(rel_ge(x13,0.5),1,eps) + x123 =E= 0;

e30.. -IfThen(rel_ge(x14,0.5),1,eps) + x124 =E= 0;

e31.. -IfThen(rel_ge(x15,0.5),1,eps) + x125 =E= 0;

e32.. -IfThen(rel_ge(x16,0.5),1,eps) + x126 =E= 0;

e33.. -IfThen(rel_ge(x17,0.5),1,eps) + x127 =E= 0;

e34.. -IfThen(rel_ge(x18,0.5),1,eps) + x128 =E= 0;

e35.. -IfThen(rel_ge(x19,0.5),1,eps) + x129 =E= 0;

e36.. -IfThen(rel_ge(x20,0.5),1,eps) + x130 =E= 0;

e37.. -IfThen(rel_ge(x21,0.5),1,eps) + x131 =E= 0;

e38.. -IfThen(rel_ge(x22,0.5),1,eps) + x132 =E= 0;

e39.. -IfThen(rel_ge(x23,0.5),1,eps) + x133 =E= 0;

e40.. -IfThen(rel_ge(x24,0.5),1,eps) + x134 =E= 0;

e41.. -IfThen(rel_ge(x25,0.5),1,eps) + x135 =E= 0;

e42.. -IfThen(rel_ge(x26,0.5),1,eps) + x136 =E= 0;

e43.. -IfThen(rel_ge(x27,0.5),1,eps) + x137 =E= 0;

e44.. -IfThen(rel_ge(x28,0.5),1,eps) + x138 =E= 0;

e45.. -IfThen(rel_ge(x29,0.5),1,eps) + x139 =E= 0;

e46.. -IfThen(rel_ge(x30,0.5),1,eps) + x140 =E= 0;

e47.. -IfThen(rel_ge(x31,0.5),1,eps) + x141 =E= 0;

e48.. -IfThen(rel_ge(x32,0.5),1,eps) + x142 =E= 0;

e49.. -IfThen(rel_ge(x33,0.5),1,eps) + x143 =E= 0;

e50.. -IfThen(rel_ge(x34,0.5),1,eps) + x144 =E= 0;

e51.. -IfThen(rel_ge(x35,0.5),1,eps) + x145 =E= 0;

e52.. -IfThen(rel_ge(x36,0.5),1,eps) + x146 =E= 0;

e53.. -IfThen(rel_ge(x37,0.5),1,eps) + x147 =E= 0;

e54.. -IfThen(rel_ge(x38,0.5),1,eps) + x148 =E= 0;

e55.. -IfThen(rel_ge(x39,0.5),1,eps) + x149 =E= 0;

e56.. -IfThen(rel_ge(x40,0.5),1,eps) + x150 =E= 0;

e57.. -IfThen(rel_ge(x41,0.5),1,eps) + x151 =E= 0;

e58.. -IfThen(rel_ge(x42,0.5),1,eps) + x152 =E= 0;

e59.. -IfThen(rel_ge(x43,0.5),1,eps) + x153 =E= 0;

e60.. -IfThen(rel_ge(x44,0.5),1,eps) + x154 =E= 0;

e61.. -IfThen(rel_ge(x45,0.5),1,eps) + x155 =E= 0;

e62.. -IfThen(rel_ge(x46,0.5),1,eps) + x156 =E= 0;

e63.. -IfThen(rel_ge(x47,0.5),1,eps) + x157 =E= 0;

e64.. -IfThen(rel_ge(x48,0.5),1,eps) + x158 =E= 0;

e65.. -IfThen(rel_ge(x49,0.5),1,eps) + x159 =E= 0;

e66.. -IfThen(rel_ge(x50,0.5),1,eps) + x160 =E= 0;

e67.. -max((-1) + x111 + x112,eps) + x161 =E= 0;

e68.. -max((-1) + x112 + x113,eps) + x162 =E= 0;

e69.. -max((-1) + x113 + x114,eps) + x163 =E= 0;

e70.. -max((-1) + x114 + x115,eps) + x164 =E= 0;

e71.. -max((-1) + x115 + x116,eps) + x165 =E= 0;

e72.. -max((-1) + x116 + x117,eps) + x166 =E= 0;

e73.. -max((-1) + x117 + x118,eps) + x167 =E= 0;

e74.. -max((-1) + x118 + x119,eps) + x168 =E= 0;

e75.. -max((-1) + x119 + x120,eps) + x169 =E= 0;

e76.. -max((-2) + x121 + x122 + x123,eps) + x170 =E= 0;

e77.. -max((-2) + x122 + x123 + x124,eps) + x171 =E= 0;

e78.. -max((-2) + x123 + x124 + x125,eps) + x172 =E= 0;

e79.. -max((-2) + x124 + x125 + x126,eps) + x173 =E= 0;

e80.. -max((-2) + x125 + x126 + x127,eps) + x174 =E= 0;

e81.. -max((-2) + x126 + x127 + x128,eps) + x175 =E= 0;

e82.. -max((-2) + x127 + x128 + x129,eps) + x176 =E= 0;

e83.. -max((-2) + x128 + x129 + x130,eps) + x177 =E= 0;

e84.. -max((-1) + x131 + x132 + x133,eps) + x178 =E= 0;

e85.. -max((-1) + x132 + x133 + x134,eps) + x179 =E= 0;

e86.. -max((-1) + x133 + x134 + x135,eps) + x180 =E= 0;

e87.. -max((-1) + x134 + x135 + x136,eps) + x181 =E= 0;

e88.. -max((-1) + x135 + x136 + x137,eps) + x182 =E= 0;

e89.. -max((-1) + x136 + x137 + x138,eps) + x183 =E= 0;

e90.. -max((-1) + x137 + x138 + x139,eps) + x184 =E= 0;

e91.. -max((-1) + x138 + x139 + x140,eps) + x185 =E= 0;

e92.. -max((-2) + x141 + x142 + x143 + x144 + x145,eps) + x186 =E= 0;

e93.. -max((-2) + x142 + x143 + x144 + x145 + x146,eps) + x187 =E= 0;

e94.. -max((-2) + x143 + x144 + x145 + x146 + x147,eps) + x188 =E= 0;

e95.. -max((-2) + x144 + x145 + x146 + x147 + x148,eps) + x189 =E= 0;

e96.. -max((-2) + x145 + x146 + x147 + x148 + x149,eps) + x190 =E= 0;

e97.. -max((-2) + x146 + x147 + x148 + x149 + x150,eps) + x191 =E= 0;

e98.. -max((-1) + x151 + x152 + x153 + x154 + x155,eps) + x192 =E= 0;

e99.. -max((-1) + x152 + x153 + x154 + x155 + x156,eps) + x193 =E= 0;

e100.. -max((-1) + x153 + x154 + x155 + x156 + x157,eps) + x194 =E= 0;

e101.. -max((-1) + x154 + x155 + x156 + x157 + x158,eps) + x195 =E= 0;

e102.. -max((-1) + x155 + x156 + x157 + x158 + x159,eps) + x196 =E= 0;

e103.. -max((-1) + x156 + x157 + x158 + x159 + x160,eps) + x197 =E= 0;

e104..  - x161 - x162 - x163 - x164 - x165 - x166 - x167 - x168 - x169 - x170
        - x171 - x172 - x173 - x174 - x175 - x176 - x177 - x178 - x179 - x180
        - x181 - x182 - x183 - x184 - x185 - x186 - x187 - x188 - x189 - x190
        - x191 - x192 - x193 - x194 - x195 - x196 - x197 + x198 =E= 0;

e105..    x1 - b51 - b91 - b101 =E= 0;

e106..    x2 - b52 - b92 - b102 =E= 0;

e107..    x3 - b53 - b93 - b103 =E= 0;

e108..    x4 - b54 - b94 - b104 =E= 0;

e109..    x5 - b55 - b95 - b105 =E= 0;

e110..    x6 - b56 - b96 - b106 =E= 0;

e111..    x7 - b57 - b97 - b107 =E= 0;

e112..    x8 - b58 - b98 - b108 =E= 0;

e113..    x9 - b59 - b99 - b109 =E= 0;

e114..    x10 - b60 - b100 - b110 =E= 0;

e115..    x11 - b71 - b81 - b101 =E= 0;

e116..    x12 - b72 - b82 - b102 =E= 0;

e117..    x13 - b73 - b83 - b103 =E= 0;

e118..    x14 - b74 - b84 - b104 =E= 0;

e119..    x15 - b75 - b85 - b105 =E= 0;

e120..    x16 - b76 - b86 - b106 =E= 0;

e121..    x17 - b77 - b87 - b107 =E= 0;

e122..    x18 - b78 - b88 - b108 =E= 0;

e123..    x19 - b79 - b89 - b109 =E= 0;

e124..    x20 - b80 - b90 - b110 =E= 0;

e125..    x21 - b51 - b91 =E= 0;

e126..    x22 - b52 - b92 =E= 0;

e127..    x23 - b53 - b93 =E= 0;

e128..    x24 - b54 - b94 =E= 0;

e129..    x25 - b55 - b95 =E= 0;

e130..    x26 - b56 - b96 =E= 0;

e131..    x27 - b57 - b97 =E= 0;

e132..    x28 - b58 - b98 =E= 0;

e133..    x29 - b59 - b99 =E= 0;

e134..    x30 - b60 - b100 =E= 0;

e135..    x31 - b51 - b61 - b81 =E= 0;

e136..    x32 - b52 - b62 - b82 =E= 0;

e137..    x33 - b53 - b63 - b83 =E= 0;

e138..    x34 - b54 - b64 - b84 =E= 0;

e139..    x35 - b55 - b65 - b85 =E= 0;

e140..    x36 - b56 - b66 - b86 =E= 0;

e141..    x37 - b57 - b67 - b87 =E= 0;

e142..    x38 - b58 - b68 - b88 =E= 0;

e143..    x39 - b59 - b69 - b89 =E= 0;

e144..    x40 - b60 - b70 - b90 =E= 0;

e145..    x41 - b71 =E= 0;

e146..    x42 - b72 =E= 0;

e147..    x43 - b73 =E= 0;

e148..    x44 - b74 =E= 0;

e149..    x45 - b75 =E= 0;

e150..    x46 - b76 =E= 0;

e151..    x47 - b77 =E= 0;

e152..    x48 - b78 =E= 0;

e153..    x49 - b79 =E= 0;

e154..    x50 - b80 =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MINLP minimizing x198;
