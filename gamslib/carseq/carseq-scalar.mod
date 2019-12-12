#  MINLP written by GAMS Convert at 12/13/18 11:43:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        154      154        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        198      138       60        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        591      415      176        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1;
var x2;
var x3;
var x4;
var x5;
var x6;
var x7;
var x8;
var x9;
var x10;
var x11;
var x12;
var x13;
var x14;
var x15;
var x16;
var x17;
var x18;
var x19;
var x20;
var x21;
var x22;
var x23;
var x24;
var x25;
var x26;
var x27;
var x28;
var x29;
var x30;
var x31;
var x32;
var x33;
var x34;
var x35;
var x36;
var x37;
var x38;
var x39;
var x40;
var x41;
var x42;
var x43;
var x44;
var x45;
var x46;
var x47;
var x48;
var x49;
var x50;
var b51 binary >= 0, <= 1;
var b52 binary >= 0, <= 1;
var b53 binary >= 0, <= 1;
var b54 binary >= 0, <= 1;
var b55 binary >= 0, <= 1;
var b56 binary >= 0, <= 1;
var b57 binary >= 0, <= 1;
var b58 binary >= 0, <= 1;
var b59 binary >= 0, <= 1;
var b60 binary >= 0, <= 1;
var b61 binary >= 0, <= 1;
var b62 binary >= 0, <= 1;
var b63 binary >= 0, <= 1;
var b64 binary >= 0, <= 1;
var b65 binary >= 0, <= 1;
var b66 binary >= 0, <= 1;
var b67 binary >= 0, <= 1;
var b68 binary >= 0, <= 1;
var b69 binary >= 0, <= 1;
var b70 binary >= 0, <= 1;
var b71 binary >= 0, <= 1;
var b72 binary >= 0, <= 1;
var b73 binary >= 0, <= 1;
var b74 binary >= 0, <= 1;
var b75 binary >= 0, <= 1;
var b76 binary >= 0, <= 1;
var b77 binary >= 0, <= 1;
var b78 binary >= 0, <= 1;
var b79 binary >= 0, <= 1;
var b80 binary >= 0, <= 1;
var b81 binary >= 0, <= 1;
var b82 binary >= 0, <= 1;
var b83 binary >= 0, <= 1;
var b84 binary >= 0, <= 1;
var b85 binary >= 0, <= 1;
var b86 binary >= 0, <= 1;
var b87 binary >= 0, <= 1;
var b88 binary >= 0, <= 1;
var b89 binary >= 0, <= 1;
var b90 binary >= 0, <= 1;
var b91 binary >= 0, <= 1;
var b92 binary >= 0, <= 1;
var b93 binary >= 0, <= 1;
var b94 binary >= 0, <= 1;
var b95 binary >= 0, <= 1;
var b96 binary >= 0, <= 1;
var b97 binary >= 0, <= 1;
var b98 binary >= 0, <= 1;
var b99 binary >= 0, <= 1;
var b100 binary >= 0, <= 1;
var b101 binary >= 0, <= 1;
var b102 binary >= 0, <= 1;
var b103 binary >= 0, <= 1;
var b104 binary >= 0, <= 1;
var b105 binary >= 0, <= 1;
var b106 binary >= 0, <= 1;
var b107 binary >= 0, <= 1;
var b108 binary >= 0, <= 1;
var b109 binary >= 0, <= 1;
var b110 binary >= 0, <= 1;
var x111;
var x112;
var x113;
var x114;
var x115;
var x116;
var x117;
var x118;
var x119;
var x120;
var x121;
var x122;
var x123;
var x124;
var x125;
var x126;
var x127;
var x128;
var x129;
var x130;
var x131;
var x132;
var x133;
var x134;
var x135;
var x136;
var x137;
var x138;
var x139;
var x140;
var x141;
var x142;
var x143;
var x144;
var x145;
var x146;
var x147;
var x148;
var x149;
var x150;
var x151;
var x152;
var x153;
var x154;
var x155;
var x156;
var x157;
var x158;
var x159;
var x160;
var x161;
var x162;
var x163;
var x164;
var x165;
var x166;
var x167;
var x168;
var x169;
var x170;
var x171;
var x172;
var x173;
var x174;
var x175;
var x176;
var x177;
var x178;
var x179;
var x180;
var x181;
var x182;
var x183;
var x184;
var x185;
var x186;
var x187;
var x188;
var x189;
var x190;
var x191;
var x192;
var x193;
var x194;
var x195;
var x196;
var x197;

