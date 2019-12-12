#  MIQCP written by GAMS Convert at 12/13/18 11:23:26
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         46       10       14       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         37       23       14        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        119      112        7        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2 >= 0, <= 0;
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

minimize obj: 42.18*x3*x3 + 40.36*x3*x4 + 21.76*x3*x5 + 10.6*x3*x6 + 24.64*x3*
    x7 + 47.68*x3*x8 + 34.82*x3*x9 + 70.89*x4*x4 + 43.16*x4*x5 + 30.82*x4*x6 + 
    46.48*x4*x7 + 47.6*x4*x8 + 25.24*x4*x9 + 25.51*x5*x5 + 19.2*x5*x6 + 45.26*
    x5*x7 + 26.44*x5*x8 + 9.4*x5*x9 + 22.33*x6*x6 + 20.64*x6*x7 + 20.92*x6*x8
     + 2*x6*x9 + 30.01*x7*x7 + 32.72*x7*x8 + 14.4*x7*x9 + 42.23*x8*x8 + 19.8*x8
    *x9 + 16.42*x9*x9;

subject to

e1:    x3 + x4 + x5 + x6 + x7 + x8 + x9 = 1;

e2:    x3 - x10 + x17 = 0.2;

e3:    x4 - x11 + x18 = 0.2;

e4:    x5 - x12 + x19 = 0;

e5:    x6 - x13 + x20 = 0;

e6:    x7 - x14 + x21 = 0.2;

e7:    x8 - x15 + x22 = 0.2;

e8:    x9 - x16 + x23 = 0.2;

e9:    x10 + x11 + x12 + x13 + x14 + x15 + x16 <= 0.3;

e10:    x10 - 0.11*b24 <= 0;

e11:    x11 - 0.1*b25 <= 0;

e12:    x12 - 0.07*b26 <= 0;

e13:    x13 - 0.11*b27 <= 0;

e14:    x14 - 0.2*b28 <= 0;

e15:    x15 - 0.1*b29 <= 0;

e16:    x16 - 0.1*b30 <= 0;

e17:    x10 - 0.03*b24 >= 0;

e18:    x11 - 0.04*b25 >= 0;

e19:    x12 - 0.04*b26 >= 0;

e20:    x13 - 0.03*b27 >= 0;

e21:    x14 - 0.03*b28 >= 0;

e22:    x15 - 0.03*b29 >= 0;

e23:    x16 - 0.03*b30 >= 0;

e24:    x17 - 0.2*b31 <= 0;

e25:    x18 - 0.15*b32 <= 0;

e26:    x19 <= 0;

e27:    x20 <= 0;

e28:    x21 - 0.1*b35 <= 0;

e29:    x22 - 0.15*b36 <= 0;

e30:    x23 - 0.2*b37 <= 0;

e31:    x17 - 0.02*b31 >= 0;

e32:    x18 - 0.02*b32 >= 0;

e33:    x19 - 0.04*b33 >= 0;

e34:    x20 - 0.04*b34 >= 0;

e35:    x21 - 0.04*b35 >= 0;

e36:    x22 - 0.04*b36 >= 0;

e37:    x23 - 0.04*b37 >= 0;

e38:    b24 + b31 <= 1;

e39:    b25 + b32 <= 1;

e40:    b26 + b33 <= 1;

e41:    b27 + b34 <= 1;

e42:    b28 + b35 <= 1;

e43:    b29 + b36 <= 1;

e44:    b30 + b37 <= 1;

e45:    x2 - 0.1287*x3 - 0.1096*x4 - 0.0501*x5 - 0.1524*x6 - 0.0763*x7
      - 0.1854*x8 - 0.062*x9 = 0;
