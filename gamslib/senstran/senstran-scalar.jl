#  LP written by GAMS Convert at 10/11/20 12:24:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        1        3        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         19       19        0        0
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

@objective(m, Min, 0.225*x1 + 0.153*x2 + 0.162*x3 + 0.225*x4 + 0.162*x5 + 0.1638*x6)

@constraint(m, x1 + x2 + x3 <= 350)

@constraint(m, x4 + x5 + x6 <= 600)

@constraint(m, x1 + x4 >= 325)

@constraint(m, x2 + x5 >= 300)

@constraint(m, x3 + x6 >= 275)
