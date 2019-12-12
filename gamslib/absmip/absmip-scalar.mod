#  MIP written by GAMS Convert at 12/13/18 10:32:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        4        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          8        7        1        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         15       15        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= -10, <= 10;
var x2 >= 0;
var x3 >= 0;
var b4 binary >= 0, <= 1;
var x5;
var x7 >= -5, <= 2;
var x8 >= -2, <= 5;

minimize obj:    x5 + x8;

subject to

e1:    x1 - x2 + x3 = 0;

e2:    x2 - 10*b4 <= 0;

e3:    x3 + 10*b4 <= 10;

e4:    x3 + x5 = 0;

e5:    x1 - x7 + x8 = 0;
