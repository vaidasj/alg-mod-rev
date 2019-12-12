#  LP written by GAMS Convert at 12/13/18 10:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        7        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         18       18        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         57       57        0        0
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
var x10 >= 0, <= 400;
var x11 >= 0;
var x12 >= 0;
var x13 >= 0;
var x14 >= 0, <= 275;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;

maximize obj:    25*x1 + 20*x2 + 10*x3 + 50*x4 + 50*x5 + 50*x6 + 75*x7 + 80*x8
     + 100*x9 - 0.5*x10 - 0.5*x11 - 0.5*x12 + 15*x13 - 2*x14 - 2*x15 - 2*x16
     + 25*x17;

subject to

e1:    x1 + x4 + x7 <= 40;

e2:    x2 + x5 + x8 <= 40;

e3:    x3 + x6 + x9 <= 40;

e4:    5*x1 + 3*x4 + x7 - x10 + x11 = 0;

e5:    5*x2 + 3*x5 + x8 - x11 + x12 = 0;

e6:    5*x3 + 3*x6 + x9 - x12 + x13 = 0;

e7:    x1 + 2*x4 + 3*x7 - x14 + x15 = 0;

e8:    x2 + 2*x5 + 3*x8 - x15 + x16 = 0;

e9:    x3 + 2*x6 + 3*x9 - x16 + x17 = 0;
