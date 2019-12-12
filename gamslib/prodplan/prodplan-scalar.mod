#  MIP written by GAMS Convert at 12/13/18 11:30:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         17        9        0        8        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         25       17        8        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         64       64        0        0
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
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var b22 binary >= 0, <= 1;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;

minimize obj:    5*x1 + 5*x2 + 5*x3 + 5*x4 + 5*x5 + 5*x6 + 5*x7 + 2.5*x8
     + 100*x9 + 100*x10 + 100*x11 + 100*x12 + 100*x13 + 100*x14 + 100*x15
     + 100*x16 + 5000*b17 + 5000*b18 + 5000*b19 + 5000*b20 + 5000*b21
     + 5000*b22 + 5000*b23 + 5000*b24;

subject to

e2:    x9 - 5600*b17 <= 0;

e3:    x10 - 6800*b18 <= 0;

e4:    x11 - 6400*b19 <= 0;

e5:    x12 - 5600*b20 <= 0;

e6:    x13 - 4800*b21 <= 0;

e7:    x14 - 3600*b22 <= 0;

e8:    x15 - 2400*b23 <= 0;

e9:    x16 - 1200*b24 <= 0;

e10:  - x1 + x9 = 200;

e11:    x1 - x2 + x10 = 400;

e12:    x2 - x3 + x11 = 800;

e13:    x3 - x4 + x12 = 800;

e14:    x4 - x5 + x13 = 1200;

e15:    x5 - x6 + x14 = 1200;

e16:    x6 - x7 + x15 = 1200;

e17:    x7 - x8 + x16 = 1200;
