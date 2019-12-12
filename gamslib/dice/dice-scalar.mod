#  MIP written by GAMS Convert at 12/13/18 10:31:11
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        126        3      108       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        127       19      108        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        465      465        0        0


var x1;
var x2 := 1, >= 1, <= 1;
var x3 := 1, >= 1, <= 18;
var x4 := 1, >= 1, <= 18;
var x5 := 1, >= 1, <= 18;
var x6 := 1, >= 1, <= 18;
var x7 := 1, >= 1, <= 18;
var x8 := 1, >= 1, <= 18;
var x9 := 1, >= 1, <= 18;
var x10 := 1, >= 1, <= 18;
var x11 := 1, >= 1, <= 18;
var x12 := 1, >= 1, <= 18;
var x13 := 1, >= 1, <= 18;
var x14 := 1, >= 1, <= 18;
var x15 := 1, >= 1, <= 18;
var x16 := 1, >= 1, <= 18;
var x17 := 1, >= 1, <= 18;
var x18 := 1, >= 1, <= 18;
var x19 := 1, >= 1, <= 18;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var b22 binary >= 0, <= 1;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;
var b25 binary >= 0, <= 1;
var b26 binary >= 0, <= 1;
var b27 binary >= 0, <= 1;
var b28 binary >= 0, <= 1;
var b29 binary >= 0, <= 1;
var b30 binary >= 0, <= 1;
var b31 binary >= 0, <= 1;
var b32 binary >= 0, <= 1;
var b33 binary >= 0, <= 1;
var b34 binary >= 0, <= 1;
var b35 binary >= 0, <= 1;
var b36 binary >= 0, <= 1;
var b37 binary >= 0, <= 1;
var b38 binary >= 0, <= 1;
var b39 binary >= 0, <= 1;
var b40 binary >= 0, <= 1;
var b41 binary >= 0, <= 1;
var b42 binary >= 0, <= 1;
var b43 binary >= 0, <= 1;
var b44 binary >= 0, <= 1;
var b45 binary >= 0, <= 1;
var b46 binary >= 0, <= 1;
var b47 binary >= 0, <= 1;
var b48 binary >= 0, <= 1;
var b49 binary >= 0, <= 1;
var b50 binary >= 0, <= 1;
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
var b111 binary >= 0, <= 1;
var b112 binary >= 0, <= 1;
var b113 binary >= 0, <= 1;
var b114 binary >= 0, <= 1;
var b115 binary >= 0, <= 1;
var b116 binary >= 0, <= 1;
var b117 binary >= 0, <= 1;
var b118 binary >= 0, <= 1;
var b119 binary >= 0, <= 1;
var b120 binary >= 0, <= 1;
var b121 binary >= 0, <= 1;
var b122 binary >= 0, <= 1;
var b123 binary >= 0, <= 1;
var b124 binary >= 0, <= 1;
var b125 binary >= 0, <= 1;
var b126 binary >= 0, <= 1;
var b127 binary >= 0, <= 1;

maximize obj: x1;

subject to

e1:  - x1 + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30
     + b31 + b32 + b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 + b41 + b42
     + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54
     + b55 = 0;

e2:  - x1 + b56 + b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66
     + b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78
     + b79 + b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90
     + b91 = 0;

e3:  - x1 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102
     + b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110 + b111 + b112
     + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 + b121 + b122
     + b123 + b124 + b125 + b126 + b127 = 0;

e4:    x2 - x8 - 17*b20 >= -16;

e5:    x2 - x9 - 17*b21 >= -16;

e6:    x2 - x10 - 17*b22 >= -16;

e7:    x2 - x11 - 17*b23 >= -16;

e8:    x2 - x12 - 17*b24 >= -16;

e9:    x2 - x13 - 17*b25 >= -16;

e10:    x3 - x8 - 17*b26 >= -16;

e11:    x3 - x9 - 17*b27 >= -16;

e12:    x3 - x10 - 17*b28 >= -16;

e13:    x3 - x11 - 17*b29 >= -16;

e14:    x3 - x12 - 17*b30 >= -16;

e15:    x3 - x13 - 17*b31 >= -16;

e16:    x4 - x8 - 17*b32 >= -16;

e17:    x4 - x9 - 17*b33 >= -16;

e18:    x4 - x10 - 17*b34 >= -16;

e19:    x4 - x11 - 17*b35 >= -16;

e20:    x4 - x12 - 17*b36 >= -16;

e21:    x4 - x13 - 17*b37 >= -16;

e22:    x5 - x8 - 17*b38 >= -16;

e23:    x5 - x9 - 17*b39 >= -16;

e24:    x5 - x10 - 17*b40 >= -16;

e25:    x5 - x11 - 17*b41 >= -16;

e26:    x5 - x12 - 17*b42 >= -16;

e27:    x5 - x13 - 17*b43 >= -16;

e28:    x6 - x8 - 17*b44 >= -16;

e29:    x6 - x9 - 17*b45 >= -16;

e30:    x6 - x10 - 17*b46 >= -16;

e31:    x6 - x11 - 17*b47 >= -16;

e32:    x6 - x12 - 17*b48 >= -16;

e33:    x6 - x13 - 17*b49 >= -16;

e34:    x7 - x8 - 17*b50 >= -16;

e35:    x7 - x9 - 17*b51 >= -16;

