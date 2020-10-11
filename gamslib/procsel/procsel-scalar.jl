#  MINLP written by GAMS Convert at 10/11/20 12:26:25
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        5        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11        8        3        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         26       24        2        0
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
@variable(m, 0 <= x7 <= 1, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)

@objective(m, Max,  - 1.8*x1 - 1.8*x2 - x3 - 1.2*x4 - 7*x5 + 11*x7 - 3.5*b8 - b9 - 1.5*b10)

@constraint(m,  - 0.9*x6 + x7 == 0)

JuMP.add_NL_constraint(m, :(exp($(x3)) - $(x1) == 1))

JuMP.add_NL_constraint(m, :(exp(0.833333333333333*$(x4)) - $(x2) == 1))

@constraint(m,  - x3 - x4 - x5 + x6 == 0)

@constraint(m, x7 - 2*b8 <= 0)

@constraint(m, x3 - 4*b9 <= 0)

@constraint(m, x4 - 5*b10 <= 0)
