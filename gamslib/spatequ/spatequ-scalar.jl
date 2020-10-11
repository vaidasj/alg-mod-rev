#  MCP written by GAMS Convert at 10/11/20 13:33:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         30       18       12        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         30       30        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         84       84        0        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=101.000000000004)
@variable(m, x2, start=195.272727272719)
@variable(m, x3, start=63.9999999999913)
@variable(m, x4, start=35.9090909091103)
@variable(m, x5, start=89.9999999999702)
@variable(m, x6, start=154.272727272719)
@variable(m, x7, start=65.4999999999948)
@variable(m, x8, start=120.363636363593)
@variable(m, x9, start=134.49999999997)
@variable(m, x10, start=160.227272727363)
@variable(m, x11, start=55.0000000000011)
@variable(m, x12, start=104.863636363592)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=35.5000000000096)
@variable(m, 0 <= x18, start=74.9090909091256)
@variable(m, 0 <= x19, start=34.999999999969)
@variable(m, 0 <= x20, start=49.4090909091271)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=11)
@variable(m, 0 <= x26, start=11.6363636363603)
@variable(m, 0 <= x27, start=9)
@variable(m, 0 <= x28, start=8.63636363636033)
@variable(m, 0 <= x29, start=10.0000000000036)
@variable(m, 0 <= x30, start=10.636363636364)

@constraint(m,  - x1 - 9*x25 == -200)

@constraint(m,  - x2 - 9*x26 == -300)

@constraint(m,  - x3 - 4*x27 == -100)

@constraint(m,  - x4 - 19*x28 == -200)

@constraint(m,  - x5 - 7*x29 == -160)

@constraint(m,  - x6 - 9*x30 == -250)

@constraint(m,  - x7 + 10.5*x25 == 50)

@constraint(m,  - x8 + 15.5*x26 == 60)

@constraint(m,  - x9 + 20.5*x27 == 50)

@constraint(m,  - x10 + 25.5*x28 == 60)

@constraint(m,  - x11 + 10.5*x29 == 50)

@constraint(m,  - x12 + 15.5*x30 == 60)

@constraint(m,  - x1 + x7 - x13 - x15 + x17 + x21 == 0)

@constraint(m,  - x2 + x8 - x14 - x16 + x18 + x22 == 0)

@constraint(m,  - x3 + x9 + x13 - x17 - x19 + x23 == 0)

@constraint(m,  - x4 + x10 + x14 - x18 - x20 + x24 == 0)

@constraint(m,  - x5 + x11 + x15 + x19 - x21 - x23 == 0)

@constraint(m,  - x6 + x12 + x16 + x20 - x22 - x24 == 0)

@constraint(m, x25 - x27 >= -2)

@constraint(m, x26 - x28 >= -3)

@constraint(m, x25 - x29 >= -2)

@constraint(m, x26 - x30 >= -3)

@constraint(m,  - x25 + x27 >= -2)

@constraint(m,  - x26 + x28 >= -3)

@constraint(m, x27 - x29 >= -1)

@constraint(m, x28 - x30 >= -2)

@constraint(m,  - x25 + x29 >= -2)

@constraint(m,  - x26 + x30 >= -3)

@constraint(m,  - x27 + x29 >= -1)

@constraint(m,  - x28 + x30 >= -2)
