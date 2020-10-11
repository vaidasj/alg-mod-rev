#  NLP written by GAMS Convert at 10/11/20 12:51:48
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


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.001 <= x1, start=0.001)
@variable(m, 0.001 <= x2, start=0.001)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x1)^0.2*$(x2)^0.8))

@constraint(m, x1 == 8)

@constraint(m, x2 == 16)
