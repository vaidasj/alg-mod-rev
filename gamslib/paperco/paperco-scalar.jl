#  LP written by GAMS Convert at 10/11/20 12:24:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         14       14        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         22       22        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         58       58        0        0
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
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 18 <= x15 <= 25, start=18)
@variable(m, 12 <= x16 <= 15, start=12)
@variable(m, 0 <= x17 <= 7, start=0)
@variable(m, 0 <= x18 <= 6, start=0)
@variable(m, 0 <= x19 <= 10, start=0)
@variable(m, 0 <= x20 <= 6, start=0)
@variable(m, 0 <= x21 <= 10, start=0)

@objective(m, Max,  - 65*x1 - 65*x2 - 58*x3 - 73*x4 - 56*x5 - 71*x6 - 40*x9 - 60*x10 - 70*x11 - 55*x12 - 50*x13 - 45*x14
     + 265*x15 + 275*x16 + 310*x17 + 120*x18 + 150*x19 - 120*x20 - 150*x21)

@constraint(m, 0.97*x1 + 0.97*x2 - x3 - x4 - x5 - x6 == 0)

@constraint(m, x3 - 0.6*x7 == 0)

@constraint(m, x4 - 0.3*x8 == 0)

@constraint(m, x5 - 0.4*x7 == 0)

@constraint(m, x6 - 0.7*x8 == 0)

@constraint(m,  - x7 + x9 + x10 + x11 + x18 - x20 == 0)

@constraint(m,  - x8 + x12 + x13 + x14 + x19 - x21 == 0)

@constraint(m, x9 - 0.68*x15 == 0)

@constraint(m, x10 - 0.45*x16 == 0)

@constraint(m, x11 - 0.25*x17 == 0)

@constraint(m, x12 - 0.32*x15 == 0)

@constraint(m, x13 - 0.55*x16 == 0)

@constraint(m, x14 - 0.75*x17 == 0)
