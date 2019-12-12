#  MINLP written by GAMS Convert at 12/13/18 10:24:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         52       16       14       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       29       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        153      139       14        0
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
var x23;
var x24;
var x25;
var x26;
var x27;
var x28;
var x29;
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

minimize obj: x2*x23 + x3*x24 + x4*x25 + x5*x26 + x6*x27 + x7*x28 + x8*x29 - 
    0.06435*x2 - 0.0548*x3 - 0.02505*x4 - 0.0762*x5 - 0.03815*x6 - 0.0927*x7 - 
    0.031*x8;

subject to

e1:    x2 + x3 + x4 + x5 + x6 + x7 + x8 = 1;

e2:    x2 - x9 + x16 = 0.2;

e3:    x3 - x10 + x17 = 0.2;

e4:    x4 - x11 + x18 = 0;

e5:    x5 - x12 + x19 = 0;

e6:    x6 - x13 + x20 = 0.2;

e7:    x7 - x14 + x21 = 0.2;

e8:    x8 - x15 + x22 = 0.2;

e9:    x9 + x10 + x11 + x12 + x13 + x14 + x15 <= 0.3;

e10:    x9 - 0.11*b30 <= 0;

e11:    x10 - 0.1*b31 <= 0;

e12:    x11 - 0.07*b32 <= 0;

e13:    x12 - 0.11*b33 <= 0;

e14:    x13 - 0.2*b34 <= 0;

e15:    x14 - 0.1*b35 <= 0;

e16:    x15 - 0.1*b36 <= 0;

e17:    x9 - 0.03*b30 >= 0;

e18:    x10 - 0.04*b31 >= 0;

e19:    x11 - 0.04*b32 >= 0;

e20:    x12 - 0.03*b33 >= 0;

e21:    x13 - 0.03*b34 >= 0;

e22:    x14 - 0.03*b35 >= 0;

e23:    x15 - 0.03*b36 >= 0;

e24:    x16 - 0.2*b37 <= 0;

e25:    x17 - 0.15*b38 <= 0;

e26:    x18 <= 0;

e27:    x19 <= 0;

e28:    x20 - 0.1*b41 <= 0;

e29:    x21 - 0.15*b42 <= 0;

e30:    x22 - 0.2*b43 <= 0;

e31:    x16 - 0.02*b37 >= 0;

e32:    x17 - 0.02*b38 >= 0;

e33:    x18 - 0.04*b39 >= 0;

e34:    x19 - 0.04*b40 >= 0;

e35:    x20 - 0.04*b41 >= 0;

e36:    x21 - 0.04*b42 >= 0;

e37:    x22 - 0.04*b43 >= 0;

e38:    b30 + b37 <= 1;

e39:    b31 + b38 <= 1;

e40:    b32 + b39 <= 1;

e41:    b33 + b40 <= 1;

e42:    b34 + b41 <= 1;

e43:    b35 + b42 <= 1;

e44:    b36 + b43 <= 1;

e45:  - 42.18*x2 - 40.36*x3 - 21.76*x4 - 10.6*x5 - 24.64*x6 - 47.68*x7
      - 34.82*x8 + x23 = 0;

e46:  - 70.89*x3 - 43.16*x4 - 30.82*x5 - 46.48*x6 - 47.6*x7 - 25.24*x8 + x24
      = 0;

e47:  - 25.51*x4 - 19.2*x5 - 45.26*x6 - 26.44*x7 - 9.4*x8 + x25 = 0;

e48:  - 22.33*x5 - 20.64*x6 - 20.92*x7 - 2*x8 + x26 = 0;

e49:  - 30.01*x6 - 32.72*x7 - 14.4*x8 + x27 = 0;

e50:  - 42.23*x7 - 19.8*x8 + x28 = 0;

e51:  - 16.42*x8 + x29 = 0;
