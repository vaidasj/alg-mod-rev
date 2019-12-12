#  NLP written by GAMS Convert at 12/13/18 11:24:22
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        2        0        0        0        0        0        0
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


var x2;
var x3 := 0.5, >= 0.0001, <= 0.9999;

minimize obj: 230*BetaReg(x3,2,4) - 2*(BetaReg(x3,2,4)*(113 + x2) + 2*BetaReg(
    x3,3,4)) + 3*((1 - BetaReg(x3,2,4))*(113 + x2) - 2*BetaReg(x3,3,4)) + 345*
    BetaReg(x3,2,4) - 327;

subject to

e2:    0.166666666666667*x2 + x3 = 0.333333333333333;
