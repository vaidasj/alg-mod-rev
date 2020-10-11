#  LP written by GAMS Convert at 10/11/20 12:15:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        5        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         28       28        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 100, start=0)
@variable(m, 0 <= x2 <= 100, start=0)
@variable(m, 0 <= x3 <= 100, start=0)
@variable(m, 0 <= x4 <= 100, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)

@objective(m, Min, x1 + x2 + x3 + x4 - 10*x5 - 12*x6 - 8*x7 - 9*x8 + 10*x9 + 12*x10 + 8*x11 + 9*x12)

@constraint(m, x1 + x5 - x9 == 50)

@constraint(m,  - x1 + x2 + x6 - x10 == 0)

@constraint(m,  - x2 + x3 + x7 - x11 == 0)

@constraint(m,  - x3 + x4 + x8 - x12 == 0)
