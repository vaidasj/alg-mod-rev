#  MIP written by GAMS Convert at 12/13/18 10:32:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        127       59       34       34        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        107        1       98        8        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        481      481        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var i1 integer := 1, >= 1, <= 8;
var i2 integer := 1, >= 1, <= 8;
var i3 integer := 1, >= 1, <= 8;
var i4 integer := 1, >= 1, <= 8;
var i5 integer := 1, >= 1, <= 8;
var i6 integer := 1, >= 1, <= 8;
var i7 integer := 1, >= 1, <= 8;
var i8 integer := 1, >= 1, <= 8;
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

minimize obj:    i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8;

subject to

e1:  - i1 + i2 - 9*b9 <= -2;

e2:  - i1 + i3 - 9*b10 <= -2;

e3:  - i1 + i4 - 9*b11 <= -2;

e4:    i1 - i2 - 9*b12 <= -2;

e5:  - i2 + i3 - 9*b13 <= -2;

e6:  - i2 + i5 - 9*b14 <= -2;

e7:  - i2 + i6 - 9*b15 <= -2;

e8:    i1 - i3 - 9*b16 <= -2;

e9:    i2 - i3 - 9*b17 <= -2;

e10:  - i3 + i4 - 9*b18 <= -2;

e11:  - i3 + i5 - 9*b19 <= -2;

e12:  - i3 + i6 - 9*b20 <= -2;

e13:  - i3 + i7 - 9*b21 <= -2;

e14:    i1 - i4 - 9*b22 <= -2;

e15:    i3 - i4 - 9*b23 <= -2;

e16:  - i4 + i6 - 9*b24 <= -2;

e17:  - i4 + i7 - 9*b25 <= -2;

e18:    i2 - i5 - 9*b26 <= -2;

e19:    i3 - i5 - 9*b27 <= -2;

e20:  - i5 + i6 - 9*b28 <= -2;

e21:  - i5 + i8 - 9*b29 <= -2;

e22:    i2 - i6 - 9*b30 <= -2;

e23:    i3 - i6 - 9*b31 <= -2;

e24:    i4 - i6 - 9*b32 <= -2;

e25:    i5 - i6 - 9*b33 <= -2;

e26:  - i6 + i7 - 9*b34 <= -2;

e27:  - i6 + i8 - 9*b35 <= -2;

e28:    i3 - i7 - 9*b36 <= -2;

e29:    i4 - i7 - 9*b37 <= -2;

e30:    i6 - i7 - 9*b38 <= -2;

e31:  - i7 + i8 - 9*b39 <= -2;

e32:    i5 - i8 - 9*b40 <= -2;

e33:    i6 - i8 - 9*b41 <= -2;

e34:    i7 - i8 - 9*b42 <= -2;

e35:  - i1 + i2 + 9*b12 >= 2;

e36:  - i1 + i3 + 9*b16 >= 2;

e37:  - i1 + i4 + 9*b22 >= 2;

e38:    i1 - i2 + 9*b9 >= 2;

e39:  - i2 + i3 + 9*b17 >= 2;

e40:  - i2 + i5 + 9*b26 >= 2;

e41:  - i2 + i6 + 9*b30 >= 2;

e42:    i1 - i3 + 9*b10 >= 2;

e43:    i2 - i3 + 9*b13 >= 2;

e44:  - i3 + i4 + 9*b23 >= 2;

e45:  - i3 + i5 + 9*b27 >= 2;

e46:  - i3 + i6 + 9*b31 >= 2;

e47:  - i3 + i7 + 9*b36 >= 2;

e48:    i1 - i4 + 9*b11 >= 2;

e49:    i3 - i4 + 9*b18 >= 2;

e50:  - i4 + i6 + 9*b32 >= 2;

e51:  - i4 + i7 + 9*b37 >= 2;

e52:    i2 - i5 + 9*b14 >= 2;

e53:    i3 - i5 + 9*b19 >= 2;

e54:  - i5 + i6 + 9*b33 >= 2;

e55:  - i5 + i8 + 9*b40 >= 2;

e56:    i2 - i6 + 9*b15 >= 2;

e57:    i3 - i6 + 9*b20 >= 2;

e58:    i4 - i6 + 9*b24 >= 2;

e59:    i5 - i6 + 9*b28 >= 2;

