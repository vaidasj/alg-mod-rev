#  MCP written by GAMS Convert at 10/11/20 12:27:55
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        6        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         20       10       10        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=1)
@variable(m, x2, start=1)
@variable(m, x3, start=1)
@variable(m, x4, start=1)
@variable(m, x5, start=1)
@variable(m, x6, start=1)

JuMP.add_NL_constraint(m, :($(x1)*$(x2) == 1))

JuMP.add_NL_constraint(m, :($(x3)/$(x1)/$(x4) == 4.8))

JuMP.add_NL_constraint(m, :($(x5)/$(x2)/$(x6) == 0.98))

JuMP.add_NL_constraint(m, :($(x6)*$(x4) == 1))

@constraint(m, x1 - x2 + 1E-7*x3 - 1E-5*x5 == 0)

@constraint(m, 2*x1 - 2*x2 + 1E-7*x3 - 0.01*x4 - 1E-5*x5 + 0.01*x6 == 0)
