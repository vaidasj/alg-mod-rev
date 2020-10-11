#  LP written by GAMS Convert at 10/11/20 12:15:38
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         16       11        5        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         73       73        0        0
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

@objective(m, Min, 10*x6 + 10*x7 + 10*x8 + 10*x9 + 10*x10 + 30*x11 + 30*x12 + 30*x13 + 30*x14 + 30*x15 + 100*x16
     + 100*x17 + 100*x18 + 100*x19 + 200*x20)

@constraint(m,  - x1 + x6 - x11 == -90)

@constraint(m,  - x2 - x6 + x7 + x11 - x12 == -200)

@constraint(m,  - x3 - x7 + x8 + x12 - x13 == -300)

@constraint(m,  - x4 - x8 + x9 + x13 - x14 == -400)

@constraint(m,  - x5 - x9 + x10 + x14 - x15 == -200)

@constraint(m, x16 - x21 + x26 == 20)

@constraint(m,  - x16 + x17 - x22 + x27 == 0)

@constraint(m,  - x17 + x18 - x23 + x28 == 0)

@constraint(m,  - x18 + x19 - x24 + x29 == 0)

@constraint(m,  - x19 + x20 - x25 + x30 == 0)

@constraint(m,  - 0.125*x1 + x16 - 1.16666666666667*x21 >= 0)

@constraint(m,  - 0.125*x2 + x17 - 1.16666666666667*x22 >= 0)

@constraint(m,  - 0.125*x3 + x18 - 1.16666666666667*x23 >= 0)

@constraint(m,  - 0.125*x4 + x19 - 1.16666666666667*x24 >= 0)

@constraint(m,  - 0.125*x5 + x20 - 1.16666666666667*x25 >= 0)
