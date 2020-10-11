#  NLP written by GAMS Convert at 10/11/20 12:50:26
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        2        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          4        4        0        0        0        0        0        0
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

@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(-32.174*(255*log((0.03 + $(x2) + $(x3) + $(x4))/(0.03 + 0.09*$(x2) + $(x3) + 
    $(x4))) + 280*log((0.03 + $(x3) + $(x4))/(0.03 + 0.07*$(x3) + $(x4))) + 290*log((0.03 + $(x4))/(0.03 + 0.13*$(x4))))
    ))

JuMP.add_NL_constraint(m, :(20*(-1 + $(x2) + $(x3) + $(x4))^2 == 0))
