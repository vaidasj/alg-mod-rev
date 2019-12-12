#  NLP written by GAMS Convert at 12/13/18 10:24:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         16       16        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         30       30        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         98       72       26        0
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
var x15 := 1, >= 0;
var x16 := 1, >= 0;
var x17 := 1, >= 0;
var x18 := 1, >= 0;
var x19 := 1, >= 0;
var x20 := 1, >= 0;
var x21 := 1, >= 0;
var x22 := 1, >= 0;
var x23 := 1, >= 0;
var x24 := 25, >= 0;
var x25 := 25, >= 0;
var x26 := 25, >= 0;
var x27 := 25, >= 0;
var x28 := 25, >= 0;
var x29 := 25, >= 0;

maximize obj: (-0.2*((24 + x15)*x15 + (24 + x18)*x18 + (24 + x21)*x21)) - 0.01*
    ((24 + x16)*x16 + (24 + x19)*x19 + (24 + x22)*x22) - 0.3*((24 + x17)*x17 + 
    (24 + x20)*x20 + (24 + x23)*x23) - (0.5*x27^2 + x27 + 0.4*x28^2 + 2*x28 + 
    0.3*x29^2 + 1.5*x29) - (0.166666666666667*x1^3 + x1 + 0.0666666666666667*x2
    ^3 + 2*x2 + 0.1*x3^3 + 3*x3 + 0.133333333333333*x4^3 + x4 + 0.1*x5^3 + 2*x5
     + 0.0333333333333333*x6^3 + x6 + 0.0333333333333333*x7^3 + x7 + 
    0.166666666666667*x8^3 + 3*x8 + 0.0666666666666667*x9^3 + 2*x9 + 
    0.333333333333333*x10^3 + x10 + 0.0833333333333333*x11^3 + 2*x11 + 
    0.0666666666666667*x12^3 + 2*x12 + 0.3*x13^3 + x13 + 0.266666666666667*x14^
    3 + 3*x14) + 19*x24 + 27*x25 + 30*x26;

subject to

e1:  - x1 - x2 + x5 + x8 - x24 + x27 = 0;

e2:  - x3 + x11 - x25 + x28 = 0;

e3:  - x4 + x12 - x26 + x29 = 0;

e4:    x1 - x5 - x6 - x7 + x9 + x13 = 0;

e5:    x2 + x6 - x8 - x9 - x10 + x14 = 0;

e6:    x3 + x4 + x7 + x10 - x11 - x12 - x13 - x14 = 0;

e7:  - x15 - x16 - x17 + x27 = 0;

e8:  - x18 - x19 - x20 + x28 = 0;

e9:  - x21 - x22 - x23 + x29 = 0;

e10:  - x15 - x18 - x21 + x24 = 0;

e11:  - x16 - x19 - x22 + x25 = 0;

e12:  - x17 - x20 - x23 + x26 = 0;

e13:  - x5 - x8 - x15 + x24 = 0;

e14:  - x11 - x19 + x25 = 0;

e15:  - x12 - x23 + x26 = 0;
