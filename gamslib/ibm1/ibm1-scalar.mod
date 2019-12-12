#  LP written by GAMS Convert at 12/13/18 10:24:43
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        8        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         14       14        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         54       54        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0, <= 200;
var x2 >= 0, <= 750;
var x3 := 400, >= 400, <= 800;
var x4 := 100, >= 100, <= 700;
var x5 >= 0, <= 1500;
var x6 >= 0;
var x7 >= 0;
var x8 := 1500, >= 1500;
var x9 := 250, >= 250, <= 300;
var x10 >= 0, <= 60;
var x11 >= 0, <= 100;
var x12 >= 0, <= 40;
var x13 >= 0, <= 30;

minimize obj:    0.03*x1 + 0.08*x2 + 0.17*x3 + 0.12*x4 + 0.15*x5 + 0.21*x6
     + 0.38*x7;

subject to

e1:    x1 + x2 + x3 + x4 + x5 + x6 + x7 = 2000;

e2:  - 0.7*x1 - 0.75*x2 - 0.8*x3 - 0.75*x4 - 0.8*x5 - 0.97*x6 + x8 = 0;

e3:  - 0.02*x1 - 0.06*x2 - 0.08*x3 - 0.12*x4 - 0.02*x5 - 0.01*x6 - x7 + x9 = 0;

e4:  - 0.15*x1 - 0.04*x2 - 0.02*x3 - 0.04*x4 - 0.02*x5 - 0.01*x6 + x10 = 0;

e5:  - 0.03*x1 - 0.05*x2 - 0.08*x3 - 0.02*x4 - 0.06*x5 - 0.01*x6 + x11 = 0;

e6:  - 0.02*x1 - 0.04*x2 - 0.01*x3 - 0.02*x4 - 0.02*x5 + x12 = 0;

e7:  - 0.02*x1 - 0.03*x2 - 0.01*x5 + x13 = 0;
