#  MCP written by GAMS Convert at 12/13/18 10:30:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        0        6        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         16        5       11        0


var x1 := 65.7933224657568;
var x2 := 10;
var x3 := 10;
var x4 := 10;
var x5 := 10;
var x6 := 10;

subject to

e1: -5000*x1**(-1.1) + x2 + x3 + x4 + x5 + x6 >= 0 complements x1 >= 0;

e2: (0.2*x2)**0.833333333333333 - (x1 - 0.000181818181818182*x1**2.1*x2)
     >= -10 complements x2 >= 0;

e3: (0.2*x3)**0.909090909090909 - (x1 - 0.000181818181818182*x1**2.1*x3)
     >= -8 complements x3 >= 0;

e4: (0.2*x4)**1 - (x1 - 0.000181818181818182*x1**2.1*x4)
     >= -6 complements x4 >= 0;

e5: (0.2*x5)**1.11111111111111 - (x1 - 0.000181818181818182*x1**2.1*x5)
     >= -4 complements x5 >= 0;

e6: (0.2*x6)**1.25 - (x1 - 0.000181818181818182*x1**2.1*x6)
     >= -2 complements x6 >= 0;