e60:  - i6 + i7 + 9*b38 >= 2;

e61:  - i6 + i8 + 9*b41 >= 2;

e62:    i3 - i7 + 9*b21 >= 2;

e63:    i4 - i7 + 9*b25 >= 2;

e64:    i6 - i7 + 9*b34 >= 2;

e65:  - i7 + i8 + 9*b42 >= 2;

e66:    i5 - i8 + 9*b29 >= 2;

e67:    i6 - i8 + 9*b35 >= 2;

e68:    i7 - i8 + 9*b39 >= 2;

e69:    b9 + b12 = 1;

e70:    b10 + b16 = 1;

e71:    b11 + b22 = 1;

e72:    b9 + b12 = 1;

e73:    b13 + b17 = 1;

e74:    b14 + b26 = 1;

e75:    b15 + b30 = 1;

e76:    b10 + b16 = 1;

e77:    b13 + b17 = 1;

e78:    b18 + b23 = 1;

e79:    b19 + b27 = 1;

e80:    b20 + b31 = 1;

e81:    b21 + b36 = 1;

e82:    b11 + b22 = 1;

e83:    b18 + b23 = 1;

e84:    b24 + b32 = 1;

e85:    b25 + b37 = 1;

e86:    b14 + b26 = 1;

e87:    b19 + b27 = 1;

e88:    b28 + b33 = 1;

e89:    b29 + b40 = 1;

e90:    b15 + b30 = 1;

e91:    b20 + b31 = 1;

e92:    b24 + b32 = 1;

e93:    b28 + b33 = 1;

e94:    b34 + b38 = 1;

e95:    b35 + b41 = 1;

e96:    b21 + b36 = 1;

e97:    b25 + b37 = 1;

e98:    b34 + b38 = 1;

e99:    b39 + b42 = 1;

e100:    b29 + b40 = 1;

e101:    b35 + b41 = 1;

e102:    b39 + b42 = 1;

e103:    i1 - b43 - 2*b44 - 3*b45 - 4*b46 - 5*b47 - 6*b48 - 7*b49 - 8*b50 = 0;

e104:    i2 - b51 - 2*b52 - 3*b53 - 4*b54 - 5*b55 - 6*b56 - 7*b57 - 8*b58 = 0;

e105:    i3 - b59 - 2*b60 - 3*b61 - 4*b62 - 5*b63 - 6*b64 - 7*b65 - 8*b66 = 0;

e106:    i4 - b67 - 2*b68 - 3*b69 - 4*b70 - 5*b71 - 6*b72 - 7*b73 - 8*b74 = 0;

e107:    i5 - b75 - 2*b76 - 3*b77 - 4*b78 - 5*b79 - 6*b80 - 7*b81 - 8*b82 = 0;

e108:    i6 - b83 - 2*b84 - 3*b85 - 4*b86 - 5*b87 - 6*b88 - 7*b89 - 8*b90 = 0;

e109:    i7 - b91 - 2*b92 - 3*b93 - 4*b94 - 5*b95 - 6*b96 - 7*b97 - 8*b98 = 0;

e110:    i8 - b99 - 2*b100 - 3*b101 - 4*b102 - 5*b103 - 6*b104 - 7*b105
       - 8*b106 = 0;

e111:    b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 = 1;

e112:    b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 = 1;

e113:    b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 = 1;

e114:    b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 = 1;

e115:    b75 + b76 + b77 + b78 + b79 + b80 + b81 + b82 = 1;

e116:    b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 = 1;

e117:    b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 = 1;

e118:    b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106 = 1;

e119:    b43 + b51 + b59 + b67 + b75 + b83 + b91 + b99 = 1;

e120:    b44 + b52 + b60 + b68 + b76 + b84 + b92 + b100 = 1;

e121:    b45 + b53 + b61 + b69 + b77 + b85 + b93 + b101 = 1;

e122:    b46 + b54 + b62 + b70 + b78 + b86 + b94 + b102 = 1;

e123:    b47 + b55 + b63 + b71 + b79 + b87 + b95 + b103 = 1;

e124:    b48 + b56 + b64 + b72 + b80 + b88 + b96 + b104 = 1;

e125:    b49 + b57 + b65 + b73 + b81 + b89 + b97 + b105 = 1;

e126:    b50 + b58 + b66 + b74 + b82 + b90 + b98 + b106 = 1;
