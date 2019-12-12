#  MIP written by GAMS Convert at 12/13/18 10:24:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        100        2        0       98        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         77       50       27        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        469      469        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var b1 binary >= 0, <= 1;
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
var x28 >= 0;
var x29 >= 0;
var x30 >= 0;
var x31 >= 0;
var x32 >= 0;
var x33 >= 0;
var x34 >= 0;
var x35 >= 0;
var x36 >= 0;
var x37 >= 0;
var x38 >= 0;
var x39 >= 0;
var x40 >= 0;
var x41 >= 0;
var x42 >= 0;
var x43 >= 0;
var x44 >= 0;
var x45 >= 0;
var x46 >= 0;
var x47 >= 0;
var x48 >= 0;
var x49 >= 0;
var x50 >= 0;
var x51 >= 0;
var x52 >= 0;
var x53 >= 0;
var x54 >= 0;
var x55 >= 0;
var x56 >= 0;
var x57 >= 0;
var x58 >= 0;
var x59 >= 0;
var x60 >= 0;
var x61 >= 0;
var x62 >= 0;
var x63 >= 0;
var x64 >= 0;
var x65 >= 0;
var x66 >= 0;
var x67 >= 0;
var x68 >= 0;
var x69 >= 0;
var x70 >= 0;
var x71 >= 0;
var x72 >= 0;
var x73 >= 0;
var x74 >= 0;
var x75 >= 0;
var x76 >= 0;

minimize obj:    x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37
     + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49
     + x50 + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 + x61
     + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72 + x73
     + x74 + x75 + x76;

subject to

e1:    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14
     + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 + b25 + b26
     + b27 = 13;

e2:    b1 + b2 + b3 - x28 <= 2;

e3:  - b1 - b2 - b3 - x28 <= -1;

e4:    b4 + b5 + b6 - x29 <= 2;

e5:  - b4 - b5 - b6 - x29 <= -1;

e6:    b7 + b8 + b9 - x30 <= 2;

e7:  - b7 - b8 - b9 - x30 <= -1;

e8:    b1 + b4 + b7 - x31 <= 2;

e9:  - b1 - b4 - b7 - x31 <= -1;

e10:    b2 + b5 + b8 - x32 <= 2;

e11:  - b2 - b5 - b8 - x32 <= -1;

e12:    b3 + b6 + b9 - x33 <= 2;

e13:  - b3 - b6 - b9 - x33 <= -1;

e14:    b1 + b5 + b9 - x34 <= 2;

e15:  - b1 - b5 - b9 - x34 <= -1;

e16:    b3 + b5 + b7 - x35 <= 2;

e17:  - b3 - b5 - b7 - x35 <= -1;

e18:    b10 + b11 + b12 - x36 <= 2;

e19:  - b10 - b11 - b12 - x36 <= -1;

e20:    b13 + b14 + b15 - x37 <= 2;

e21:  - b13 - b14 - b15 - x37 <= -1;

e22:    b16 + b17 + b18 - x38 <= 2;

e23:  - b16 - b17 - b18 - x38 <= -1;

e24:    b10 + b13 + b16 - x39 <= 2;

e25:  - b10 - b13 - b16 - x39 <= -1;

e26:    b11 + b14 + b17 - x40 <= 2;

e27:  - b11 - b14 - b17 - x40 <= -1;

e28:    b12 + b15 + b18 - x41 <= 2;

e29:  - b12 - b15 - b18 - x41 <= -1;

e30:    b10 + b14 + b18 - x42 <= 2;

e31:  - b10 - b14 - b18 - x42 <= -1;

e32:    b12 + b14 + b16 - x43 <= 2;

e33:  - b12 - b14 - b16 - x43 <= -1;

e34:    b19 + b20 + b21 - x44 <= 2;

e35:  - b19 - b20 - b21 - x44 <= -1;

e36:    b22 + b23 + b24 - x45 <= 2;

e37:  - b22 - b23 - b24 - x45 <= -1;

