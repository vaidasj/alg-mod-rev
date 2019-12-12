#  MIP written by GAMS Convert at 12/13/18 10:32:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         87       28        0       59        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         68       38       30        0        0        0        0        0
#  FX      3        0        3        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        239      239        0        0
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
var b11 binary >= 0, <= 0;
var b12 binary >= 0, <= 1;
var b13 binary >= 0, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 1;
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 0;
var b22 binary >= 0, <= 1;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;
var b25 binary >= 0, <= 1;
var b26 binary >= 0, <= 1;
var b27 binary >= 0, <= 1;
var b28 binary >= 0, <= 1;
var b29 binary >= 0, <= 1;
var b30 binary >= 0, <= 1;
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

maximize obj:    x58 + x59 + x60 + x61 + x62 + x63 + x64 + x65 + x66 + x67;

subject to

e1:  - b1 + x58 <= 0;

e2:  - b2 + x59 <= 0;

e3:  - b3 + x60 <= 0;

e4:  - b4 + x61 <= 0;

e5:  - b5 + x62 <= 0;

e6:  - b6 + x63 <= 0;

e7:  - b7 + x64 <= 0;

e8:  - b8 + x65 <= 0;

e9:  - b9 + x66 <= 0;

e10:  - b10 + x67 <= 0;

e11:  - b11 + x58 <= 0;

e12:  - b12 + x59 <= 0;

e13:  - b13 + x60 <= 0;

e14:  - b14 + x61 <= 0;

e15:  - b15 + x62 <= 0;

e16:  - b16 + x63 <= 0;

e17:  - b17 + x64 <= 0;

e18:  - b18 + x65 <= 0;

e19:  - b19 + x66 <= 0;

e20:  - b20 + x67 <= 0;

e21:  - b21 + x58 <= 0;

e22:  - b22 + x59 <= 0;

e23:  - b23 + x60 <= 0;

e24:  - b24 + x61 <= 0;

e25:  - b25 + x62 <= 0;

e26:  - b26 + x63 <= 0;

e27:  - b27 + x64 <= 0;

e28:  - b28 + x65 <= 0;

e29:  - b29 + x66 <= 0;

e30:  - b30 + x67 <= 0;

e31:  - b1 + b2 - x31 = 0;

e32:  - b2 + b3 + x32 = 0;

e33:  - b3 + b4 - x33 = 0;

e34:  - b4 + b5 + x34 = 0;

e35:  - b5 + b6 - x35 = 0;

e36:  - b6 + b7 + x36 = 0;

e37:  - b7 + b8 - x37 = 0;

e38:  - b8 + b9 + x38 = 0;

e39:  - b9 + b10 - x39 = 0;

e40:  - b11 + b12 - x40 = 0;

e41:  - b12 + b13 + x41 = 0;

e42:  - b13 + b14 - x42 = 0;

e43:  - b14 + b15 + x43 = 0;

e44:  - b15 + b16 - x44 = 0;

e45:  - b16 + b17 + x45 = 0;

e46:  - b17 + b18 - x46 = 0;

e47:  - b18 + b19 + x47 = 0;

e48:  - b19 + b20 - x48 = 0;

e49:  - b21 + b22 - x49 = 0;

e50:  - b22 + b23 + x50 = 0;

e51:  - b23 + b24 - x51 = 0;

e52:  - b24 + b25 + x52 = 0;

e53:  - b25 + b26 - x53 = 0;

e54:  - b26 + b27 + x54 = 0;

e55:  - b27 + b28 - x55 = 0;

e56:  - b28 + b29 + x56 = 0;

e57:  - b29 + b30 - x57 = 0;

e58:    x31 + x40 + x49 <= 1;

e59:    x32 + x41 + x50 <= 1;

e60:    x33 + x42 + x51 <= 1;

e61:    x34 + x43 + x52 <= 1;

e62:    x35 + x44 + x53 <= 1;

e63:    x36 + x45 + x54 <= 1;

e64:    x37 + x46 + x55 <= 1;

e65:    x38 + x47 + x56 <= 1;

e66:    x39 + x48 + x57 <= 1;

e67:    b1 + b11 - x58 <= 1;

e68:  - b2 - b12 - x59 <= -1;

e69:    b3 + b13 - x60 <= 1;

e70:  - b4 - b14 - x61 <= -1;

e71:    b5 + b15 - x62 <= 1;

e72:  - b6 - b16 - x63 <= -1;

e73:    b7 + b17 - x64 <= 1;

e74:  - b8 - b18 - x65 <= -1;

e75:    b9 + b19 - x66 <= 1;

e76:  - b10 - b20 - x67 <= -1;

e77:    b1 + b21 - x58 <= 1;

e78:  - b2 - b22 - x59 <= -1;

e79:    b3 + b23 - x60 <= 1;

e80:  - b4 - b24 - x61 <= -1;

e81:    b5 + b25 - x62 <= 1;

e82:  - b6 - b26 - x63 <= -1;

e83:    b7 + b27 - x64 <= 1;

e84:  - b8 - b28 - x65 <= -1;

e85:    b9 + b29 - x66 <= 1;

e86:  - b10 - b30 - x67 <= -1;
