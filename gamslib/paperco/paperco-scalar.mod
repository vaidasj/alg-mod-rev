#  LP written by GAMS Convert at 12/13/18 10:24:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         14       14        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         22       22        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         58       58        0        0
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
var x15 := 18, >= 18, <= 25;
var x16 := 12, >= 12, <= 15;
var x17 >= 0, <= 7;
var x18 >= 0, <= 6;
var x19 >= 0, <= 10;
var x20 >= 0, <= 6;
var x21 >= 0, <= 10;

maximize obj:  - 65*x1 - 65*x2 - 58*x3 - 73*x4 - 56*x5 - 71*x6 - 40*x9 - 60*x10
     - 70*x11 - 55*x12 - 50*x13 - 45*x14 + 265*x15 + 275*x16 + 310*x17
     + 120*x18 + 150*x19 - 120*x20 - 150*x21;

subject to

e1:    0.97*x1 + 0.97*x2 - x3 - x4 - x5 - x6 = 0;

e2:    x3 - 0.6*x7 = 0;

e3:    x4 - 0.3*x8 = 0;

e4:    x5 - 0.4*x7 = 0;

e5:    x6 - 0.7*x8 = 0;

e6:  - x7 + x9 + x10 + x11 + x18 - x20 = 0;

e7:  - x8 + x12 + x13 + x14 + x19 - x21 = 0;

e8:    x9 - 0.68*x15 = 0;

e9:    x10 - 0.45*x16 = 0;

e10:    x11 - 0.25*x17 = 0;

e11:    x12 - 0.32*x15 = 0;

e12:    x13 - 0.55*x16 = 0;

e13:    x14 - 0.75*x17 = 0;
