#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         16       11        5        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         73       73        0        0
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
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0;
var x22 >= 0;
var x23 >= 0;
var x24 >= 0;
var x25 >= 0;
var x26 >= 0;
var x27 >= 0;
var x28 >= 0;
var x29 >= 0;
var x30 >= 0;

minimize obj:    10*x6 + 10*x7 + 10*x8 + 10*x9 + 10*x10 + 30*x11 + 30*x12
     + 30*x13 + 30*x14 + 30*x15 + 100*x16 + 100*x17 + 100*x18 + 100*x19
     + 200*x20;

subject to

e1:  - x1 + x6 - x11 = -90;

e2:  - x2 - x6 + x7 + x11 - x12 = -200;

e3:  - x3 - x7 + x8 + x12 - x13 = -300;

e4:  - x4 - x8 + x9 + x13 - x14 = -400;

e5:  - x5 - x9 + x10 + x14 - x15 = -200;

e6:    x16 - x21 + x26 = 20;

e7:  - x16 + x17 - x22 + x27 = 0;

e8:  - x17 + x18 - x23 + x28 = 0;

e9:  - x18 + x19 - x24 + x29 = 0;

e10:  - x19 + x20 - x25 + x30 = 0;

e11:  - 0.125*x1 + x16 - 1.16666666666667*x21 >= 0;

e12:  - 0.125*x2 + x17 - 1.16666666666667*x22 >= 0;

e13:  - 0.125*x3 + x18 - 1.16666666666667*x23 >= 0;

e14:  - 0.125*x4 + x19 - 1.16666666666667*x24 >= 0;

e15:  - 0.125*x5 + x20 - 1.16666666666667*x25 >= 0;
