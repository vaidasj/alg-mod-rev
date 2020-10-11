#  MIP written by GAMS Convert at 10/11/20 12:42:04
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        4        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          8        7        1        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         15       15        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, -10 <= x1 <= 10, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, x5, start=0)
@variable(m, -5 <= x7 <= 2, start=0)
@variable(m, -2 <= x8 <= 5, start=0)

@objective(m, Min, x5 + x8)

@constraint(m, x1 - x2 + x3 == 0)

@constraint(m, x2 - 10*b4 <= 0)

@constraint(m, x3 + 10*b4 <= 10)

@constraint(m, x3 + x5 == 0)

@constraint(m, x1 - x7 + x8 == 0)
