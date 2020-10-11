#  MCP written by GAMS Convert at 10/11/20 12:28:43
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        0        6        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         16        5       11        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=65.7933224657568)
@variable(m, 0 <= x2, start=10)
@variable(m, 0 <= x3, start=10)
@variable(m, 0 <= x4, start=10)
@variable(m, 0 <= x5, start=10)
@variable(m, 0 <= x6, start=10)

JuMP.add_NL_constraint(m, :(-5000*$(x1)^(-1.1) + $(x2) + $(x3) + $(x4) + $(x5) + $(x6) >= 0))

JuMP.add_NL_constraint(m, :((0.2*$(x2))^0.833333333333333 - ($(x1) - 0.000181818181818182*$(x1)^2.1*$(x2)) >= -10))

JuMP.add_NL_constraint(m, :((0.2*$(x3))^0.909090909090909 - ($(x1) - 0.000181818181818182*$(x1)^2.1*$(x3)) >= -8))

JuMP.add_NL_constraint(m, :((0.2*$(x4))^1 - ($(x1) - 0.000181818181818182*$(x1)^2.1*$(x4)) >= -6))

JuMP.add_NL_constraint(m, :((0.2*$(x5))^1.11111111111111 - ($(x1) - 0.000181818181818182*$(x1)^2.1*$(x5)) >= -4))

JuMP.add_NL_constraint(m, :((0.2*$(x6))^1.25 - ($(x1) - 0.000181818181818182*$(x1)^2.1*$(x6)) >= -2))
