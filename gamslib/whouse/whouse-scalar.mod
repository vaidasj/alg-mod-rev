#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        5        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         28       28        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0, <= 100;
var x2 >= 0, <= 100;
var x3 >= 0, <= 100;
var x4 >= 0, <= 100;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 >= 0;
var x9 >= 0;
var x10 >= 0;
var x11 >= 0;
var x12 >= 0;

minimize obj:    x1 + x2 + x3 + x4 - 10*x5 - 12*x6 - 8*x7 - 9*x8 + 10*x9
     + 12*x10 + 8*x11 + 9*x12;

subject to

e1:    x1 + x5 - x9 = 50;

e2:  - x1 + x2 + x6 - x10 = 0;

e3:  - x2 + x3 + x7 - x11 = 0;

e4:  - x3 + x4 + x8 - x12 = 0;
