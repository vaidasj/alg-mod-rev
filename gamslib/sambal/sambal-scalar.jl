#  NLP written by GAMS Convert at 10/11/20 12:22:02
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11       11        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         18       18        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         48       35       13        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=15)
@variable(m, x2, start=3)
@variable(m, x3, start=130)
@variable(m, x4, start=80)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=15)
@variable(m, x8, start=130)
@variable(m, x9, start=20)
@variable(m, x10, start=25)
@variable(m, x11, start=40)
@variable(m, x12, start=55)
@variable(m, x13, start=220)
@variable(m, x14, start=0)
@variable(m, x15, start=0)
@variable(m, x16, start=190)
@variable(m, x17, start=105)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(0.0666666666666667*(15 - $(x1))^2 + 0.333333333333333*(3 - $(x2))^2 + 
    0.00769230769230769*(130 - $(x3))^2 + 0.0125*(80 - $(x4))^2 + 0.0666666666666667*(15 - $(x7))^2 + 
    0.00769230769230769*(130 - $(x8))^2 + 0.05*(20 - $(x9))^2 + 0.04*(25 - $(x10))^2 + 0.025*(40 - $(x11))^2 + 
    0.0181818181818182*(55 - $(x12))^2 + 0.00454545454545455*(220 - $(x13))^2 + 0.00526315789473684*(190 - $(x16))^2 + 
    0.00952380952380952*(105 - $(x17))^2))

@constraint(m,  - x1 - x2 - x3 - x4 + x13 == 0)

@constraint(m,  - x5 + x14 == 0)

@constraint(m,  - x6 + x15 == 0)

@constraint(m,  - x7 - x8 - x9 + x16 == 0)

@constraint(m,  - x10 - x11 - x12 + x17 == 0)

@constraint(m,  - x5 - x6 + x13 == 0)

@constraint(m,  - x1 - x7 - x10 + x14 == 0)

@constraint(m,  - x2 - x8 - x11 + x15 == 0)

@constraint(m,  - x3 - x12 + x16 == 0)

@constraint(m,  - x4 - x9 + x17 == 0)
