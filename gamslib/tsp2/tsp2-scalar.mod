#  MIP written by GAMS Convert at 12/13/18 10:31:11
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        102       21        0       81        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        110       10      100        0        0        0        0        0
#  FX     10        0       10        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        508      508        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var b1 binary >= 0, <= 0;
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
var b12 binary >= 0, <= 0;
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
var b23 binary >= 0, <= 0;
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
var b34 binary >= 0, <= 0;
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
var b45 binary >= 0, <= 0;
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
var b56 binary >= 0, <= 0;
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
var b67 binary >= 0, <= 0;
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
var b78 binary >= 0, <= 0;
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
var b89 binary >= 0, <= 0;
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
var b100 binary >= 0, <= 0;
var x102;
var x103;
var x104;
var x105;
var x106;
var x107;
var x108;
var x109;
var x110;

minimize obj:    3*b2 + 5*b3 + 48*b4 + 48*b5 + 8*b6 + 8*b7 + 5*b8 + 5*b9
     + 3*b10 + 3*b11 + 3*b13 + 48*b14 + 48*b15 + 8*b16 + 8*b17 + 5*b18 + 5*b19
     + 5*b21 + 3*b22 + 72*b24 + 72*b25 + 48*b26 + 48*b27 + 24*b28 + 24*b29
     + 3*b30 + 48*b31 + 48*b32 + 74*b33 + 6*b36 + 6*b37 + 12*b38 + 12*b39
     + 48*b40 + 48*b41 + 48*b42 + 74*b43 + 6*b46 + 6*b47 + 12*b48 + 12*b49
     + 48*b50 + 8*b51 + 8*b52 + 50*b53 + 6*b54 + 6*b55 + 8*b58 + 8*b59 + 8*b60
     + 8*b61 + 8*b62 + 50*b63 + 6*b64 + 6*b65 + 8*b68 + 8*b69 + 8*b70 + 5*b71
     + 5*b72 + 26*b73 + 12*b74 + 12*b75 + 8*b76 + 8*b77 + 5*b80 + 5*b81 + 5*b82
     + 26*b83 + 12*b84 + 12*b85 + 8*b86 + 8*b87 + 5*b90 + 3*b91 + 3*b93
     + 48*b94 + 48*b95 + 8*b96 + 8*b97 + 5*b98 + 5*b99;

subject to

e2:    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 = 1;

e3:    b11 + b12 + b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 = 1;

e4:    b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 = 1;

e5:    b31 + b32 + b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 = 1;

e6:    b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 = 1;

e7:    b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 = 1;

e8:    b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 = 1;

e9:    b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 = 1;

e10:    b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 = 1;

e11:    b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 = 1;

e12:    b1 + b11 + b21 + b31 + b41 + b51 + b61 + b71 + b81 + b91 = 1;

e13:    b2 + b12 + b22 + b32 + b42 + b52 + b62 + b72 + b82 + b92 = 1;

e14:    b3 + b13 + b23 + b33 + b43 + b53 + b63 + b73 + b83 + b93 = 1;

e15:    b4 + b14 + b24 + b34 + b44 + b54 + b64 + b74 + b84 + b94 = 1;

e16:    b5 + b15 + b25 + b35 + b45 + b55 + b65 + b75 + b85 + b95 = 1;

e17:    b6 + b16 + b26 + b36 + b46 + b56 + b66 + b76 + b86 + b96 = 1;

e18:    b7 + b17 + b27 + b37 + b47 + b57 + b67 + b77 + b87 + b97 = 1;

e19:    b8 + b18 + b28 + b38 + b48 + b58 + b68 + b78 + b88 + b98 = 1;

e20:    b9 + b19 + b29 + b39 + b49 + b59 + b69 + b79 + b89 + b99 = 1;

e21:    b10 + b20 + b30 + b40 + b50 + b60 + b70 + b80 + b90 + b100 = 1;

e22:    10*b12 <= 9;

e23:    10*b13 + x102 - x103 <= 9;

e24:    10*b14 + x102 - x104 <= 9;

e25:    10*b15 + x102 - x105 <= 9;

e26:    10*b16 + x102 - x106 <= 9;

e27:    10*b17 + x102 - x107 <= 9;