minimize obj:    x161 + x162 + x163 + x164 + x165 + x166 + x167 + x168 + x169
     + x170 + x171 + x172 + x173 + x174 + x175 + x176 + x177 + x178 + x179
     + x180 + x181 + x182 + x183 + x184 + x185 + x186 + x187 + x188 + x189
     + x190 + x191 + x192 + x193 + x194 + x195 + x196 + x197;

subject to

e1:    b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 = 1;

e2:    b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 = 1;

e3:    b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 = 2;

e4:    b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 = 2;

e5:    b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 = 2;

e6:    b101 + b102 + b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110 = 2;

e7:    b51 + b61 + b71 + b81 + b91 + b101 = 1;

e8:    b52 + b62 + b72 + b82 + b92 + b102 = 1;

e9:    b53 + b63 + b73 + b83 + b93 + b103 = 1;

e10:    b54 + b64 + b74 + b84 + b94 + b104 = 1;

e11:    b55 + b65 + b75 + b85 + b95 + b105 = 1;

e12:    b56 + b66 + b76 + b86 + b96 + b106 = 1;

e13:    b57 + b67 + b77 + b87 + b97 + b107 = 1;

e14:    b58 + b68 + b78 + b88 + b98 + b108 = 1;

e15:    b59 + b69 + b79 + b89 + b99 + b109 = 1;

e16:    b60 + b70 + b80 + b90 + b100 + b110 = 1;

e17: -IfThen(rel_ge(x1,0.5),1,0) + x111 = 0;

e18: -IfThen(rel_ge(x2,0.5),1,0) + x112 = 0;

e19: -IfThen(rel_ge(x3,0.5),1,0) + x113 = 0;

e20: -IfThen(rel_ge(x4,0.5),1,0) + x114 = 0;

e21: -IfThen(rel_ge(x5,0.5),1,0) + x115 = 0;

e22: -IfThen(rel_ge(x6,0.5),1,0) + x116 = 0;

e23: -IfThen(rel_ge(x7,0.5),1,0) + x117 = 0;

e24: -IfThen(rel_ge(x8,0.5),1,0) + x118 = 0;

e25: -IfThen(rel_ge(x9,0.5),1,0) + x119 = 0;

e26: -IfThen(rel_ge(x10,0.5),1,0) + x120 = 0;

e27: -IfThen(rel_ge(x11,0.5),1,0) + x121 = 0;

e28: -IfThen(rel_ge(x12,0.5),1,0) + x122 = 0;

e29: -IfThen(rel_ge(x13,0.5),1,0) + x123 = 0;

e30: -IfThen(rel_ge(x14,0.5),1,0) + x124 = 0;

e31: -IfThen(rel_ge(x15,0.5),1,0) + x125 = 0;

e32: -IfThen(rel_ge(x16,0.5),1,0) + x126 = 0;

e33: -IfThen(rel_ge(x17,0.5),1,0) + x127 = 0;

e34: -IfThen(rel_ge(x18,0.5),1,0) + x128 = 0;

e35: -IfThen(rel_ge(x19,0.5),1,0) + x129 = 0;

e36: -IfThen(rel_ge(x20,0.5),1,0) + x130 = 0;

e37: -IfThen(rel_ge(x21,0.5),1,0) + x131 = 0;

e38: -IfThen(rel_ge(x22,0.5),1,0) + x132 = 0;

e39: -IfThen(rel_ge(x23,0.5),1,0) + x133 = 0;

e40: -IfThen(rel_ge(x24,0.5),1,0) + x134 = 0;

e41: -IfThen(rel_ge(x25,0.5),1,0) + x135 = 0;

