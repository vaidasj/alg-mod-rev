#  NLP written by GAMS Convert at 10/11/20 13:00:17
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, 0.0001 <= x3 <= 0.9999, start=0.5)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(230*BetaReg($(x3),2,4) - 2*(BetaReg($(x3),2,4)*(113 + $(x2)) + 2*BetaReg($(x3)
    ,3,4)) + 3*((1 - BetaReg($(x3),2,4))*(113 + $(x2)) - 2*BetaReg($(x3),3,4)) + 345*BetaReg($(x3),2,4) - 327))

@constraint(m, 0.166666666666667*x2 + x3 == 0.333333333333333)
