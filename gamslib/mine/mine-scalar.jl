#  LP written by GAMS Convert at 10/11/20 12:18:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57        1       56        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        135      135        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 1, start=0)
@variable(m, 0 <= x2 <= 1, start=0)
@variable(m, 0 <= x3 <= 1, start=0)
@variable(m, 0 <= x4 <= 1, start=0)
@variable(m, 0 <= x5 <= 1, start=0)
@variable(m, 0 <= x6 <= 1, start=0)
@variable(m, 0 <= x7 <= 1, start=0)
@variable(m, 0 <= x8 <= 1, start=0)
@variable(m, 0 <= x9 <= 1, start=0)
@variable(m, 0 <= x10 <= 1, start=0)
@variable(m, 0 <= x11 <= 1, start=0)
@variable(m, 0 <= x12 <= 1, start=0)
@variable(m, 0 <= x13 <= 1, start=0)
@variable(m, 0 <= x14 <= 1, start=0)
@variable(m, 0 <= x15 <= 1, start=0)
@variable(m, 0 <= x16 <= 1, start=0)
@variable(m, 0 <= x17 <= 1, start=0)
@variable(m, 0 <= x18 <= 1, start=0)
@variable(m, 0 <= x19 <= 1, start=0)
@variable(m, 0 <= x20 <= 1, start=0)
@variable(m, 0 <= x21 <= 1, start=0)
@variable(m, 0 <= x22 <= 1, start=0)
@variable(m, 0 <= x23 <= 1, start=0)
@variable(m, 0 <= x24 <= 1, start=0)
@variable(m, 0 <= x25 <= 1, start=0)
@variable(m, 0 <= x26 <= 1, start=0)
@variable(m, 0 <= x27 <= 1, start=0)
@variable(m, 0 <= x28 <= 1, start=0)
@variable(m, 0 <= x29 <= 1, start=0)
@variable(m, 0 <= x30 <= 1, start=0)

@objective(m, Max,  - 1500*x4 + 1000*x6 - 1500*x8 - 1000*x9 - 1000*x10 - 1500*x11 - 2000*x12 - 1500*x13 - 1500*x14
     - 2000*x15 - 2500*x16 + 2000*x17 + 2000*x18 - 2000*x19 - 4000*x22 - 2000*x23 - 2000*x24 - 5000*x25 + 16000*x26
     + 4000*x27 + 2000*x28 + 2000*x30)

@constraint(m, x1 - x17 >= 0)

@constraint(m, x2 - x18 >= 0)

@constraint(m, x3 - x19 >= 0)

@constraint(m, x5 - x20 >= 0)

@constraint(m, x6 - x21 >= 0)

@constraint(m, x7 - x22 >= 0)

@constraint(m, x9 - x23 >= 0)

@constraint(m, x10 - x24 >= 0)

@constraint(m, x11 - x25 >= 0)

@constraint(m, x17 - x26 >= 0)

@constraint(m, x18 - x27 >= 0)

@constraint(m, x20 - x28 >= 0)

@constraint(m, x21 - x29 >= 0)

@constraint(m, x26 - x30 >= 0)

@constraint(m, x2 - x17 >= 0)

@constraint(m, x3 - x18 >= 0)

@constraint(m, x4 - x19 >= 0)

@constraint(m, x6 - x20 >= 0)

@constraint(m, x7 - x21 >= 0)

@constraint(m, x8 - x22 >= 0)

@constraint(m, x10 - x23 >= 0)

@constraint(m, x11 - x24 >= 0)

@constraint(m, x12 - x25 >= 0)

@constraint(m, x18 - x26 >= 0)

@constraint(m, x19 - x27 >= 0)

@constraint(m, x21 - x28 >= 0)

@constraint(m, x22 - x29 >= 0)

@constraint(m, x27 - x30 >= 0)

@constraint(m, x6 - x17 >= 0)

@constraint(m, x7 - x18 >= 0)

@constraint(m, x8 - x19 >= 0)

@constraint(m, x10 - x20 >= 0)

@constraint(m, x11 - x21 >= 0)

@constraint(m, x12 - x22 >= 0)

@constraint(m, x14 - x23 >= 0)

@constraint(m, x15 - x24 >= 0)

@constraint(m, x16 - x25 >= 0)

@constraint(m, x21 - x26 >= 0)

@constraint(m, x22 - x27 >= 0)

@constraint(m, x24 - x28 >= 0)

@constraint(m, x25 - x29 >= 0)

@constraint(m, x29 - x30 >= 0)

@constraint(m, x5 - x17 >= 0)

@constraint(m, x6 - x18 >= 0)

@constraint(m, x7 - x19 >= 0)

@constraint(m, x9 - x20 >= 0)

@constraint(m, x10 - x21 >= 0)

@constraint(m, x11 - x22 >= 0)

@constraint(m, x13 - x23 >= 0)

@constraint(m, x14 - x24 >= 0)

@constraint(m, x15 - x25 >= 0)

@constraint(m, x20 - x26 >= 0)

@constraint(m, x21 - x27 >= 0)

@constraint(m, x23 - x28 >= 0)

@constraint(m, x24 - x29 >= 0)

@constraint(m, x28 - x30 >= 0)
