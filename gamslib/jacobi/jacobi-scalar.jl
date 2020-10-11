#  MCP written by GAMS Convert at 10/11/20 13:27:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         50       50        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        500      500        0        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)

@constraint(m, x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + x7 + 0.001*x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + x8 + 0.001*x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + x9 + 0.001*x10
     == 1)

@constraint(m, 0.001*x1 + 0.001*x2 + 0.001*x3 + 0.001*x4 + 0.001*x5 + 0.001*x6 + 0.001*x7 + 0.001*x8 + 0.001*x9 + x10
     == 1)
