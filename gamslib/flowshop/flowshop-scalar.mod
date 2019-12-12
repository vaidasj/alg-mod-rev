#  MIP written by GAMS Convert at 12/13/18 11:34:19
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         58       30       28        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         73       37       36        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        272      272        0        0


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
var b28 binary >= 0, <= 1;
var b29 binary >= 0, <= 1;
var b30 binary >= 0, <= 1;
var b31 binary >= 0, <= 1;
var b32 binary >= 0, <= 1;
var b33 binary >= 0, <= 1;
var b34 binary >= 0, <= 1;
var b35 binary >= 0, <= 1;
var b36 binary >= 0, <= 1;
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
var x73;

minimize obj: x73;

subject to

e1:    b1 + b7 + b13 + b19 + b25 + b31 = 1;

e2:    b2 + b8 + b14 + b20 + b26 + b32 = 1;

e3:    b3 + b9 + b15 + b21 + b27 + b33 = 1;

e4:    b4 + b10 + b16 + b22 + b28 + b34 = 1;

e5:    b5 + b11 + b17 + b23 + b29 + b35 = 1;

e6:    b6 + b12 + b18 + b24 + b30 + b36 = 1;

e7:    b1 + b2 + b3 + b4 + b5 + b6 = 1;

e8:    b7 + b8 + b9 + b10 + b11 + b12 = 1;

e9:    b13 + b14 + b15 + b16 + b17 + b18 = 1;

e10:    b19 + b20 + b21 + b22 + b23 + b24 = 1;

e11:    b25 + b26 + b27 + b28 + b29 + b30 = 1;

e12:    b31 + b32 + b33 + b34 + b35 + b36 = 1;

e13:    x38 - x55 >= 0;

e14:    x39 - x56 >= 0;

e15:    x40 - x57 >= 0;

e16:    x41 - x58 >= 0;

e17:    x42 - x59 >= 0;

e18:    x44 - x61 >= 0;

e19:    x45 - x62 >= 0;

e20:    x46 - x63 >= 0;

e21:    x47 - x64 >= 0;

e22:    x48 - x65 >= 0;

e23:    x50 - x67 >= 0;

e24:    x51 - x68 >= 0;

e25:    x52 - x69 >= 0;

e26:    x53 - x70 >= 0;

e27:    x54 - x71 >= 0;

e28:    x43 - x55 >= 0;

e29:    x44 - x56 >= 0;

e30:    x45 - x57 >= 0;

e31:    x46 - x58 >= 0;

e32:    x47 - x59 >= 0;

e33:    x48 - x60 >= 0;

e34:    x49 - x61 >= 0;

e35:    x50 - x62 >= 0;

e36:    x51 - x63 >= 0;

e37:    x52 - x64 >= 0;

e38:    x53 - x65 >= 0;

e39:    x54 - x66 >= 0;

e40:  - 3*b1 - 6*b7 - 3*b13 - 5*b19 - 5*b25 - 7*b31 - x37 + x55 = 0;

e41:  - 3*b2 - 6*b8 - 3*b14 - 5*b20 - 5*b26 - 7*b32 - x38 + x56 = 0;

e42:  - 3*b3 - 6*b9 - 3*b15 - 5*b21 - 5*b27 - 7*b33 - x39 + x57 = 0;

e43:  - 3*b4 - 6*b10 - 3*b16 - 5*b22 - 5*b28 - 7*b34 - x40 + x58 = 0;

e44:  - 3*b5 - 6*b11 - 3*b17 - 5*b23 - 5*b29 - 7*b35 - x41 + x59 = 0;

e45:  - 3*b6 - 6*b12 - 3*b18 - 5*b24 - 5*b30 - 7*b36 - x42 + x60 = 0;

e46:  - 5*b1 - 4*b7 - 2*b13 - 4*b19 - 4*b25 - 5*b31 - x43 + x61 = 0;

e47:  - 5*b2 - 4*b8 - 2*b14 - 4*b20 - 4*b26 - 5*b32 - x44 + x62 = 0;

e48:  - 5*b3 - 4*b9 - 2*b15 - 4*b21 - 4*b27 - 5*b33 - x45 + x63 = 0;

e49:  - 5*b4 - 4*b10 - 2*b16 - 4*b22 - 4*b28 - 5*b34 - x46 + x64 = 0;

e50:  - 5*b5 - 4*b11 - 2*b17 - 4*b23 - 4*b29 - 5*b35 - x47 + x65 = 0;

e51:  - 5*b6 - 4*b12 - 2*b18 - 4*b24 - 4*b30 - 5*b36 - x48 + x66 = 0;

e52:  - 5*b1 - 2*b7 - 4*b13 - 6*b19 - 3*b25 - 6*b31 - x49 + x67 = 0;

e53:  - 5*b2 - 2*b8 - 4*b14 - 6*b20 - 3*b26 - 6*b32 - x50 + x68 = 0;

e54:  - 5*b3 - 2*b9 - 4*b15 - 6*b21 - 3*b27 - 6*b33 - x51 + x69 = 0;

e55:  - 5*b4 - 2*b10 - 4*b16 - 6*b22 - 3*b28 - 6*b34 - x52 + x70 = 0;

e56:  - 5*b5 - 2*b11 - 4*b17 - 6*b23 - 3*b29 - 6*b35 - x53 + x71 = 0;

e57:  - 5*b6 - 2*b12 - 4*b18 - 6*b24 - 3*b30 - 6*b36 - x54 + x72 = 0;

e58:  - x72 + x73 >= 0;
