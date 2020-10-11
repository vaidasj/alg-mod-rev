#  NLP written by GAMS Convert at 10/11/20 12:24:09
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          9        5        3        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          9        9        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         26       17        9        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=30)
@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, 40 <= x4 <= 68, start=68)
@variable(m, x5, start=0)
@variable(m, 56 <= x6 <= 100, start=56)
@variable(m, x7 <= 3000, start=0)
@variable(m, x8, start=0)

@objective(m, Max, x7 + x8)

JuMP.add_NL_constraint(m, :(-($(x1)*$(x2) + $(x5)*$(x4)) + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-$(x1)*$(x3) + $(x8) == 0))

@constraint(m,  - x2 - x5 + x6 == 0)

@constraint(m, x1 - 0.333333333333333*x4 >= 0)

@constraint(m, x1 - 0.5*x4 <= 0)

JuMP.add_NL_constraint(m, :($(x2)*($(x4) - $(x1)) >= 1500))

@constraint(m,  - 0.5*x2 + x3 - x5 == 0)

@constraint(m,  - 0.5*x2 + x5 >= 0)
