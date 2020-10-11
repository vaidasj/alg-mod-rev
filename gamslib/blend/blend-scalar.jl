#  LP written by GAMS Convert at 10/11/20 12:15:21
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        5        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         46       46        0        0
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
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)

@objective(m, Min, 4.1*x1 + 4.3*x2 + 5.8*x3 + 6*x4 + 7.6*x5 + 7.5*x6 + 7.3*x7 + 6.9*x8 + 7.3*x9)

@constraint(m, 10*x1 + 10*x2 + 40*x3 + 60*x4 + 30*x5 + 30*x6 + 30*x7 + 50*x8 + 20*x9 == 30)

@constraint(m, 10*x1 + 30*x2 + 50*x3 + 30*x4 + 30*x5 + 40*x6 + 20*x7 + 40*x8 + 30*x9 == 30)

@constraint(m, 80*x1 + 60*x2 + 10*x3 + 10*x4 + 40*x5 + 30*x6 + 50*x7 + 10*x8 + 50*x9 == 40)

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 == 1)
