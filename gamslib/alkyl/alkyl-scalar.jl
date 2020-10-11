#  NLP written by GAMS Convert at 10/11/20 12:30:35
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

@variable(m, 0 <= x2 <= 2, start=1.745)
@variable(m, 0 <= x3 <= 1.6, start=1.2)
@variable(m, 0 <= x4 <= 1.2, start=1.1)
@variable(m, 0 <= x5 <= 5, start=3.048)
@variable(m, 0 <= x6 <= 2, start=1.974)
@variable(m, 0.85 <= x7 <= 0.93, start=0.893)
@variable(m, 0.9 <= x8 <= 0.95, start=0.928)
@variable(m, 3 <= x9 <= 12, start=8)
@variable(m, 1.2 <= x10 <= 4, start=3.6)
@variable(m, 1.45 <= x11 <= 1.62, start=1.45)
@variable(m, 0.99 <= x12 <= 1.01010101010101, start=1)
@variable(m, 0.99 <= x13 <= 1.01010101010101, start=1)
@variable(m, 0.9 <= x14 <= 1.11111111111111, start=1)
@variable(m, 0.99 <= x15 <= 1.01010101010101, start=1)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(-6.3*$(x5)*$(x8) + 5.04*$(x2) + 0.35*$(x3) + $(x4) + 3.36*$(x6)))

@constraint(m,  - 0.819672131147541*x2 + x5 - 0.819672131147541*x6 == 0)

JuMP.add_NL_constraint(m, :(0.98*$(x4) - (0.01*$(x5)*$(x10) + $(x4))*$(x7) == 0))

JuMP.add_NL_constraint(m, :(-$(x2)*$(x9) + 10*$(x3) + $(x6) == 0))

JuMP.add_NL_constraint(m, :($(x5)*$(x12) - (1.12 + 0.13167*$(x9) - 0.0067*$(x9)*$(x9))*$(x2) == 0))

JuMP.add_NL_constraint(m, :($(x8)*$(x13) - 0.01*(1.098*$(x9) - 0.038*$(x9)*$(x9)) - 0.325*$(x7) == 0.57425))

JuMP.add_NL_constraint(m, :($(x10)*$(x14) + 22.2*$(x11) == 35.82))

JuMP.add_NL_constraint(m, :($(x11)*$(x15) - 3*$(x8) == -1.33))
