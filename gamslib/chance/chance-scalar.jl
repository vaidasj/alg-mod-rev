#  NLP written by GAMS Convert at 10/11/20 12:17:42
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          4        2        2        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         17       13        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x2, start=0.685244910300343)
@variable(m, 0 <= x3, start=0.012699052610361)
@variable(m, 0 <= x4, start=0.302056037089297)
@variable(m, 0 <= x5, start=0)

@objective(m, Min, 24.55*x2 + 26.75*x3 + 39*x4 + 40.5*x5)

@constraint(m, x2 + x3 + x4 + x5 == 1)

JuMP.add_NL_constraint(m, :(12*$(x2) - 1.645*sqrt(0.28*$(x2)^2 + 0.19*$(x3)^2 + 20.5*$(x4)^2 + 0.62*$(x5)^2) + 11.9*
    $(x3) + 41.8*$(x4) + 52.1*$(x5) >= 21))

@constraint(m, 2.3*x2 + 5.6*x3 + 11.1*x4 + 1.3*x5 >= 5)
