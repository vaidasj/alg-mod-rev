#  LP written by GAMS Convert at 12/13/18 10:32:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         26        1       24        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         29       29        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        123      123        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
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

minimize obj:    2*x1 + 2*x2 + 3*x3 + 3*x4 + 2.1*x5 + 2.8*x6 + 2.1*x7 + 0.6*x8
     + 1.5*x9 + 0.9*x10 + 1.2*x11 + 1.6*x12 + 1.2*x13 + 1.2*x14 + 1.2*x15
     + 0.6*x16 + 3.6*x17 + 4.8*x18 + 3.6*x19 + 0.9*x20 + 2.25*x21 + 1.35*x22
     + 1.8*x23 + 2.4*x24 + 1.8*x25 + 1.8*x26 + 1.8*x27 + 0.9*x28;

subject to

e2:    x1 + x2 + x3 + x4 <= 50;

e3:    2*x1 + 6*x3 + x5 >= 200;

e4:    2*x1 + 6*x3 + x6 >= 180;

e5:    2*x1 + 6*x3 + x7 >= 160;

e6:    2*x2 + 6*x4 + 0*x5 + x8 >= 200;

e7:    2*x2 + 6*x4 + 0*x5 + x9 >= 180;

e8:    2*x2 + 6*x4 + 0*x5 + x10 >= 160;

e9:    2*x2 + 6*x4 + 0*x6 + x11 >= 200;

e10:    2*x2 + 6*x4 + 0*x6 + x12 >= 180;

e11:    2*x2 + 6*x4 + 0*x6 + x13 >= 160;

e12:    2*x2 + 6*x4 + 0*x7 + x14 >= 200;

e13:    2*x2 + 6*x4 + 0*x7 + x15 >= 180;

e14:    2*x2 + 6*x4 + 0*x7 + x16 >= 160;

e15:    3*x1 + 3.4*x3 + x17 >= 180;

e16:    3*x1 + 3.4*x3 + x18 >= 160;

e17:    3*x1 + 3.4*x3 + x19 >= 140;

e18:    3*x2 + 3.4*x4 + 0*x17 + x20 >= 180;

e19:    3*x2 + 3.4*x4 + 0*x17 + x21 >= 160;

e20:    3*x2 + 3.4*x4 + 0*x17 + x22 >= 140;

e21:    3*x2 + 3.4*x4 + 0*x18 + x23 >= 180;

e22:    3*x2 + 3.4*x4 + 0*x18 + x24 >= 160;

e23:    3*x2 + 3.4*x4 + 0*x18 + x25 >= 140;

e24:    3*x2 + 3.4*x4 + 0*x19 + x26 >= 180;

e25:    3*x2 + 3.4*x4 + 0*x19 + x27 >= 160;

e26:    3*x2 + 3.4*x4 + 0*x19 + x28 >= 140;
