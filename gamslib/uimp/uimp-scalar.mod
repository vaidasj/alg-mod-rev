#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21        9        0       12        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       43        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        116      116        0        0
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
var x29 >= 0, <= 20;
var x30 >= 0, <= 20;
var x31 >= 0, <= 0;
var x32 >= 0, <= 20;
var x33 >= 0, <= 20;
var x34 >= 0, <= 0;
var x35 := 25, >= 25;
var x36 := 30, >= 30;
var x37 := 30, >= 30;
var x38 := 30, >= 30;
var x39 := 25, >= 25;
var x40 := 25, >= 25;
var x41;
var x42;

maximize obj:  - x41 + x42;

subject to

e2:  - 2*x1 - 4*x2 - x3 - 3*x4 - 3*x5 - 4*x6 - 2*x7 - 3*x8 - 5*x9 - 2*x10
     - 4*x11 - 4*x12 - 5*x13 - 3*x14 - 3*x15 - 5*x16 - 2*x17 - 4*x18 - 4*x19
     - 5*x20 - 3*x21 - 4*x22 - 6*x23 - 3*x24 - 5*x25 - 5*x26 - 6*x27 - 4*x28
     - x29 - x30 - x31 - x32 - x33 - x34 + x41 = 0;

e3:  - 10*x35 - 10*x36 - 9*x37 - 11*x38 - 11*x39 - 10*x40 + x42 = 0;

e4:    4*x1 + 4*x4 + 6*x6 <= 100;

e5:    7*x2 + 6*x5 + 6*x7 <= 100;

e6:    3*x3 <= 40;

e7:    3*x8 + 3*x11 + 5*x13 <= 80;

e8:    6*x9 + 5*x12 + 5*x14 <= 90;

e9:    2*x10 <= 30;

e10:    5*x15 + 5*x18 + 7*x20 <= 110;

e11:    8*x16 + 7*x19 + 7*x21 <= 110;

e12:    4*x17 <= 50;

e13:    4*x22 + 4*x25 + 5*x27 <= 90;

e14:    7*x23 + 6*x26 + 6*x28 <= 100;

e15:    3*x24 <= 40;

e16:    x1 + x2 + x3 + x8 + x9 + x10 - x29 - x35 = 0;

e17:    x4 + x5 + x11 + x12 - x30 - x36 = 0;

e18:    x6 + x7 + x13 + x14 - x31 - x37 = 0;

e19:    x15 + x16 + x17 + x22 + x23 + x24 + x29 - x32 - x38 = 0;

e20:    x18 + x19 + x25 + x26 + x30 - x33 - x39 = 0;

e21:    x20 + x21 + x27 + x28 + x31 - x34 - x40 = 0;
