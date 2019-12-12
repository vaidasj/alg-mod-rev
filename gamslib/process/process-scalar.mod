#  NLP written by GAMS Convert at 12/13/18 10:24:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        8        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       15        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         32       13       19        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 1745, >= 10, <= 2000;
var x2 := 12000, >= 0, <= 16000;
var x3 := 110, >= 0, <= 120;
var x4 := 3048, >= 0, <= 5000;
var x5 := 1974, >= 0, <= 2000;
var x6 := 89.2, >= 85, <= 93;
var x7 := 92.8, >= 90, <= 95;
var x8 := 8, >= 3, <= 12;
var x9 := 3.6, >= 1.2, <= 4;
var x10 := 145, >= 145, <= 162;
var x12 := 1, >= 0.9, <= 1.1;
var x13 := 1, >= 0.9, <= 1.1;
var x14 := 1, >= 0.9, <= 1.1;
var x15 := 1, >= 0.9, <= 1.1;

maximize obj: 0.063*x4*x7 - 5.04*x1 - 0.035*x2 - 10*x3 - 3.36*x5;

subject to

e1: x12*x4 - (1.12 + 0.13167*x8 - 0.00667*x8^2)*x1 = 0;

e2:  - x1 + 1.22*x4 - x5 = 0;

e3: -0.001*x4*x9*x6/(98 - x6) + x3 = 0;

e4: x13*x7 - (1.098*x8 - 0.038*x8^2) - 0.325*x6 = 57.425;

e5: -(x2 + x5)/x1 + x8 = 0;

e6: x14*x9 + 0.222*x10 = 35.82;

e7: x15*x10 - 3*x7 = -133;