e28:    10*b18 + x102 - x108 <= 9;

e29:    10*b19 + x102 - x109 <= 9;

e30:    10*b20 + x102 - x110 <= 9;

e31:    10*b22 - x102 + x103 <= 9;

e32:    10*b23 <= 9;

e33:    10*b24 + x103 - x104 <= 9;

e34:    10*b25 + x103 - x105 <= 9;

e35:    10*b26 + x103 - x106 <= 9;

e36:    10*b27 + x103 - x107 <= 9;

e37:    10*b28 + x103 - x108 <= 9;

e38:    10*b29 + x103 - x109 <= 9;

e39:    10*b30 + x103 - x110 <= 9;

e40:    10*b32 - x102 + x104 <= 9;

e41:    10*b33 - x103 + x104 <= 9;

e42:    10*b34 <= 9;

e43:    10*b35 + x104 - x105 <= 9;

e44:    10*b36 + x104 - x106 <= 9;

e45:    10*b37 + x104 - x107 <= 9;

e46:    10*b38 + x104 - x108 <= 9;

e47:    10*b39 + x104 - x109 <= 9;

e48:    10*b40 + x104 - x110 <= 9;

e49:    10*b42 - x102 + x105 <= 9;

e50:    10*b43 - x103 + x105 <= 9;

e51:    10*b44 - x104 + x105 <= 9;

e52:    10*b45 <= 9;

e53:    10*b46 + x105 - x106 <= 9;

e54:    10*b47 + x105 - x107 <= 9;

e55:    10*b48 + x105 - x108 <= 9;

e56:    10*b49 + x105 - x109 <= 9;

e57:    10*b50 + x105 - x110 <= 9;

e58:    10*b52 - x102 + x106 <= 9;

e59:    10*b53 - x103 + x106 <= 9;

e60:    10*b54 - x104 + x106 <= 9;

e61:    10*b55 - x105 + x106 <= 9;

e62:    10*b56 <= 9;

e63:    10*b57 + x106 - x107 <= 9;

e64:    10*b58 + x106 - x108 <= 9;

e65:    10*b59 + x106 - x109 <= 9;

e66:    10*b60 + x106 - x110 <= 9;

e67:    10*b62 - x102 + x107 <= 9;

e68:    10*b63 - x103 + x107 <= 9;

e69:    10*b64 - x104 + x107 <= 9;

e70:    10*b65 - x105 + x107 <= 9;

e71:    10*b66 - x106 + x107 <= 9;

e72:    10*b67 <= 9;

e73:    10*b68 + x107 - x108 <= 9;

e74:    10*b69 + x107 - x109 <= 9;

e75:    10*b70 + x107 - x110 <= 9;

e76:    10*b72 - x102 + x108 <= 9;

e77:    10*b73 - x103 + x108 <= 9;

e78:    10*b74 - x104 + x108 <= 9;

e79:    10*b75 - x105 + x108 <= 9;

e80:    10*b76 - x106 + x108 <= 9;

e81:    10*b77 - x107 + x108 <= 9;

e82:    10*b78 <= 9;

e83:    10*b79 + x108 - x109 <= 9;

e84:    10*b80 + x108 - x110 <= 9;

e85:    10*b82 - x102 + x109 <= 9;

e86:    10*b83 - x103 + x109 <= 9;

e87:    10*b84 - x104 + x109 <= 9;

e88:    10*b85 - x105 + x109 <= 9;

e89:    10*b86 - x106 + x109 <= 9;

e90:    10*b87 - x107 + x109 <= 9;

e91:    10*b88 - x108 + x109 <= 9;

e92:    10*b89 <= 9;

e93:    10*b90 + x109 - x110 <= 9;

e94:    10*b92 - x102 + x110 <= 9;

e95:    10*b93 - x103 + x110 <= 9;

e96:    10*b94 - x104 + x110 <= 9;

e97:    10*b95 - x105 + x110 <= 9;

e98:    10*b96 - x106 + x110 <= 9;

e99:    10*b97 - x107 + x110 <= 9;

e100:    10*b98 - x108 + x110 <= 9;

e101:    10*b99 - x109 + x110 <= 9;

e102:    10*b100 <= 9;
