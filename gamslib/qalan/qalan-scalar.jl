#  MIQCP written by GAMS Convert at 10/11/20 12:52:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        3        0        5        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          9        5        4        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         24       21        3        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0.302884615384616)
@variable(m, 0 <= x2, start=0.0865384615384613)
@variable(m, 0 <= x3, start=0.504807692307692)
@variable(m, 0 <= x4, start=0.105769230769231)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :($(x1)*(4*$(x1) + 3*$(x2) - $(x3)) + $(x2)*(3*$(x1) + 6*$(x2) + $(x3)) + $(x3)*
    ($(x2) - $(x1) + 10*$(x3))))

@constraint(m, x1 + x2 + x3 + x4 == 1)

@constraint(m, 8*x1 + 9*x2 + 12*x3 + 7*x4 == 10)

@constraint(m, x1 - b6 <= 0)

@constraint(m, x2 - b7 <= 0)

@constraint(m, x3 - b8 <= 0)

@constraint(m, x4 - b9 <= 0)

@constraint(m, b6 + b7 + b8 + b9 <= 3)
