#  MCP written by GAMS Convert at 12/13/18 10:30:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        0       11        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         27       24        3        0


var x1 := 1;
var x2 := 1;
var x3 := 1;
var x4 := 1;
var x5 := 1;
var x6;
var x7;
var x8;
var x9;
var x10;
var x11;

subject to

e1:    x1 - x3 >= -0.225 complements x6 >= 0;

e2:    x1 - x4 >= -0.0765 complements x7 >= 0;

e3:    x1 - x5 >= -0.162 complements x8 >= 0;

e4:    x2 - x3 >= -0.225 complements x9 >= 0;

e5:    x2 - x4 >= -0.162 complements x10 >= 0;

e6:    x2 - x5 >= -0.126 complements x11 >= 0;

e7:  - x6 - x7 - x8 >= -350 complements x1 >= 0;

e8:  - x9 - x10 - x11 >= -600 complements x2 >= 0;

e9: -325*(1/x3)**1.5 + x6 + x9 >= 0 complements x3 >= 0;

e10: -300*(1/x4)**1.2 + x7 + x10 >= 0 complements x4 >= 0;

e11: -275*(1/x5)**2 + x8 + x11 >= 0 complements x5 >= 0;
