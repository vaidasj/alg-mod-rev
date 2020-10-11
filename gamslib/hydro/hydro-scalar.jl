#  NLP written by GAMS Convert at 10/11/20 12:30:57
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         25       19        6        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         32       32        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         67       55       12        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 150 <= x1 <= 1500, start=150)
@variable(m, 150 <= x2 <= 1500, start=150)
@variable(m, 150 <= x3 <= 1500, start=150)
@variable(m, 150 <= x4 <= 1500, start=150)
@variable(m, 150 <= x5 <= 1500, start=150)
@variable(m, 150 <= x6 <= 1500, start=150)
@variable(m, 0 <= x7 <= 1000, start=0)
@variable(m, 0 <= x8 <= 1000, start=0)
@variable(m, 0 <= x9 <= 1000, start=0)
@variable(m, 0 <= x10 <= 1000, start=0)
@variable(m, 0 <= x11 <= 1000, start=0)
@variable(m, 0 <= x12 <= 1000, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 100000 <= x25 <= 100000, start=100000)
@variable(m, 60000 <= x26 <= 120000, start=60000)
@variable(m, 60000 <= x27 <= 120000, start=60000)
@variable(m, 60000 <= x28 <= 120000, start=60000)
@variable(m, 60000 <= x29 <= 120000, start=60000)
@variable(m, 60000 <= x30 <= 120000, start=60000)
@variable(m, 60000 <= x31 <= 120000, start=60000)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(82.8*(0.0016*$(x1)^2 + 8*$(x1) + 0.0016*$(x2)^2 + 8*$(x2) + 0.0016*$(x3)^2 + 8
    *$(x3) + 0.0016*$(x4)^2 + 8*$(x4) + 0.0016*$(x5)^2 + 8*$(x5) + 0.0016*$(x6)^2 + 8*$(x6)) + 248400))

@constraint(m, x1 + x7 - x13 >= 1200)

@constraint(m, x2 + x8 - x14 >= 1500)

@constraint(m, x3 + x9 - x15 >= 1100)

@constraint(m, x4 + x10 - x16 >= 1800)

@constraint(m, x5 + x11 - x17 >= 950)

@constraint(m, x6 + x12 - x18 >= 1300)

@constraint(m, 12*x19 - x25 + x26 == 24000)

@constraint(m, 12*x20 - x26 + x27 == 24000)

@constraint(m, 12*x21 - x27 + x28 == 24000)

@constraint(m, 12*x22 - x28 + x29 == 24000)

@constraint(m, 12*x23 - x29 + x30 == 24000)

@constraint(m, 12*x24 - x30 + x31 == 24000)

JuMP.add_NL_constraint(m, :(-8e-5*$(x7)^2 + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-8e-5*$(x8)^2 + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-8e-5*$(x9)^2 + $(x15) == 0))

JuMP.add_NL_constraint(m, :(-8e-5*$(x10)^2 + $(x16) == 0))

JuMP.add_NL_constraint(m, :(-8e-5*$(x11)^2 + $(x17) == 0))

JuMP.add_NL_constraint(m, :(-8e-5*$(x12)^2 + $(x18) == 0))

@constraint(m,  - 4.97*x7 + x19 == 330)

@constraint(m,  - 4.97*x8 + x20 == 330)

@constraint(m,  - 4.97*x9 + x21 == 330)

@constraint(m,  - 4.97*x10 + x22 == 330)

@constraint(m,  - 4.97*x11 + x23 == 330)

@constraint(m,  - 4.97*x12 + x24 == 330)
