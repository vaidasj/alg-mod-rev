#  NLP written by GAMS Convert at 12/13/18 10:24:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          1        1        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          3        1        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x2 := -1.2, >= -10, <= 5;
var x3 := 1, >= -10, <= 10;

minimize obj: 100*(x3 - x2^2)^2 + (1 - x2)^2;
