#  NLP written by GAMS Convert at 10/11/20 12:17:04
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        8        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       15        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         32       13       19        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 10 <= x1 <= 2000, start=1745)
@variable(m, 0 <= x2 <= 16000, start=12000)
@variable(m, 0 <= x3 <= 120, start=110)
@variable(m, 0 <= x4 <= 5000, start=3048)
@variable(m, 0 <= x5 <= 2000, start=1974)
@variable(m, 85 <= x6 <= 93, start=89.2)
@variable(m, 90 <= x7 <= 95, start=92.8)
@variable(m, 3 <= x8 <= 12, start=8)
@variable(m, 1.2 <= x9 <= 4, start=3.6)
@variable(m, 145 <= x10 <= 162, start=145)
@variable(m, 0.9 <= x12 <= 1.1, start=1)
@variable(m, 0.9 <= x13 <= 1.1, start=1)
@variable(m, 0.9 <= x14 <= 1.1, start=1)
@variable(m, 0.9 <= x15 <= 1.1, start=1)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(0.063*$(x4)*$(x7) - 5.04*$(x1) - 0.035*$(x2) - 10*$(x3) - 3.36*$(x5)))

JuMP.add_NL_constraint(m, :($(x12)*$(x4) - (1.12 + 0.13167*$(x8) - 0.00667*$(x8)^2)*$(x1) == 0))

@constraint(m,  - x1 + 1.22*x4 - x5 == 0)

JuMP.add_NL_constraint(m, :(-0.001*$(x4)*$(x9)*$(x6)/(98 - $(x6)) + $(x3) == 0))

JuMP.add_NL_constraint(m, :($(x13)*$(x7) - (1.098*$(x8) - 0.038*$(x8)^2) - 0.325*$(x6) == 57.425))

JuMP.add_NL_constraint(m, :(-($(x2) + $(x5))/$(x1) + $(x8) == 0))

JuMP.add_NL_constraint(m, :($(x14)*$(x9) + 0.222*$(x10) == 35.82))

JuMP.add_NL_constraint(m, :($(x15)*$(x10) - 3*$(x7) == -133))
