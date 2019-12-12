#  NLP written by GAMS Convert at 12/13/18 10:24:33
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         31       13       18        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2;
var x3;
var x4;
var x5;
var x6;
var x7;
var x8 := 500;
var x9 := -150;
var x10 := -0.2, >= -5, <= 5;

minimize obj: x2^2 + x3^2 + x4^2 + x5^2 + x6^2 + x7^2;

subject to

e2: -exp(-5*x10)*x9 - x2 - x8 = -127;

e3: -exp(-3*x10)*x9 - x3 - x8 = -151;

e4: -exp(-x10)*x9 - x4 - x8 = -379;

e5: -exp(5*x10)*x9 - x5 - x8 = -421;

e6: -exp(3*x10)*x9 - x6 - x8 = -460;

e7: -exp(x10)*x9 - x7 - x8 = -426;
