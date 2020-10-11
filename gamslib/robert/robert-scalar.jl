#  LP written by GAMS Convert at 10/11/20 12:18:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        7        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         18       18        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         57       57        0        0
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
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10 <= 400, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14 <= 275, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)

@objective(m, Max, 25*x1 + 20*x2 + 10*x3 + 50*x4 + 50*x5 + 50*x6 + 75*x7 + 80*x8 + 100*x9 - 0.5*x10 - 0.5*x11 - 0.5*x12
     + 15*x13 - 2*x14 - 2*x15 - 2*x16 + 25*x17)

@constraint(m, x1 + x4 + x7 <= 40)

@constraint(m, x2 + x5 + x8 <= 40)

@constraint(m, x3 + x6 + x9 <= 40)

@constraint(m, 5*x1 + 3*x4 + x7 - x10 + x11 == 0)

@constraint(m, 5*x2 + 3*x5 + x8 - x11 + x12 == 0)

@constraint(m, 5*x3 + 3*x6 + x9 - x12 + x13 == 0)

@constraint(m, x1 + 2*x4 + 3*x7 - x14 + x15 == 0)

@constraint(m, x2 + 2*x5 + 3*x8 - x15 + x16 == 0)

@constraint(m, x3 + 2*x6 + 3*x9 - x16 + x17 == 0)
