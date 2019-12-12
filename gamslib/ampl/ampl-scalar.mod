#  LP written by GAMS Convert at 12/13/18 10:24:42
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13        9        0        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         23       23        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         75       75        0        0
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
var x13 >= 0, <= 35.8;
var x14 >= 0;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0, <= 7.32;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0;
var x22 >= 0;

maximize obj:    1.73*x1 + 1.8*x2 + 1.6*x3 + 2.2*x4 + 1.82*x5 + 1.9*x6 + 1.7*x7
     + 0.95*x8 + 1.05*x9 + 1.1*x10 + 0.95*x11 + 1.33*x12 - 0.03*x13 - 0.03*x14
     - 0.03*x15 - 0.03*x16 + 0.02*x17 - 0.025*x18 - 0.025*x19 - 0.025*x20
     - 0.025*x21 - 0.01*x22;

subject to

e1:    x1 + x5 + x9 <= 123;

e2:    x2 + x6 + x10 <= 123;

e3:    x3 + x7 + x11 <= 123;

e4:    x4 + x8 + x12 <= 123;

e5:    0.79*x1 + 0.83*x5 + 0.92*x9 - x13 + x14 = 0;

e6:    0.79*x2 + 0.83*x6 + 0.92*x10 - x14 + x15 = 0;

e7:    0.79*x3 + 0.83*x7 + 0.92*x11 - x15 + x16 = 0;

e8:    0.79*x4 + 0.83*x8 + 0.92*x12 - x16 + x17 = 0;

e9:    0.21*x1 + 0.17*x5 + 0.08*x9 - x18 + x19 = 0;

e10:    0.21*x2 + 0.17*x6 + 0.08*x10 - x19 + x20 = 0;

e11:    0.21*x3 + 0.17*x7 + 0.08*x11 - x20 + x21 = 0;

e12:    0.21*x4 + 0.17*x8 + 0.08*x12 - x21 + x22 = 0;
