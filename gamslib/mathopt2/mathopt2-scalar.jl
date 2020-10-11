#  NLP written by GAMS Convert at 10/11/20 12:49:10
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        3        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         11        7        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=10)
@variable(m, x2, start=-10)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :((2*$(x1)^2 - $(x2))^2 + ($(x2) - 6*$(x1)^2)^2))

JuMP.add_NL_constraint(m, :($(x1) - ($(x1)*$(x2) + 10*$(x2)) == 0))

@constraint(m, x1 - 3*x2 == 0)

@constraint(m, x1 + x2 <= 1)

@constraint(m,  - x1 + x2 <= 2)
