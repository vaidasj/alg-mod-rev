#  NLP written by GAMS Convert at 12/13/18 10:24:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         13        9        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 0.005, >= 2.5E-6, <= 0.01;
var x2 := 0.005, >= 3.33333333333333E-6, <= 0.01;
var x3 := 0.005, >= 5E-6, <= 0.01;
var x4 := 0.005, >= 1E-5, <= 0.01;

minimize obj: 1/x1 + 1/x2 + 1/x3 + 1/x4;

subject to

e1:    4*x1 + 2.25*x2 + x3 + 0.25*x4 <= 0.0401;

e2:    0.16*x1 + 0.36*x2 + 0.64*x3 + 0.64*x4 <= 0.010085;
