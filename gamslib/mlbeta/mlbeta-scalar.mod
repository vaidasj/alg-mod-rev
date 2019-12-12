#  NLP written by GAMS Convert at 12/13/18 11:24:22
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


var x1 := 0.406253228038076, >= 0.0001;
var x2 := 0.702047665836708, >= 0.0001;

maximize obj: 75*(LogGamma(x1 + x2) - LogGamma(x1) - LogGamma(x2)) - 
    149.384617555698*x1 - 61.9950852353139*x2 + 211.379702791012;
