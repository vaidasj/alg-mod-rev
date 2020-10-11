#  LP written by GAMS Convert at 10/11/20 12:22:18
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        8        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         14       14        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         54       54        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 200, start=0)
@variable(m, 0 <= x2 <= 750, start=0)
@variable(m, 400 <= x3 <= 800, start=400)
@variable(m, 100 <= x4 <= 700, start=100)
@variable(m, 0 <= x5 <= 1500, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 1500 <= x8, start=1500)
@variable(m, 250 <= x9 <= 300, start=250)
@variable(m, 0 <= x10 <= 60, start=0)
@variable(m, 0 <= x11 <= 100, start=0)
@variable(m, 0 <= x12 <= 40, start=0)
@variable(m, 0 <= x13 <= 30, start=0)

@objective(m, Min, 0.03*x1 + 0.08*x2 + 0.17*x3 + 0.12*x4 + 0.15*x5 + 0.21*x6 + 0.38*x7)

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 + x7 == 2000)

@constraint(m,  - 0.7*x1 - 0.75*x2 - 0.8*x3 - 0.75*x4 - 0.8*x5 - 0.97*x6 + x8 == 0)

@constraint(m,  - 0.02*x1 - 0.06*x2 - 0.08*x3 - 0.12*x4 - 0.02*x5 - 0.01*x6 - x7 + x9 == 0)

@constraint(m,  - 0.15*x1 - 0.04*x2 - 0.02*x3 - 0.04*x4 - 0.02*x5 - 0.01*x6 + x10 == 0)

@constraint(m,  - 0.03*x1 - 0.05*x2 - 0.08*x3 - 0.02*x4 - 0.06*x5 - 0.01*x6 + x11 == 0)

@constraint(m,  - 0.02*x1 - 0.04*x2 - 0.01*x3 - 0.02*x4 - 0.02*x5 + x12 == 0)

@constraint(m,  - 0.02*x1 - 0.03*x2 - 0.01*x5 + x13 == 0)
