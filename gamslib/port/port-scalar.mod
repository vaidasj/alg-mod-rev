#  LP written by GAMS Convert at 12/13/18 10:24:38
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        2        1        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         27       27        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 <= 10;

maximize obj:    0.043*x1 + 0.045*x2 + 0.027*x3 + 0.025*x4 + 0.022*x5;

subject to

e1:    x3 + x4 + x5 >= 4;

e2:    2*x1 + 5*x2 + 2*x3 + x4 + x5 - 1.4*x6 <= 0;

e3:    9*x1 + 2*x2 + 15*x3 + 4*x4 + 3*x5 - 5*x6 <= 0;

e5:  - x1 - x2 - x3 - x4 - x5 + x6 = 0;
