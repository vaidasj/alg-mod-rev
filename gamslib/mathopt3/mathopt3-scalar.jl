#  NLP written by GAMS Convert at 10/11/20 12:49:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        5        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         43       19       24        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=10)
@variable(m, x2, start=-10)
@variable(m, x3, start=10)
@variable(m, x4, start=10)
@variable(m, x5, start=10)
@variable(m, x6, start=-10)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(($(x1) + $(x2))^2 + ($(x3) - $(x5))^2 + ($(x6) - $(x4))^2 + 2*($(x1) + $(x3)
     - $(x4))^2 + ($(x2) - $(x1) + $(x3) - $(x4))^2 + 10*sin($(x1) + $(x5) - $(x6))^2))

JuMP.add_NL_constraint(m, :($(x1)^2 - sin($(x2)) - $(x4) + $(x5) + $(x6) == 0))

JuMP.add_NL_constraint(m, :($(x1)*$(x3) - $(x2)*$(x4)*$(x1) - sin((-$(x1)) - $(x3) + $(x6)) - $(x5) == 0))

JuMP.add_NL_constraint(m, :($(x2)*$(x6)*cos($(x5)) - sin($(x3)*$(x4)) + $(x2) - $(x5) == 0))

JuMP.add_NL_constraint(m, :($(x1)*$(x2) - $(x3)^2 - $(x4)*$(x5) - $(x6)^2 == 0))

@constraint(m, 2*x1 + 5*x2 + x3 + x4 <= 1)

@constraint(m, 3*x1 - 2*x2 + x3 - 4*x4 <= 0)

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 <= 2)