e38:    b25 + b26 + b27 - x46 <= 2;

e39:  - b25 - b26 - b27 - x46 <= -1;

e40:    b19 + b22 + b25 - x47 <= 2;

e41:  - b19 - b22 - b25 - x47 <= -1;

e42:    b20 + b23 + b26 - x48 <= 2;

e43:  - b20 - b23 - b26 - x48 <= -1;

e44:    b21 + b24 + b27 - x49 <= 2;

e45:  - b21 - b24 - b27 - x49 <= -1;

e46:    b19 + b23 + b27 - x50 <= 2;

e47:  - b19 - b23 - b27 - x50 <= -1;

e48:    b21 + b23 + b25 - x51 <= 2;

e49:  - b21 - b23 - b25 - x51 <= -1;

e50:    b1 + b10 + b19 - x52 <= 2;

e51:  - b1 - b10 - b19 - x52 <= -1;

e52:    b2 + b11 + b20 - x53 <= 2;

e53:  - b2 - b11 - b20 - x53 <= -1;

e54:    b3 + b12 + b21 - x54 <= 2;

e55:  - b3 - b12 - b21 - x54 <= -1;

e56:    b1 + b11 + b21 - x55 <= 2;

e57:  - b1 - b11 - b21 - x55 <= -1;

e58:    b4 + b13 + b22 - x56 <= 2;

e59:  - b4 - b13 - b22 - x56 <= -1;

e60:    b5 + b14 + b23 - x57 <= 2;

e61:  - b5 - b14 - b23 - x57 <= -1;

e62:    b6 + b15 + b24 - x58 <= 2;

e63:  - b6 - b15 - b24 - x58 <= -1;

e64:    b4 + b14 + b24 - x59 <= 2;

e65:  - b4 - b14 - b24 - x59 <= -1;

e66:    b7 + b16 + b25 - x60 <= 2;

e67:  - b7 - b16 - b25 - x60 <= -1;

e68:    b8 + b17 + b26 - x61 <= 2;

e69:  - b8 - b17 - b26 - x61 <= -1;

e70:    b9 + b18 + b27 - x62 <= 2;

e71:  - b9 - b18 - b27 - x62 <= -1;

e72:    b7 + b17 + b27 - x63 <= 2;

e73:  - b7 - b17 - b27 - x63 <= -1;

e74:    b1 + b13 + b25 - x64 <= 2;

e75:  - b1 - b13 - b25 - x64 <= -1;

e76:    b2 + b14 + b26 - x65 <= 2;

e77:  - b2 - b14 - b26 - x65 <= -1;

e78:    b3 + b15 + b27 - x66 <= 2;

e79:  - b3 - b15 - b27 - x66 <= -1;

e80:    b1 + b14 + b27 - x67 <= 2;

e81:  - b1 - b14 - b27 - x67 <= -1;

e82:    b3 + b14 + b25 - x68 <= 2;

e83:  - b3 - b14 - b25 - x68 <= -1;

e84:    b7 + b13 + b19 - x69 <= 2;

e85:  - b7 - b13 - b19 - x69 <= -1;

e86:    b8 + b14 + b20 - x70 <= 2;

e87:  - b8 - b14 - b20 - x70 <= -1;

e88:    b9 + b15 + b21 - x71 <= 2;

e89:  - b9 - b15 - b21 - x71 <= -1;

e90:    b7 + b14 + b21 - x72 <= 2;

e91:  - b7 - b14 - b21 - x72 <= -1;

e92:    b9 + b14 + b19 - x73 <= 2;

e93:  - b9 - b14 - b19 - x73 <= -1;

e94:    b3 + b11 + b19 - x74 <= 2;

e95:  - b3 - b11 - b19 - x74 <= -1;

e96:    b6 + b14 + b22 - x75 <= 2;

e97:  - b6 - b14 - b22 - x75 <= -1;

e98:    b9 + b17 + b25 - x76 <= 2;

e99:  - b9 - b17 - b25 - x76 <= -1;
