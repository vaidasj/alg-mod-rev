#  NLP written by GAMS Convert at 10/11/20 14:04:09
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
#          7        1        6        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :($(x2)*$(x2) + $(x3)*$(x3)))

JuMP.add_NL_constraint(m, :($(x2) - sin(2*$(x2) + 3*$(x3)) - cos(3*$(x2) - 5*$(x3)) == 0))

JuMP.add_NL_constraint(m, :($(x3) - sin($(x2) - 2*$(x3)) + cos($(x2) + 3*$(x3)) == 0))
