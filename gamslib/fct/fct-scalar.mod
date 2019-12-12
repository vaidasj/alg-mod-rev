#  DNLP written by GAMS Convert at 12/13/18 11:23:05
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10       10        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         12       12        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         43       17       26        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2;
var x3;
var x4;
var x5;
var x6;
var x7;
var x8 := 2, >= -10, <= 5;
var x9 := 2, >= -10, <= 5;
var x10 := 2, >= -10, <= 5;
var x11 := 2, >= -10, <= 5;
var x12 := 2, >= -10, <= 5;

minimize obj:    2*x6 + x7;

subject to

e2: -(x8^2 + x9^2 + x10^2 + x11^2 + x12^2) + x7 = 0;

e3:  - x3 - x5 + x6 = 0;

e4: -((x8^2 - x9)^2 + x10^2 + 2*x11^2 + (x12 - x9)^2) + x2 = 0;

e5: -abs(sin(4*(x2) mod (3.14159265358979)))) + x3 = 0;

e6: -((x8 + x9 - x10 + x11 - x12)^2 + 2*(x9 - x8 + x10 - x11 + x12)^2) + x4
     = 0;

e7: -abs(sin(3*(x4) mod (3.14159265358979)))) + x5 = 0;

e8: 3*x9^2 + x10^2 - 2*x11^2 + x12^2 + x8 = 0;

e9:    x8 + 4*x9 - x10 + x11 - 3*x12 = 0;

e10: x8^2 - x10^2 + 2*x9^2 - x11^2 - x12^2 = 0;