e42: -IfThen(rel_ge(x26,0.5),1,0) + x136 = 0;

e43: -IfThen(rel_ge(x27,0.5),1,0) + x137 = 0;

e44: -IfThen(rel_ge(x28,0.5),1,0) + x138 = 0;

e45: -IfThen(rel_ge(x29,0.5),1,0) + x139 = 0;

e46: -IfThen(rel_ge(x30,0.5),1,0) + x140 = 0;

e47: -IfThen(rel_ge(x31,0.5),1,0) + x141 = 0;

e48: -IfThen(rel_ge(x32,0.5),1,0) + x142 = 0;

e49: -IfThen(rel_ge(x33,0.5),1,0) + x143 = 0;

e50: -IfThen(rel_ge(x34,0.5),1,0) + x144 = 0;

e51: -IfThen(rel_ge(x35,0.5),1,0) + x145 = 0;

e52: -IfThen(rel_ge(x36,0.5),1,0) + x146 = 0;

e53: -IfThen(rel_ge(x37,0.5),1,0) + x147 = 0;

e54: -IfThen(rel_ge(x38,0.5),1,0) + x148 = 0;

e55: -IfThen(rel_ge(x39,0.5),1,0) + x149 = 0;

e56: -IfThen(rel_ge(x40,0.5),1,0) + x150 = 0;

e57: -IfThen(rel_ge(x41,0.5),1,0) + x151 = 0;

e58: -IfThen(rel_ge(x42,0.5),1,0) + x152 = 0;

e59: -IfThen(rel_ge(x43,0.5),1,0) + x153 = 0;

e60: -IfThen(rel_ge(x44,0.5),1,0) + x154 = 0;

e61: -IfThen(rel_ge(x45,0.5),1,0) + x155 = 0;

e62: -IfThen(rel_ge(x46,0.5),1,0) + x156 = 0;

e63: -IfThen(rel_ge(x47,0.5),1,0) + x157 = 0;

e64: -IfThen(rel_ge(x48,0.5),1,0) + x158 = 0;

e65: -IfThen(rel_ge(x49,0.5),1,0) + x159 = 0;

e66: -IfThen(rel_ge(x50,0.5),1,0) + x160 = 0;

e67: -max((-1) + x111 + x112,0) + x161 = 0;

e68: -max((-1) + x112 + x113,0) + x162 = 0;

e69: -max((-1) + x113 + x114,0) + x163 = 0;

e70: -max((-1) + x114 + x115,0) + x164 = 0;

e71: -max((-1) + x115 + x116,0) + x165 = 0;

e72: -max((-1) + x116 + x117,0) + x166 = 0;

e73: -max((-1) + x117 + x118,0) + x167 = 0;

e74: -max((-1) + x118 + x119,0) + x168 = 0;

e75: -max((-1) + x119 + x120,0) + x169 = 0;

e76: -max((-2) + x121 + x122 + x123,0) + x170 = 0;

e77: -max((-2) + x122 + x123 + x124,0) + x171 = 0;

e78: -max((-2) + x123 + x124 + x125,0) + x172 = 0;

e79: -max((-2) + x124 + x125 + x126,0) + x173 = 0;

e80: -max((-2) + x125 + x126 + x127,0) + x174 = 0;

e81: -max((-2) + x126 + x127 + x128,0) + x175 = 0;

e82: -max((-2) + x127 + x128 + x129,0) + x176 = 0;

e83: -max((-2) + x128 + x129 + x130,0) + x177 = 0;

e84: -max((-1) + x131 + x132 + x133,0) + x178 = 0;

e85: -max((-1) + x132 + x133 + x134,0) + x179 = 0;

e86: -max((-1) + x133 + x134 + x135,0) + x180 = 0;

e87: -max((-1) + x134 + x135 + x136,0) + x181 = 0;

e88: -max((-1) + x135 + x136 + x137,0) + x182 = 0;

e89: -max((-1) + x136 + x137 + x138,0) + x183 = 0;

e90: -max((-1) + x137 + x138 + x139,0) + x184 = 0;

