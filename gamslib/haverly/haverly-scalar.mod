#  NLP written by GAMS Convert at 12/13/18 10:32:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        8        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         34       27        7        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 := 1, >= 0;
var x10;
var x11;
var x12 <= 100;
var x13 <= 200;

maximize obj:  - x10 + x11;

subject to

e1:  - 6*x1 - 16*x2 - 10*x3 + x10 = 0;

e2:    x11 - 9*x12 - 15*x13 = 0;

e3:  - x4 - x6 + x12 = 0;

e4:  - x5 - x7 + x13 = 0;

e5:    x1 + x2 - x6 - x7 = 0;

e6:    x3 - x4 - x5 = 0;

e7: x8*(x6 + x7) - 3*x1 - x2 = 0;

e8: x8*x6 - 2.5*x6 - 0.5*x4 <= 0;

e9: x8*x7 - 1.5*x7 + 0.5*x5 <= 0;
