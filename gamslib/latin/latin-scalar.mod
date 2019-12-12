#  MIP written by GAMS Convert at 12/13/18 10:30:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        161       97        0       64        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        129        1      128        0        0        0        0        0
#  FX      1        0        1        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        641      641        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var b1 binary := 1, >= 1, <= 1;
var b2 binary >= 0, <= 1;
var b3 binary >= 0, <= 1;
var b4 binary >= 0, <= 1;
var b5 binary >= 0, <= 1;
var b6 binary >= 0, <= 1;
var b7 binary >= 0, <= 1;
var b8 binary >= 0, <= 1;
var b9 binary >= 0, <= 1;
var b10 binary >= 0, <= 1;
var b11 binary >= 0, <= 1;
var b12 binary >= 0, <= 1;
var b13 binary >= 0, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 1;
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
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
var b128 binary >= 0, <= 1;

minimize obj:    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12
     + b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24
     + b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36
     + b37 + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48
     + b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60
     + b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 + b72
     + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84
     + b85 + b86 + b87 + b88 + b89 + b90 + b91 + b92 + b93 + b94 + b95 + b96
     + b97 + b98 + b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106 + b107
     + b108 + b109 + b110 + b111 + b112 + b113 + b114 + b115 + b116 + b117
     + b118 + b119 + b120 + b121 + b122 + b123 + b124 + b125 + b126 + b127
     + b128;

subject to

e2:    b1 + b17 + b33 + b49 = 1;

e3:    b2 + b18 + b34 + b50 = 1;

e4:    b3 + b19 + b35 + b51 = 1;

e5:    b4 + b20 + b36 + b52 = 1;

e6:    b5 + b21 + b37 + b53 = 1;

e7:    b6 + b22 + b38 + b54 = 1;

e8:    b7 + b23 + b39 + b55 = 1;

e9:    b8 + b24 + b40 + b56 = 1;

e10:    b9 + b25 + b41 + b57 = 1;

e11:    b10 + b26 + b42 + b58 = 1;

e12:    b11 + b27 + b43 + b59 = 1;

e13:    b12 + b28 + b44 + b60 = 1;

e14:    b13 + b29 + b45 + b61 = 1;

e15:    b14 + b30 + b46 + b62 = 1;

e16:    b15 + b31 + b47 + b63 = 1;

e17:    b16 + b32 + b48 + b64 = 1;

e18:    b65 + b81 + b97 + b113 = 1;

e19:    b66 + b82 + b98 + b114 = 1;

e20:    b67 + b83 + b99 + b115 = 1;

e21:    b68 + b84 + b100 + b116 = 1;

e22:    b69 + b85 + b101 + b117 = 1;

e23:    b70 + b86 + b102 + b118 = 1;

e24:    b71 + b87 + b103 + b119 = 1;

e25:    b72 + b88 + b104 + b120 = 1;

e26:    b73 + b89 + b105 + b121 = 1;

e27:    b74 + b90 + b106 + b122 = 1;

e28:    b75 + b91 + b107 + b123 = 1;

e29:    b76 + b92 + b108 + b124 = 1;

e30:    b77 + b93 + b109 + b125 = 1;

e31:    b78 + b94 + b110 + b126 = 1;

e32:    b79 + b95 + b111 + b127 = 1;

e33:    b80 + b96 + b112 + b128 = 1;

e34:    b1 + b5 + b9 + b13 = 1;

e35:    b2 + b6 + b10 + b14 = 1;

e36:    b3 + b7 + b11 + b15 = 1;

e37:    b4 + b8 + b12 + b16 = 1;

e38:    b17 + b21 + b25 + b29 = 1;

e39:    b18 + b22 + b26 + b30 = 1;

e40:    b19 + b23 + b27 + b31 = 1;

e41:    b20 + b24 + b28 + b32 = 1;

e42:    b33 + b37 + b41 + b45 = 1;

e43:    b34 + b38 + b42 + b46 = 1;

e44:    b35 + b39 + b43 + b47 = 1;

e45:    b36 + b40 + b44 + b48 = 1;

e46:    b49 + b53 + b57 + b61 = 1;

e47:    b50 + b54 + b58 + b62 = 1;

e48:    b51 + b55 + b59 + b63 = 1;

e49:    b52 + b56 + b60 + b64 = 1;

e50:    b65 + b69 + b73 + b77 = 1;

e51:    b66 + b70 + b74 + b78 = 1;

e52:    b67 + b71 + b75 + b79 = 1;

e53:    b68 + b72 + b76 + b80 = 1;

e54:    b81 + b85 + b89 + b93 = 1;

e55:    b82 + b86 + b90 + b94 = 1;

e56:    b83 + b87 + b91 + b95 = 1;

e57:    b84 + b88 + b92 + b96 = 1;

e58:    b97 + b101 + b105 + b109 = 1;

e59:    b98 + b102 + b106 + b110 = 1;

e60:    b99 + b103 + b107 + b111 = 1;

