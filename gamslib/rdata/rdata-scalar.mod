#  MIP written by GAMS Convert at 12/13/18 10:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51       11        0       40        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         49       44        5        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        178      178        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 >= 0;
var x9 >= 0;
var x10 >= 0;
var x11 >= 0;
var x12 >= 0;
var x13 >= 0;
var x14 >= 0;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0;
var x22 >= 0;
var x23 >= 0;
var x24 >= 0;
var x25 >= 0;
var x26 >= 0;
var x27 >= 0;
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
var b42 binary >= 0, <= 1;
var b43 binary >= 0, <= 1;
var b44 binary >= 0, <= 1;
var b45 binary >= 0, <= 1;
var b46 binary >= 0, <= 1;
var x47;
var x48;
var x49;

minimize obj:    b42 + b43 + b44 + b45 + b46;

subject to

e1:    x2 + x3 + x4 + x5 + x6 - 1.2*x7 - 1.2*x8 - 1.2*x9 - 1.2*x10 - 1.2*x11
     = 0;

e2:    x7 + x8 + x9 + x10 + x11 - 0.2*x17 - 0.2*x18 - 0.2*x19 - 0.2*x20
     - 0.2*x21 = 0;

e3:  - x12 - x13 - x14 - x15 - x16 + x47 = 0;

e4:    x12 + x13 + x14 + x15 + x16 - 0.9*x22 - 0.9*x23 - 0.9*x24 - 0.9*x25
     - 0.9*x26 - 0.7*x27 - 0.7*x28 - 0.7*x29 - 0.7*x30 - 0.7*x31 = 0;

e5:  - 0.2*x22 - 0.2*x23 - 0.2*x24 - 0.2*x25 - 0.2*x26 - 0.4*x27 - 0.4*x28
     - 0.4*x29 - 0.4*x30 - 0.4*x31 + 0.2*x32 + 0.2*x33 + 0.2*x34 + 0.2*x35
     + 0.2*x36 + x48 = 0;

e6:    x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + x31 - 1.2*x32
     - 1.2*x33 - 1.2*x34 - 1.2*x35 - 1.2*x36 = 0;

e7:  - 1.2*x17 - 1.2*x18 - 1.2*x19 - 1.2*x20 - 1.2*x21 + x32 + x33 + x34 + x35
     + x36 = 0;

e8:  - 1.4*x2 - 1.4*x3 - 1.4*x4 - 1.4*x5 - 1.4*x6 + x49 = 0;

e9:    x17 + x18 + x19 + x20 + x21 - x37 - x38 - x39 - x40 - x41 = 0;

e10:    x37 + x38 + x39 + x40 + x41 = 0.5;

e11:    x12 <= 2;

e12:    x13 <= 2.5;

e13:    x14 <= 0;

e14:    x15 <= 0;

e15:    x16 <= 0;

e16:    x22 + x27 <= 2.35;

e17:    x23 + x28 <= 2.8;

e18:    x24 + x29 <= 0;

e19:    x25 + x30 <= 0;

e20:    x26 + x31 <= 0;

e21:    x32 <= 1.9;

e22:    x33 <= 2.4;

e23:    x34 <= 0;

e24:    x35 <= 0;

e25:    x36 <= 0;

e26:    x2 <= 0;

e27:    x3 <= 0;

e28:    x4 <= 0.8;

e29:    x5 <= 0;

e30:    x6 <= 0;

e31:    x7 <= 0;

e32:    x8 <= 0;

e33:    x9 <= 0.6;

e34:    x10 <= 0.5;

e35:    x11 <= 0;

e36:    x17 <= 0;

e37:    x18 <= 0;

e38:    x19 <= 0;

e39:    x20 <= 0;

e40:    x21 <= 0.6;

e41:    x37 <= 0;

e42:    x38 <= 0;

e43:    x39 <= 0;

e44:    x40 <= 0;

e45:    x41 <= 0.6;

e46:    0.05*x12 + 0.05*x22 + 0.05*x27 + 0.05*x32 - 0.2*b42 <= 0;

e47:    0.05*x10 - 0.05*b43 <= 0;

e48:    0.2*x4 + 0.2*x9 + 0.3*x12 + 0.3*x22 + 0.3*x27 + 0.3*x32 - 1.6*b44 <= 0;

e49:    1.2*x21 + 1.2*x41 - 2.4*b45 <= 0;

e50:    0.7*x4 + 0.7*x9 + 0.5*x10 + 1.2*x12 + 0.4*x13 + 1.2*x22 + 0.4*x23
      + 1.2*x27 + 0.4*x28 + 1.2*x32 + 0.4*x33 - 8.3*b46 <= 0;
