#  DNLP written by GAMS Convert at 10/11/20 12:49:31
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          1        1        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          2        2        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          2        1        1        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, -2 <= x1 <= 2.5, start=1)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(2*$(x1)^2 - $(x1) - 1.05*$(x1)^4 + 0.1666667*$(x1)^6))
