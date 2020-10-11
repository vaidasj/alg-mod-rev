#  LP written by GAMS Convert at 10/11/20 12:15:27
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         13       13        0        0
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

@objective(m, Max, 12*x1 + 20*x2 + 18*x3 + 40*x4)

@constraint(m, 4*x1 + 9*x2 + 7*x3 + 10*x4 <= 6000)

@constraint(m, x1 + x2 + 3*x3 + 40*x4 <= 4000)
