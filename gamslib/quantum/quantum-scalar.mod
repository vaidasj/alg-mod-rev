#  DNLP written by GAMS Convert at 12/13/18 11:24:22
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


var x2 := 1, >= 0.0001, <= 10;
var x3 := 1, >= 0.001, <= 10;

minimize obj: 0.5*x3^2*Gamma(2 - 0.5/x3)/Gamma(0.5/x3)*x2**(1/x3) + 0.5*Gamma(
    1.5/x3)/Gamma(0.5/x3)*x2**(-1/x3) + Gamma(2.5/x3)/Gamma(0.5/x3)*x2**(-2/x3)
    ;
