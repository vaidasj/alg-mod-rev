#  NLP written by GAMS Convert at 10/11/20 12:49:04
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        2        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          7        3        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, -10 <= x1 <= 20, start=8)
@variable(m, -15 <= x2 <= 20, start=-14)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(10*($(x1)^2 - $(x2))^2 + (-1 + $(x1))^2))

JuMP.add_NL_constraint(m, :($(x1) - $(x1)*$(x2) == 0))

@constraint(m, 3*x1 + 4*x2 <= 25)
