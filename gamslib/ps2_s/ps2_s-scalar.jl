#  NLP written by GAMS Convert at 10/11/20 13:34:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        3        4        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         21       19        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.0001 <= x1, start=0.0001)
@variable(m, 0.0001 <= x2, start=0.0001)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)

@objective(m, Max, 0.2*x3 + 0.8*x4 - 0.2*x5 - 0.8*x6)

JuMP.add_NL_constraint(m, :(-$(x1)^0.5 + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-$(x2)^0.5 + $(x4) == 0))

@constraint(m,  - 0.2*x1 + x5 >= 0)

@constraint(m,  - 0.3*x2 + x6 >= 0)

@constraint(m,  - 0.2*x1 + 0.2*x2 + x5 - x6 >= 0)

@constraint(m, 0.3*x1 - 0.3*x2 - x5 + x6 >= 0)
