#  LP written by GAMS Convert at 12/13/18 10:24:27
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        1        3        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         19       19        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;

minimize obj:    0.225*x1 + 0.153*x2 + 0.162*x3 + 0.225*x4 + 0.162*x5
     + 0.126*x6;

subject to

e2:    x1 + x2 + x3 <= 350;

e3:    x4 + x5 + x6 <= 600;

e4:    x1 + x4 >= 325;

e5:    x2 + x5 >= 300;

e6:    x3 + x6 >= 275;
