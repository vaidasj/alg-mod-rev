#  NLP written by GAMS Convert at 12/13/18 11:34:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         28       19        9        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2 := 1, >= 1;
var x3 := 1, >= 1;
var x4 := 1, >= 1;
var x5 := 1, >= 1;
var x6 := 1, >= 1;
var x7 := 1, >= 1;
var x8 := 1, >= 1;
var x9 := 1, >= 1;
var x10 := 1, >= 1;

minimize obj: log(0.0197941409342835*x2)*x2 + log(0.0352112676056338*x3)*x3 + 
    log(0.0721136511141559*x4)*x4 + log(0.0113109376767334*x5)*x5 + log(
    0.0142555739294064*x6)*x6 + log(0.0133342222814854*x7)*x7 + log(
    0.0913575735428467*x8)*x8 + log(0.0141410713275638*x9)*x9 + log(
    0.0243694407213354*x10)*x10;

subject to

e1:    x2 + x3 + x4 = 245;

e2:    x5 + x6 + x7 = 136;

e3:    x8 + x9 + x10 = 159;

e4:    x2 + x5 + x8 = 251;

e5:    x3 + x6 + x9 = 107;

e6:    x4 + x7 + x10 = 182;
