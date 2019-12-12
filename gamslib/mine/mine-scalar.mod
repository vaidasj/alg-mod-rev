#  LP written by GAMS Convert at 12/13/18 10:24:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57        1       56        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        135      135        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0, <= 1;
var x2 >= 0, <= 1;
var x3 >= 0, <= 1;
var x4 >= 0, <= 1;
var x5 >= 0, <= 1;
var x6 >= 0, <= 1;
var x7 >= 0, <= 1;
var x8 >= 0, <= 1;
var x9 >= 0, <= 1;
var x10 >= 0, <= 1;
var x11 >= 0, <= 1;
var x12 >= 0, <= 1;
var x13 >= 0, <= 1;
var x14 >= 0, <= 1;
var x15 >= 0, <= 1;
var x16 >= 0, <= 1;
var x17 >= 0, <= 1;
var x18 >= 0, <= 1;
var x19 >= 0, <= 1;
var x20 >= 0, <= 1;
var x21 >= 0, <= 1;
var x22 >= 0, <= 1;
var x23 >= 0, <= 1;
var x24 >= 0, <= 1;
var x25 >= 0, <= 1;
var x26 >= 0, <= 1;
var x27 >= 0, <= 1;
var x28 >= 0, <= 1;
var x29 >= 0, <= 1;
var x30 >= 0, <= 1;

maximize obj:  - 1500*x4 + 1000*x6 - 1500*x8 - 1000*x9 - 1000*x10 - 1500*x11
     - 2000*x12 - 1500*x13 - 1500*x14 - 2000*x15 - 2500*x16 + 2000*x17
     + 2000*x18 - 2000*x19 - 4000*x22 - 2000*x23 - 2000*x24 - 5000*x25
     + 16000*x26 + 4000*x27 + 2000*x28 + 2000*x30;

subject to

e1:    x1 - x17 >= 0;

e2:    x2 - x18 >= 0;

e3:    x3 - x19 >= 0;

e4:    x5 - x20 >= 0;

e5:    x6 - x21 >= 0;

e6:    x7 - x22 >= 0;

e7:    x9 - x23 >= 0;

e8:    x10 - x24 >= 0;

e9:    x11 - x25 >= 0;

e10:    x17 - x26 >= 0;

e11:    x18 - x27 >= 0;

e12:    x20 - x28 >= 0;

e13:    x21 - x29 >= 0;

e14:    x26 - x30 >= 0;

e15:    x2 - x17 >= 0;

e16:    x3 - x18 >= 0;

e17:    x4 - x19 >= 0;

e18:    x6 - x20 >= 0;

e19:    x7 - x21 >= 0;

e20:    x8 - x22 >= 0;

e21:    x10 - x23 >= 0;

e22:    x11 - x24 >= 0;

e23:    x12 - x25 >= 0;

e24:    x18 - x26 >= 0;

e25:    x19 - x27 >= 0;

e26:    x21 - x28 >= 0;

e27:    x22 - x29 >= 0;

e28:    x27 - x30 >= 0;

e29:    x6 - x17 >= 0;

e30:    x7 - x18 >= 0;

e31:    x8 - x19 >= 0;

e32:    x10 - x20 >= 0;

e33:    x11 - x21 >= 0;

e34:    x12 - x22 >= 0;

e35:    x14 - x23 >= 0;

e36:    x15 - x24 >= 0;

e37:    x16 - x25 >= 0;

e38:    x21 - x26 >= 0;

e39:    x22 - x27 >= 0;

e40:    x24 - x28 >= 0;

e41:    x25 - x29 >= 0;

e42:    x29 - x30 >= 0;

e43:    x5 - x17 >= 0;

e44:    x6 - x18 >= 0;

e45:    x7 - x19 >= 0;

e46:    x9 - x20 >= 0;

e47:    x10 - x21 >= 0;

e48:    x11 - x22 >= 0;

e49:    x13 - x23 >= 0;

e50:    x14 - x24 >= 0;

e51:    x15 - x25 >= 0;

e52:    x20 - x26 >= 0;

e53:    x21 - x27 >= 0;

e54:    x23 - x28 >= 0;

e55:    x24 - x29 >= 0;

e56:    x28 - x30 >= 0;
