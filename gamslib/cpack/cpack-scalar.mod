#  QCP written by GAMS Convert at 12/13/18 11:43:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         15        0       15        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         65        0       65        0


var x1 := 0.05, >= 0.05, <= 0.4;
var x2 := -0.1, >= -1, <= 1;
var x3 >= -1, <= 1;
var x4 := 0.1, >= -1, <= 1;
var x5 := 0.2, >= -1, <= 1;
var x6 := 0.3, >= -1, <= 1;
var x7 := -0.1, >= -1, <= 1;
var x8 >= -1, <= 1;
var x9 := 0.1, >= -1, <= 1;
var x10 := 0.2, >= -1, <= 1;
var x11 := 0.3, >= -1, <= 1;

maximize obj: x1;

subject to

e1: (1 - x1)^2 - (x2^2 + x7^2) >= 0;

e2: (1 - x1)^2 - (x3^2 + x8^2) >= 0;

e3: (1 - x1)^2 - (x4^2 + x9^2) >= 0;

e4: (1 - x1)^2 - (x5^2 + x10^2) >= 0;

e5: (1 - x1)^2 - (x6^2 + x11^2) >= 0;

e6: (x2 - x3)^2 + (x7 - x8)^2 - 4*x1^2 >= 0;

e7: (x2 - x4)^2 + (x7 - x9)^2 - 4*x1^2 >= 0;

e8: (x2 - x5)^2 + (x7 - x10)^2 - 4*x1^2 >= 0;

e9: (x2 - x6)^2 + (x7 - x11)^2 - 4*x1^2 >= 0;

e10: (x3 - x4)^2 + (x8 - x9)^2 - 4*x1^2 >= 0;

e11: (x3 - x5)^2 + (x8 - x10)^2 - 4*x1^2 >= 0;

e12: (x3 - x6)^2 + (x8 - x11)^2 - 4*x1^2 >= 0;

e13: (x4 - x5)^2 + (x9 - x10)^2 - 4*x1^2 >= 0;

e14: (x4 - x6)^2 + (x9 - x11)^2 - 4*x1^2 >= 0;

e15: (x5 - x6)^2 + (x10 - x11)^2 - 4*x1^2 >= 0;
