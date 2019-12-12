#  MIP written by GAMS Convert at 12/13/18 10:24:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         25        2        9       14        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         19       10        9        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         68       68        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2;
var x3;
var x4;
var x5;
var x6;
var x7;
var x8;
var x9;
var x10;
var b11 binary >= 0, <= 1;
var b12 binary >= 0, <= 1;
var b13 binary >= 0, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 1;
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;

minimize obj:    61.15*x2 + 68.099*x3 + 66.049*x4 + 64.099*x5 + 62.119*x6
     + 62.19*x7 + 72.488*x8 + 70.15*x9 + 68.15*x10 + 3855.84*b11
     + 125804.84*b12 + 269304.84*b13 + 464304.84*b14 + 761304.840000001*b15
     + 13456*b16 + 6583.98*b17 + 84000*b19;

subject to

e1:  - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 = -239600.48;

e3:    x2 >= 0;

e4:    x3 - 22000*b12 >= 0;

e5:    x4 - 70000*b13 >= 0;

e6:    x5 - 100000*b14 >= 0;

e7:    x6 - 150000*b15 >= 0;

e8:    x7 >= 0;

e9:    x8 >= 0;

e10:    x9 >= 0;

e11:    x10 - 42000*b19 >= 0;

e12:    x2 - 33000*b11 <= 0;

e13:    x3 - 70000*b12 <= 0;

e14:    x4 - 100000*b13 <= 0;

e15:    x5 - 150000*b14 <= 0;

e16:    x6 - 160000*b15 <= 0;

e17:    x7 - 165600*b16 <= 0;

e18:    x8 - 12000*b17 <= 0;

e19:    x9 - 42000*b18 <= 0;

e20:    x10 - 77000*b19 <= 0;

e21:    b11 <= 1;

e22:    b12 + b13 + b14 + b15 <= 1;

e23:    b16 <= 1;

e24:    b17 <= 1;

e25:    b18 + b19 <= 1;