e91: -max((-1) + x138 + x139 + x140,0) + x185 = 0;

e92: -max((-2) + x141 + x142 + x143 + x144 + x145,0) + x186 = 0;

e93: -max((-2) + x142 + x143 + x144 + x145 + x146,0) + x187 = 0;

e94: -max((-2) + x143 + x144 + x145 + x146 + x147,0) + x188 = 0;

e95: -max((-2) + x144 + x145 + x146 + x147 + x148,0) + x189 = 0;

e96: -max((-2) + x145 + x146 + x147 + x148 + x149,0) + x190 = 0;

e97: -max((-2) + x146 + x147 + x148 + x149 + x150,0) + x191 = 0;

e98: -max((-1) + x151 + x152 + x153 + x154 + x155,0) + x192 = 0;

e99: -max((-1) + x152 + x153 + x154 + x155 + x156,0) + x193 = 0;

e100: -max((-1) + x153 + x154 + x155 + x156 + x157,0) + x194 = 0;

e101: -max((-1) + x154 + x155 + x156 + x157 + x158,0) + x195 = 0;

e102: -max((-1) + x155 + x156 + x157 + x158 + x159,0) + x196 = 0;

e103: -max((-1) + x156 + x157 + x158 + x159 + x160,0) + x197 = 0;

e105:    x1 - b51 - b91 - b101 = 0;

e106:    x2 - b52 - b92 - b102 = 0;

e107:    x3 - b53 - b93 - b103 = 0;

e108:    x4 - b54 - b94 - b104 = 0;

e109:    x5 - b55 - b95 - b105 = 0;

e110:    x6 - b56 - b96 - b106 = 0;

e111:    x7 - b57 - b97 - b107 = 0;

e112:    x8 - b58 - b98 - b108 = 0;

e113:    x9 - b59 - b99 - b109 = 0;

e114:    x10 - b60 - b100 - b110 = 0;

e115:    x11 - b71 - b81 - b101 = 0;

e116:    x12 - b72 - b82 - b102 = 0;

e117:    x13 - b73 - b83 - b103 = 0;

e118:    x14 - b74 - b84 - b104 = 0;

e119:    x15 - b75 - b85 - b105 = 0;

e120:    x16 - b76 - b86 - b106 = 0;

e121:    x17 - b77 - b87 - b107 = 0;

e122:    x18 - b78 - b88 - b108 = 0;

e123:    x19 - b79 - b89 - b109 = 0;

e124:    x20 - b80 - b90 - b110 = 0;

e125:    x21 - b51 - b91 = 0;

e126:    x22 - b52 - b92 = 0;

e127:    x23 - b53 - b93 = 0;

e128:    x24 - b54 - b94 = 0;

e129:    x25 - b55 - b95 = 0;

e130:    x26 - b56 - b96 = 0;

e131:    x27 - b57 - b97 = 0;

e132:    x28 - b58 - b98 = 0;

e133:    x29 - b59 - b99 = 0;

e134:    x30 - b60 - b100 = 0;

e135:    x31 - b51 - b61 - b81 = 0;

e136:    x32 - b52 - b62 - b82 = 0;

e137:    x33 - b53 - b63 - b83 = 0;

e138:    x34 - b54 - b64 - b84 = 0;

e139:    x35 - b55 - b65 - b85 = 0;

e140:    x36 - b56 - b66 - b86 = 0;

e141:    x37 - b57 - b67 - b87 = 0;

e142:    x38 - b58 - b68 - b88 = 0;

e143:    x39 - b59 - b69 - b89 = 0;

e144:    x40 - b60 - b70 - b90 = 0;

e145:    x41 - b71 = 0;

e146:    x42 - b72 = 0;

e147:    x43 - b73 = 0;

e148:    x44 - b74 = 0;

e149:    x45 - b75 = 0;

e150:    x46 - b76 = 0;

e151:    x47 - b77 = 0;

e152:    x48 - b78 = 0;

e153:    x49 - b79 = 0;

e154:    x50 - b80 = 0;
