#  MIP written by GAMS Convert at 10/11/20 12:16:58
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         25        2        9       14        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         19       10        9        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         68       68        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)

@objective(m, Min, 61.15*x2 + 68.099*x3 + 66.049*x4 + 64.099*x5 + 62.119*x6 + 62.19*x7 + 72.488*x8 + 70.15*x9
     + 68.15*x10 + 3855.84*b11 + 125804.84*b12 + 269304.84*b13 + 464304.84*b14 + 761304.840000001*b15 + 13456*b16
     + 6583.98*b17 + 84000*b19)

@constraint(m,  - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 == -239600.48)

@constraint(m, x2 >= 0)

@constraint(m, x3 - 22000*b12 >= 0)

@constraint(m, x4 - 70000*b13 >= 0)

@constraint(m, x5 - 100000*b14 >= 0)

@constraint(m, x6 - 150000*b15 >= 0)

@constraint(m, x7 >= 0)

@constraint(m, x8 >= 0)

@constraint(m, x9 >= 0)

@constraint(m, x10 - 42000*b19 >= 0)

@constraint(m, x2 - 33000*b11 <= 0)

@constraint(m, x3 - 70000*b12 <= 0)

@constraint(m, x4 - 100000*b13 <= 0)

@constraint(m, x5 - 150000*b14 <= 0)

@constraint(m, x6 - 160000*b15 <= 0)

@constraint(m, x7 - 165600*b16 <= 0)

@constraint(m, x8 - 12000*b17 <= 0)

@constraint(m, x9 - 42000*b18 <= 0)

@constraint(m, x10 - 77000*b19 <= 0)

@constraint(m, b11 <= 1)

@constraint(m, b12 + b13 + b14 + b15 <= 1)

@constraint(m, b16 <= 1)

@constraint(m, b17 <= 1)

@constraint(m, b18 + b19 <= 1)
