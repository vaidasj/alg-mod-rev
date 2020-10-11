#  NLP written by GAMS Convert at 10/11/20 13:34:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13        4        9        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         43       40        3        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.0001 <= x1, start=0.0001)
@variable(m, 0.0001 <= x2, start=0.0001)
@variable(m, 0.0001 <= x3, start=0.0001)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)

@objective(m, Max, 0.2*x4 + 0.5*x5 + 0.3*x6 - 0.2*x7 - 0.5*x8 - 0.3*x9)

JuMP.add_NL_constraint(m, :(-$(x1)^0.5 + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-$(x2)^0.5 + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-$(x3)^0.5 + $(x6) == 0))

@constraint(m,  - 0.1*x1 + x7 >= 0)

@constraint(m,  - 0.2*x2 + x8 >= 0)

@constraint(m,  - 0.3*x3 + x9 >= 0)

@constraint(m,  - 0.1*x1 + 0.1*x2 + x7 - x8 >= 0)

@constraint(m,  - 0.1*x1 + 0.1*x3 + x7 - x9 >= 0)

@constraint(m, 0.2*x1 - 0.2*x2 - x7 + x8 >= 0)

@constraint(m,  - 0.2*x2 + 0.2*x3 + x8 - x9 >= 0)

@constraint(m, 0.3*x1 - 0.3*x3 - x7 + x9 >= 0)

@constraint(m, 0.3*x2 - 0.3*x3 - x8 + x9 >= 0)
