#  NLP written by GAMS Convert at 10/11/20 12:21:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         26       20        3        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         30       30        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         81       60       21        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1000 <= x1 <= 1000, start=1000)
@variable(m, x2, start=1000)
@variable(m, x3, start=1000)
@variable(m, x4, start=1000)
@variable(m, 100 <= x5, start=100)
@variable(m, 100 <= x6, start=100)
@variable(m, 100 <= x7, start=100)
@variable(m, 100 <= x8 <= 400, start=400)
@variable(m, 100 <= x9 <= 400, start=400)
@variable(m, 100 <= x10 <= 400, start=400)
@variable(m, 100 <= x11 <= 100, start=100)
@variable(m, x12, start=100)
@variable(m, x13, start=100)
@variable(m, x14, start=100)
@variable(m, x15, start=0)
@variable(m, x16, start=0)
@variable(m, x17, start=0)
@variable(m, x19, start=0)
@variable(m, x20, start=0)
@variable(m, x21, start=0)
@variable(m, x22, start=0)
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, 0.01 <= x25, start=1)
@variable(m, 0.01 <= x26, start=1)
@variable(m, 0.01 <= x27, start=1)
@variable(m, x28, start=0)
@variable(m, x29, start=0)
@variable(m, x30, start=0)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x25)^1*$(x26)^0.944*$(x27)^0.891136))

JuMP.add_NL_constraint(m, :(-0.01*(0.5*$(x5)^0.5 + 0.5*(1004.72366 - $(x8) - $(x15))^0.5)^2 + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-0.01*(0.5*$(x6)^0.5 + 0.5*(1004.72366 - $(x9) - $(x16))^0.5)^2 + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-0.01*(0.5*$(x7)^0.5 + 0.5*(1004.72366 - $(x10) - $(x17))^0.5)^2 + $(x27) == 0))

@constraint(m,  - 0.07*x2 - x8 + x28 == 0)

@constraint(m,  - 0.07*x3 - x9 + x29 == 0)

@constraint(m,  - 0.07*x4 - x10 + x30 == 0)

@constraint(m, x22 - 0.2*x28 == 0)

@constraint(m, x23 - 0.2*x29 == 0)

@constraint(m, x24 - 0.2*x30 == 0)

@constraint(m, x5 + x19 + x22 - x28 == 0)

@constraint(m, x6 + x20 + x23 - x29 == 0)

@constraint(m, x7 + x21 + x24 - x30 == 0)

@constraint(m, x1 - x2 + x11 - x12 + x19 == 0)

@constraint(m, x2 - x3 + x12 - x13 + x20 == 0)

@constraint(m, x3 - x4 + x13 - x14 + x21 == 0)

JuMP.add_NL_constraint(m, :($(x15)*($(x12) - 0.255905*$(x5)) == 1))

JuMP.add_NL_constraint(m, :($(x16)*($(x13) - 0.255905*$(x6)) == 1))

JuMP.add_NL_constraint(m, :($(x17)*($(x14) - 0.255905*$(x7)) == 1))

@constraint(m, x4 + x14 == 1100)

@constraint(m,  - 0.25846405*x5 + x12 >= 0)

@constraint(m,  - 0.25846405*x6 + x13 >= 0)

@constraint(m,  - 0.25846405*x7 + x14 >= 0)

@constraint(m, x8 + x15 <= 904.251294)

@constraint(m, x9 + x16 <= 904.251294)

@constraint(m, x10 + x17 <= 904.251294)
