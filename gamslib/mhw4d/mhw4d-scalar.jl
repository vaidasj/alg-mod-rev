#  NLP written by GAMS Convert at 10/11/20 12:22:45
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          4        4        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         14        4       10        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=-1)
@variable(m, x3, start=2)
@variable(m, x4, start=1)
@variable(m, x5, start=-2)
@variable(m, x6, start=-2)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :((-1 + $(x2))^2 + ($(x2) - $(x3))^2 + ($(x3) - $(x4))^3 + ($(x4) - $(x5))^4 + (
    $(x5) - $(x6))^4))

JuMP.add_NL_constraint(m, :($(x3)^2 + $(x4)^3 + $(x2) == 6.24264068711929))

JuMP.add_NL_constraint(m, :(-$(x4)^2 + $(x3) + $(x5) == 0.82842712474619))

JuMP.add_NL_constraint(m, :($(x2)*$(x6) == 2))
