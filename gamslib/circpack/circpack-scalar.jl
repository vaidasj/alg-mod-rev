#  NLP written by GAMS Convert at 10/11/20 14:05:55
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         29        2       15       12        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         16       16        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         89       27       62        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 32, start=32)
@variable(m, 0 <= x2 <= 4, start=4)
@variable(m, 0 <= x3 <= 8, start=8)
@variable(m, 1.2 <= x4 <= 2.8, start=1.4747954112)
@variable(m, 1.2 <= x5 <= 6.8, start=5.9222935648)
@variable(m, 0.6 <= x6 <= 3.4, start=2.1410509968)
@variable(m, 0.6 <= x7 <= 7.4, start=2.6477377472)
@variable(m, 0.8 <= x8 <= 3.2, start=1.5013090808)
@variable(m, 0.8 <= x9 <= 7.2, start=2.2339383488)
@variable(m, 1.7 <= x10 <= 2.3, start=1.9098983024)
@variable(m, 1.7 <= x11 <= 6.3, start=5.6388435962)
@variable(m, 1.3 <= x12 <= 2.7, start=1.3939592122)
@variable(m, 1.3 <= x13 <= 6.7, start=4.0011376126)
@variable(m, 0.5 <= x14 <= 3.5, start=3.494352881)
@variable(m, 0.5 <= x15 <= 7.5, start=4.551133646)

@objective(m, Min, x1 - 22.8393785915978)

JuMP.add_NL_constraint(m, :(-$(x2)*$(x3) + $(x1) == 0))

JuMP.add_NL_constraint(m, :(($(x6) - $(x4))^2 + ($(x7) - $(x5))^2 >= 3.24))

JuMP.add_NL_constraint(m, :(($(x8) - $(x4))^2 + ($(x9) - $(x5))^2 >= 4))

JuMP.add_NL_constraint(m, :(($(x8) - $(x6))^2 + ($(x9) - $(x7))^2 >= 1.96))

JuMP.add_NL_constraint(m, :(($(x10) - $(x4))^2 + ($(x11) - $(x5))^2 >= 8.41))

JuMP.add_NL_constraint(m, :(($(x10) - $(x6))^2 + ($(x11) - $(x7))^2 >= 5.29))

JuMP.add_NL_constraint(m, :(($(x10) - $(x8))^2 + ($(x11) - $(x9))^2 >= 6.25))

JuMP.add_NL_constraint(m, :(($(x12) - $(x4))^2 + ($(x13) - $(x5))^2 >= 6.25))

JuMP.add_NL_constraint(m, :(($(x12) - $(x6))^2 + ($(x13) - $(x7))^2 >= 3.61))

JuMP.add_NL_constraint(m, :(($(x12) - $(x8))^2 + ($(x13) - $(x9))^2 >= 4.41))

JuMP.add_NL_constraint(m, :(($(x12) - $(x10))^2 + ($(x13) - $(x11))^2 >= 9))

JuMP.add_NL_constraint(m, :(($(x14) - $(x4))^2 + ($(x15) - $(x5))^2 >= 2.89))

JuMP.add_NL_constraint(m, :(($(x14) - $(x6))^2 + ($(x15) - $(x7))^2 >= 1.21))

JuMP.add_NL_constraint(m, :(($(x14) - $(x8))^2 + ($(x15) - $(x9))^2 >= 1.69))

JuMP.add_NL_constraint(m, :(($(x14) - $(x10))^2 + ($(x15) - $(x11))^2 >= 4.84))

JuMP.add_NL_constraint(m, :(($(x14) - $(x12))^2 + ($(x15) - $(x13))^2 >= 3.24))

@constraint(m,  - x2 + x4 <= -1.2)

@constraint(m,  - x3 + x5 <= -1.2)

@constraint(m,  - x2 + x6 <= -0.6)

@constraint(m,  - x3 + x7 <= -0.6)

@constraint(m,  - x2 + x8 <= -0.8)

@constraint(m,  - x3 + x9 <= -0.8)

@constraint(m,  - x2 + x10 <= -1.7)

@constraint(m,  - x3 + x11 <= -1.7)

@constraint(m,  - x2 + x12 <= -1.3)

@constraint(m,  - x3 + x13 <= -1.3)

@constraint(m,  - x2 + x14 <= -0.5)

@constraint(m,  - x3 + x15 <= -0.5)