e61:    b100 + b104 + b108 + b112 = 1;

e62:    b113 + b117 + b121 + b125 = 1;

e63:    b114 + b118 + b122 + b126 = 1;

e64:    b115 + b119 + b123 + b127 = 1;

e65:    b116 + b120 + b124 + b128 = 1;

e66:    b1 + b2 + b3 + b4 = 1;

e67:    b5 + b6 + b7 + b8 = 1;

e68:    b9 + b10 + b11 + b12 = 1;

e69:    b13 + b14 + b15 + b16 = 1;

e70:    b17 + b18 + b19 + b20 = 1;

e71:    b21 + b22 + b23 + b24 = 1;

e72:    b25 + b26 + b27 + b28 = 1;

e73:    b29 + b30 + b31 + b32 = 1;

e74:    b33 + b34 + b35 + b36 = 1;

e75:    b37 + b38 + b39 + b40 = 1;

e76:    b41 + b42 + b43 + b44 = 1;

e77:    b45 + b46 + b47 + b48 = 1;

e78:    b49 + b50 + b51 + b52 = 1;

e79:    b53 + b54 + b55 + b56 = 1;

e80:    b57 + b58 + b59 + b60 = 1;

e81:    b61 + b62 + b63 + b64 = 1;

e82:    b65 + b66 + b67 + b68 = 1;

e83:    b69 + b70 + b71 + b72 = 1;

e84:    b73 + b74 + b75 + b76 = 1;

e85:    b77 + b78 + b79 + b80 = 1;

e86:    b81 + b82 + b83 + b84 = 1;

e87:    b85 + b86 + b87 + b88 = 1;

e88:    b89 + b90 + b91 + b92 = 1;

e89:    b93 + b94 + b95 + b96 = 1;

e90:    b97 + b98 + b99 + b100 = 1;

e91:    b101 + b102 + b103 + b104 = 1;

e92:    b105 + b106 + b107 + b108 = 1;

e93:    b109 + b110 + b111 + b112 = 1;

e94:    b113 + b114 + b115 + b116 = 1;

e95:    b117 + b118 + b119 + b120 = 1;

e96:    b121 + b122 + b123 + b124 = 1;

e97:    b125 + b126 + b127 + b128 = 1;

e98:    b1 + b65 <= 1;

e99:    b2 + b66 <= 1;

e100:    b3 + b67 <= 1;

e101:    b4 + b68 <= 1;

e102:    b5 + b69 <= 1;

e103:    b6 + b70 <= 1;

e104:    b7 + b71 <= 1;

e105:    b8 + b72 <= 1;

e106:    b9 + b73 <= 1;

e107:    b10 + b74 <= 1;

e108:    b11 + b75 <= 1;

e109:    b12 + b76 <= 1;

e110:    b13 + b77 <= 1;

e111:    b14 + b78 <= 1;

e112:    b15 + b79 <= 1;

e113:    b16 + b80 <= 1;

e114:    b17 + b81 <= 1;

e115:    b18 + b82 <= 1;

e116:    b19 + b83 <= 1;

e117:    b20 + b84 <= 1;

e118:    b21 + b85 <= 1;

e119:    b22 + b86 <= 1;

e120:    b23 + b87 <= 1;

e121:    b24 + b88 <= 1;

e122:    b25 + b89 <= 1;

e123:    b26 + b90 <= 1;

e124:    b27 + b91 <= 1;

e125:    b28 + b92 <= 1;

e126:    b29 + b93 <= 1;

e127:    b30 + b94 <= 1;

e128:    b31 + b95 <= 1;

e129:    b32 + b96 <= 1;

e130:    b33 + b97 <= 1;

e131:    b34 + b98 <= 1;

e132:    b35 + b99 <= 1;

e133:    b36 + b100 <= 1;

e134:    b37 + b101 <= 1;

e135:    b38 + b102 <= 1;

e136:    b39 + b103 <= 1;

e137:    b40 + b104 <= 1;

e138:    b41 + b105 <= 1;

e139:    b42 + b106 <= 1;

e140:    b43 + b107 <= 1;

e141:    b44 + b108 <= 1;

e142:    b45 + b109 <= 1;

e143:    b46 + b110 <= 1;

e144:    b47 + b111 <= 1;

e145:    b48 + b112 <= 1;

e146:    b49 + b113 <= 1;

e147:    b50 + b114 <= 1;

e148:    b51 + b115 <= 1;

e149:    b52 + b116 <= 1;

e150:    b53 + b117 <= 1;

e151:    b54 + b118 <= 1;

e152:    b55 + b119 <= 1;

e153:    b56 + b120 <= 1;

e154:    b57 + b121 <= 1;

e155:    b58 + b122 <= 1;

e156:    b59 + b123 <= 1;

e157:    b60 + b124 <= 1;

e158:    b61 + b125 <= 1;

e159:    b62 + b126 <= 1;

e160:    b63 + b127 <= 1;

e161:    b64 + b128 <= 1;
