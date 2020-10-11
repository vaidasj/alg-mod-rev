#  NLP written by GAMS Convert at 10/11/20 12:42:52
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        8        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         34       27        7        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=1)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12 <= 100, start=0)
@variable(m, x13 <= 200, start=0)

@objective(m, Max,  - x10 + x11)

@constraint(m,  - 6*x1 - 16*x2 - 10*x3 + x10 == 0)

@constraint(m, x11 - 9*x12 - 15*x13 == 0)

@constraint(m,  - x4 - x6 + x12 == 0)

@constraint(m,  - x5 - x7 + x13 == 0)

@constraint(m, x1 + x2 - x6 - x7 == 0)

@constraint(m, x3 - x4 - x5 == 0)

JuMP.add_NL_constraint(m, :($(x8)*($(x6) + $(x7)) - 3*$(x1) - $(x2) == 0))

JuMP.add_NL_constraint(m, :($(x8)*$(x6) - 2.5*$(x6) - 0.5*$(x4) <= 0))

JuMP.add_NL_constraint(m, :($(x8)*$(x7) - 1.5*$(x7) + 0.5*$(x5) <= 0))
