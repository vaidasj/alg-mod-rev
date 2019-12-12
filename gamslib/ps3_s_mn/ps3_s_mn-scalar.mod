#  NLP written by GAMS Convert at 12/13/18 11:30:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13        4        9        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         34       31        3        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 0.0001, >= 0.0001;
var x2 := 0.0001, >= 0.0001;
var x3 := 0.0001, >= 0.0001;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 >= 0;
var x9 >= 0;

maximize obj:    0.2*x4 + 0.5*x5 + 0.3*x6 - 0.2*x7 - 0.5*x8 - 0.3*x9;

subject to

e2: -x1**0.5 + x4 = 0;

e3: -x2**0.5 + x5 = 0;

e4: -x3**0.5 + x6 = 0;

e5:  - 0.1*x1 + x7 >= 0;

e6:  - 0.3*x2 + x8 >= 0;

e7:  - 0.31*x3 + x9 >= 0;

e8:  - 0.1*x1 + 0.1*x2 + x7 - x8 >= 0;

e9:  - 0.3*x2 + 0.3*x3 + x8 - x9 >= 0;

e10:  - 0.31*x3 + x9 >= 0;

e11:    x1 - x2 >= 0;

e12:    x2 - x3 >= 0;

e13:    x3 >= 0;
