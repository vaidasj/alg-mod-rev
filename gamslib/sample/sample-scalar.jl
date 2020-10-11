#  NLP written by GAMS Convert at 10/11/20 12:17:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         13        9        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 2.5E-6 <= x1 <= 0.01, start=0.005)
@variable(m, 3.33333333333333E-6 <= x2 <= 0.01, start=0.005)
@variable(m, 5E-6 <= x3 <= 0.01, start=0.005)
@variable(m, 1E-5 <= x4 <= 0.01, start=0.005)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(1/$(x1) + 1/$(x2) + 1/$(x3) + 1/$(x4)))

@constraint(m, 4*x1 + 2.25*x2 + x3 + 0.25*x4 <= 0.0401)

@constraint(m, 0.16*x1 + 0.36*x2 + 0.64*x3 + 0.64*x4 <= 0.010085)
