#  MIP written by GAMS Convert at 12/13/18 11:43:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       17        0       14        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         39       25       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         89       89        0        0
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
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 1;
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var b22 binary >= 0, <= 1;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;
var b25 binary >= 0, <= 1;
var b26 binary >= 0, <= 1;
var b27 binary >= 0, <= 1;
var b28 binary >= 0, <= 1;
var x30;
var x31;
var x32;
var x33;
var x34;
var x35;
var x36;
var x37;
var x38;
var x39;

minimize obj:    x35 + x36 + x37 + x38 + x39;

subject to

e1:    x1 <= 0;

e2:    x2 - 33000*b16 <= 0;

e3:    x3 <= 0;

e4:    x4 - 48000*b18 <= 0;

e5:    x5 - 30000*b19 <= 0;

e6:    x6 - 50000*b20 <= 0;

e7:    x7 - 10000*b21 <= 0;

e8:    x8 <= 0;

e9:    x9 - 165600*b23 <= 0;

e10:    x10 <= 0;

e11:    x11 - 12000*b25 <= 0;

e12:    x12 <= 0;

e13:    x13 - 42000*b27 <= 0;

e14:    x14 - 35000*b28 <= 0;

e15:    b15 + b16 = 1;

e16:    b17 + b18 + b19 + b20 + b21 = 1;

e17:    b22 + b23 = 1;

e18:    b24 + b25 = 1;

e19:    b26 + b27 + b28 = 1;

e20:  - x2 + x30 = 0;

e21:  - x4 - x5 - x6 - x7 - 22000*b18 - 70000*b19 - 100000*b20 - 150000*b21
      + x31 = 0;

e22:  - x9 + x32 = 0;

e23:  - x11 + x33 = 0;

e24:  - x13 - x14 - 42000*b28 + x34 = 0;

e25:  - x30 - x31 - x32 - x33 - x34 = -239600.48;

e26:  - 61.15*x2 - 3855.84*b16 + x35 = 0;

e27:  - 68.099*x4 - 66.049*x5 - 64.099*x6 - 62.119*x7 - 1623982.84*b18
      - 4892734.84*b19 - 6874204.84*b20 - 10079154.84*b21 + x36 = 0;

e28:  - 62.19*x9 - 13456*b23 + x37 = 0;

e29:  - 72.488*x11 - 6583.98*b25 + x38 = 0;

e30:  - 70.15*x13 - 68.15*x14 - 2946300*b28 + x39 = 0;
