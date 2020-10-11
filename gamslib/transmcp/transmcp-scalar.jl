#  MCP written by GAMS Convert at 10/11/20 12:27:46
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        0       11        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         27       24        3        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=1)
@variable(m, 0 <= x2, start=1)
@variable(m, 0 <= x3, start=1)
@variable(m, 0 <= x4, start=1)
@variable(m, 0 <= x5, start=1)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)

@constraint(m, x1 - x3 >= -0.225)

@constraint(m, x1 - x4 >= -0.0765)

@constraint(m, x1 - x5 >= -0.162)

@constraint(m, x2 - x3 >= -0.225)

@constraint(m, x2 - x4 >= -0.162)

@constraint(m, x2 - x5 >= -0.126)

@constraint(m,  - x6 - x7 - x8 >= -350)

@constraint(m,  - x9 - x10 - x11 >= -600)

JuMP.add_NL_constraint(m, :(-325*(1/$(x3))^1.5 + $(x6) + $(x9) >= 0))

JuMP.add_NL_constraint(m, :(-300*(1/$(x4))^1.2 + $(x7) + $(x10) >= 0))

JuMP.add_NL_constraint(m, :(-275*(1/$(x5))^2 + $(x8) + $(x11) >= 0))
