#  DNLP written by GAMS Convert at 10/11/20 12:50:33
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10       10        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         12       12        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         43       17       26        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, -10 <= x8 <= 5, start=2)
@variable(m, -10 <= x9 <= 5, start=2)
@variable(m, -10 <= x10 <= 5, start=2)
@variable(m, -10 <= x11 <= 5, start=2)
@variable(m, -10 <= x12 <= 5, start=2)

@objective(m, Min, 2*x6 + x7)

JuMP.add_NL_constraint(m, :(-($(x8)^2 + $(x9)^2 + $(x10)^2 + $(x11)^2 + $(x12)^2) + $(x7) == 0))

@constraint(m,  - x3 - x5 + x6 == 0)

JuMP.add_NL_constraint(m, :(-(($(x8)^2 - $(x9))^2 + $(x10)^2 + 2*$(x11)^2 + ($(x12) - $(x9))^2) + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-abs(sin(4*mod($(x2),3.14159265358979))) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-(($(x8) + $(x9) - $(x10) + $(x11) - $(x12))^2 + 2*($(x9) - $(x8) + $(x10) - $(x11) + $(x12)
    )^2) + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-abs(sin(3*mod($(x4),3.14159265358979))) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(3*$(x9)^2 + $(x10)^2 - 2*$(x11)^2 + $(x12)^2 + $(x8) == 0))

@constraint(m, x8 + 4*x9 - x10 + x11 - 3*x12 == 0)

JuMP.add_NL_constraint(m, :($(x8)^2 - $(x10)^2 + 2*$(x9)^2 - $(x11)^2 - $(x12)^2 == 0))
