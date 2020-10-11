#  NLP written by GAMS Convert at 10/11/20 13:34:58
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       11       20        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         99       89       10        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.0001 <= x1, start=0.0001)
@variable(m, 0.0001 <= x2, start=0.0001)
@variable(m, 0.0001 <= x3, start=0.0001)
@variable(m, 0.0001 <= x4, start=0.0001)
@variable(m, 0.0001 <= x5, start=0.0001)
@variable(m, 0.0001 <= x6, start=0.0001)
@variable(m, 0.0001 <= x7, start=0.0001)
@variable(m, 0.0001 <= x8, start=0.0001)
@variable(m, 0.0001 <= x9, start=0.0001)
@variable(m, 0.0001 <= x10, start=0.0001)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
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
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)

@objective(m, Max, 0.1*x11 + 0.1*x12 + 0.1*x13 + 0.1*x14 + 0.1*x15 + 0.1*x16 + 0.1*x17 + 0.1*x18 + 0.1*x19 + 0.1*x20
     - 0.1*x21 - 0.1*x22 - 0.1*x23 - 0.1*x24 - 0.1*x25 - 0.1*x26 - 0.1*x27 - 0.1*x28 - 0.1*x29 - 0.1*x30)

JuMP.add_NL_constraint(m, :(-$(x1)^0.5 + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-$(x2)^0.5 + $(x12) == 0))

JuMP.add_NL_constraint(m, :(-$(x3)^0.5 + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-$(x4)^0.5 + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-$(x5)^0.5 + $(x15) == 0))

JuMP.add_NL_constraint(m, :(-$(x6)^0.5 + $(x16) == 0))

JuMP.add_NL_constraint(m, :(-$(x7)^0.5 + $(x17) == 0))

JuMP.add_NL_constraint(m, :(-$(x8)^0.5 + $(x18) == 0))

JuMP.add_NL_constraint(m, :(-$(x9)^0.5 + $(x19) == 0))

JuMP.add_NL_constraint(m, :(-$(x10)^0.5 + $(x20) == 0))

@constraint(m,  - 0.1*x1 + x21 >= 0)

@constraint(m,  - 0.2*x2 + x22 >= 0)

@constraint(m,  - 0.3*x3 + x23 >= 0)

@constraint(m,  - 0.4*x4 + x24 >= 0)

@constraint(m,  - 0.5*x5 + x25 >= 0)

@constraint(m,  - 0.6*x6 + x26 >= 0)

@constraint(m,  - 0.7*x7 + x27 >= 0)

@constraint(m,  - 0.8*x8 + x28 >= 0)

@constraint(m,  - 0.9*x9 + x29 >= 0)

@constraint(m,  - x10 + x30 >= 0)

@constraint(m,  - 0.1*x1 + 0.1*x2 + x21 - x22 >= 0)

@constraint(m,  - 0.2*x2 + 0.2*x3 + x22 - x23 >= 0)

@constraint(m,  - 0.3*x3 + 0.3*x4 + x23 - x24 >= 0)

@constraint(m,  - 0.4*x4 + 0.4*x5 + x24 - x25 >= 0)

@constraint(m,  - 0.5*x5 + 0.5*x6 + x25 - x26 >= 0)

@constraint(m,  - 0.6*x6 + 0.6*x7 + x26 - x27 >= 0)

@constraint(m,  - 0.7*x7 + 0.7*x8 + x27 - x28 >= 0)

@constraint(m,  - 0.8*x8 + 0.8*x9 + x28 - x29 >= 0)

@constraint(m,  - 0.9*x9 + 0.9*x10 + x29 - x30 >= 0)

@constraint(m,  - x10 + x30 >= 0)
