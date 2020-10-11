#  NLP written by GAMS Convert at 10/11/20 12:17:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         31       13       18        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=500)
@variable(m, x9, start=-150)
@variable(m, -5 <= x10 <= 5, start=-0.2)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :($(x2)^2 + $(x3)^2 + $(x4)^2 + $(x5)^2 + $(x6)^2 + $(x7)^2))

JuMP.add_NL_constraint(m, :(-exp(-5*$(x10))*$(x9) - $(x2) - $(x8) == -127))

JuMP.add_NL_constraint(m, :(-exp(-3*$(x10))*$(x9) - $(x3) - $(x8) == -151))

JuMP.add_NL_constraint(m, :(-exp(-$(x10))*$(x9) - $(x4) - $(x8) == -379))

JuMP.add_NL_constraint(m, :(-exp(5*$(x10))*$(x9) - $(x5) - $(x8) == -421))

JuMP.add_NL_constraint(m, :(-exp(3*$(x10))*$(x9) - $(x6) - $(x8) == -460))

JuMP.add_NL_constraint(m, :(-exp($(x10))*$(x9) - $(x7) - $(x8) == -426))
