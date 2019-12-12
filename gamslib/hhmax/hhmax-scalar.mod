#  NLP written by GAMS Convert at 12/13/18 11:23:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        3        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          5        3        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 0.001, >= 0.001;
var x2 := 0.001, >= 0.001;

maximize obj: x1**0.2*x2**0.8;

subject to

e1:    x1 = 8;

e2:    x2 = 16;
