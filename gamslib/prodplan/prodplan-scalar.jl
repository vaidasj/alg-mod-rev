#  MIP written by GAMS Convert at 10/11/20 13:33:52
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         17        9        0        8        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         25       17        8        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         64       64        0        0
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
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 0 <= b22 <= 1, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)

@objective(m, Min, 5*x1 + 5*x2 + 5*x3 + 5*x4 + 5*x5 + 5*x6 + 5*x7 + 2.5*x8 + 100*x9 + 100*x10 + 100*x11 + 100*x12
     + 100*x13 + 100*x14 + 100*x15 + 100*x16 + 5000*b17 + 5000*b18 + 5000*b19 + 5000*b20 + 5000*b21 + 5000*b22
     + 5000*b23 + 5000*b24)

@constraint(m, x9 - 5600*b17 <= 0)

@constraint(m, x10 - 6800*b18 <= 0)

@constraint(m, x11 - 6400*b19 <= 0)

@constraint(m, x12 - 5600*b20 <= 0)

@constraint(m, x13 - 4800*b21 <= 0)

@constraint(m, x14 - 3600*b22 <= 0)

@constraint(m, x15 - 2400*b23 <= 0)

@constraint(m, x16 - 1200*b24 <= 0)

@constraint(m,  - x1 + x9 == 200)

@constraint(m, x1 - x2 + x10 == 400)

@constraint(m, x2 - x3 + x11 == 800)

@constraint(m, x3 - x4 + x12 == 800)

@constraint(m, x4 - x5 + x13 == 1200)

@constraint(m, x5 - x6 + x14 == 1200)

@constraint(m, x6 - x7 + x15 == 1200)

@constraint(m, x7 - x8 + x16 == 1200)
