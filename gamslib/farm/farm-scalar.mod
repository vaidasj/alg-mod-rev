#  LP written by GAMS Convert at 12/13/18 10:32:20
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        1        6        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         22       22        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         52       52        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 >= 0;
var x9 >= 0;
var x10 >= 0;
var x11 >= 0, <= 6000;
var x12 >= 0, <= 6000;
var x13 >= 0, <= 6000;
var x14 >= 0;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0;
var x22 >= 0;

maximize obj:  - 150*x1 - 230*x2 - 260*x3 + 56.6666666666667*x5
     + 56.6666666666667*x6 + 56.6666666666667*x7 + 50*x8 + 50*x9 + 50*x10
     + 12*x11 + 12*x12 + 12*x13 + 3.33333333333333*x14 + 3.33333333333333*x15
     + 3.33333333333333*x16 - 79.3333333333333*x17 - 79.3333333333333*x18
     - 79.3333333333333*x19 - 70*x20 - 70*x21 - 70*x22;

subject to

e2:    x1 + x2 + x3 <= 500;

e3:    3*x1 - x5 + x17 >= 200;

e4:    2.5*x1 - x6 + x18 >= 200;

e5:    2*x1 - x7 + x19 >= 200;

e6:    3.6*x2 - x8 + x20 >= 240;

e7:    3*x2 - x9 + x21 >= 240;

e8:    2.4*x2 - x10 + x22 >= 240;

e9:  - 24*x3 + x11 + x14 <= 0;

e10:  - 20*x3 + x12 + x15 <= 0;

e11:  - 16*x3 + x13 + x16 <= 0;
