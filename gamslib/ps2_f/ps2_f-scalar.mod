#  NLP written by GAMS Convert at 12/13/18 11:30:38
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        3        2        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         13       11        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 0.0001, >= 0.0001;
var x2 := 0.0001, >= 0.0001;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;

maximize obj:    0.2*x3 + 0.8*x4 - 0.2*x5 - 0.8*x6;

subject to

e2: -x1**0.5 + x3 = 0;

e3: -x2**0.5 + x4 = 0;

e4:  - 0.2*x1 + x5 >= 0;

e5:  - 0.3*x2 + x6 >= 0;