e36:    x7 - x10 - 17*b52 >= -16;

e37:    x7 - x11 - 17*b53 >= -16;

e38:    x7 - x12 - 17*b54 >= -16;

e39:    x7 - x13 - 17*b55 >= -16;

e40:    x8 - x14 - 17*b56 >= -16;

e41:    x8 - x15 - 17*b57 >= -16;

e42:    x8 - x16 - 17*b58 >= -16;

e43:    x8 - x17 - 17*b59 >= -16;

e44:    x8 - x18 - 17*b60 >= -16;

e45:    x8 - x19 - 17*b61 >= -16;

e46:    x9 - x14 - 17*b62 >= -16;

e47:    x9 - x15 - 17*b63 >= -16;

e48:    x9 - x16 - 17*b64 >= -16;

e49:    x9 - x17 - 17*b65 >= -16;

e50:    x9 - x18 - 17*b66 >= -16;

e51:    x9 - x19 - 17*b67 >= -16;

e52:    x10 - x14 - 17*b68 >= -16;

e53:    x10 - x15 - 17*b69 >= -16;

e54:    x10 - x16 - 17*b70 >= -16;

e55:    x10 - x17 - 17*b71 >= -16;

e56:    x10 - x18 - 17*b72 >= -16;

e57:    x10 - x19 - 17*b73 >= -16;

e58:    x11 - x14 - 17*b74 >= -16;

e59:    x11 - x15 - 17*b75 >= -16;

e60:    x11 - x16 - 17*b76 >= -16;

e61:    x11 - x17 - 17*b77 >= -16;

e62:    x11 - x18 - 17*b78 >= -16;

e63:    x11 - x19 - 17*b79 >= -16;

e64:    x12 - x14 - 17*b80 >= -16;

e65:    x12 - x15 - 17*b81 >= -16;

e66:    x12 - x16 - 17*b82 >= -16;

e67:    x12 - x17 - 17*b83 >= -16;

e68:    x12 - x18 - 17*b84 >= -16;

e69:    x12 - x19 - 17*b85 >= -16;

e70:    x13 - x14 - 17*b86 >= -16;

e71:    x13 - x15 - 17*b87 >= -16;

e72:    x13 - x16 - 17*b88 >= -16;

e73:    x13 - x17 - 17*b89 >= -16;

e74:    x13 - x18 - 17*b90 >= -16;

e75:    x13 - x19 - 17*b91 >= -16;

e76:  - x2 + x14 - 17*b92 >= -16;

e77:  - x3 + x14 - 17*b93 >= -16;

e78:  - x4 + x14 - 17*b94 >= -16;

e79:  - x5 + x14 - 17*b95 >= -16;

e80:  - x6 + x14 - 17*b96 >= -16;

e81:  - x7 + x14 - 17*b97 >= -16;

e82:  - x2 + x15 - 17*b98 >= -16;

e83:  - x3 + x15 - 17*b99 >= -16;

e84:  - x4 + x15 - 17*b100 >= -16;

e85:  - x5 + x15 - 17*b101 >= -16;

e86:  - x6 + x15 - 17*b102 >= -16;

e87:  - x7 + x15 - 17*b103 >= -16;

e88:  - x2 + x16 - 17*b104 >= -16;

e89:  - x3 + x16 - 17*b105 >= -16;

e90:  - x4 + x16 - 17*b106 >= -16;

e91:  - x5 + x16 - 17*b107 >= -16;

e92:  - x6 + x16 - 17*b108 >= -16;

e93:  - x7 + x16 - 17*b109 >= -16;

e94:  - x2 + x17 - 17*b110 >= -16;

e95:  - x3 + x17 - 17*b111 >= -16;

e96:  - x4 + x17 - 17*b112 >= -16;

e97:  - x5 + x17 - 17*b113 >= -16;

e98:  - x6 + x17 - 17*b114 >= -16;

e99:  - x7 + x17 - 17*b115 >= -16;

e100:  - x2 + x18 - 17*b116 >= -16;

e101:  - x3 + x18 - 17*b117 >= -16;

e102:  - x4 + x18 - 17*b118 >= -16;

e103:  - x5 + x18 - 17*b119 >= -16;

e104:  - x6 + x18 - 17*b120 >= -16;

e105:  - x7 + x18 - 17*b121 >= -16;

e106:  - x2 + x19 - 17*b122 >= -16;

e107:  - x3 + x19 - 17*b123 >= -16;

e108:  - x4 + x19 - 17*b124 >= -16;

e109:  - x5 + x19 - 17*b125 >= -16;

e110:  - x6 + x19 - 17*b126 >= -16;

e111:  - x7 + x19 - 17*b127 >= -16;

e112:    x2 - x3 <= -1;

e113:    x3 - x4 <= -1;

e114:    x4 - x5 <= -1;

e115:    x5 - x6 <= -1;

e116:    x6 - x7 <= -1;

e117:    x8 - x9 <= -1;

e118:    x9 - x10 <= -1;

e119:    x10 - x11 <= -1;

e120:    x11 - x12 <= -1;

e121:    x12 - x13 <= -1;

e122:    x14 - x15 <= -1;

e123:    x15 - x16 <= -1;

e124:    x16 - x17 <= -1;

e125:    x17 - x18 <= -1;

e126:    x18 - x19 <= -1;
