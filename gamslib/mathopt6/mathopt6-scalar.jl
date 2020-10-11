#  DNLP written by GAMS Convert at 10/11/20 12:50:00
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, -3 <= x1 <= 3, start=-0.655668942)
@variable(m, -3 <= x2 <= 3, start=0.346914252)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(exp(sin(50*$(x1))) + sin(60*exp($(x2))) + sin(70*sin($(x1))) + sin(sin(80*
    $(x2))) - sin(10*$(x1) + 10*$(x2)) + 0.25*($(x1)^2 + $(x2)^2)))
