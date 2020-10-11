#  MIP written by GAMS Convert at 10/11/20 14:03:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       17        0       14        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         39       25       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         89       89        0        0
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
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 0 <= b22 <= 1, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, x30, start=0)
@variable(m, x31, start=0)
@variable(m, x32, start=0)
@variable(m, x33, start=0)
@variable(m, x34, start=0)
@variable(m, x35, start=0)
@variable(m, x36, start=0)
@variable(m, x37, start=0)
@variable(m, x38, start=0)
@variable(m, x39, start=0)

@objective(m, Min, x35 + x36 + x37 + x38 + x39)

@constraint(m, x1 <= 0)

@constraint(m, x2 - 33000*b16 <= 0)

@constraint(m, x3 <= 0)

@constraint(m, x4 - 48000*b18 <= 0)

@constraint(m, x5 - 30000*b19 <= 0)

@constraint(m, x6 - 50000*b20 <= 0)

@constraint(m, x7 - 10000*b21 <= 0)

@constraint(m, x8 <= 0)

@constraint(m, x9 - 165600*b23 <= 0)

@constraint(m, x10 <= 0)

@constraint(m, x11 - 12000*b25 <= 0)

@constraint(m, x12 <= 0)

@constraint(m, x13 - 42000*b27 <= 0)

@constraint(m, x14 - 35000*b28 <= 0)

@constraint(m, b15 + b16 == 1)

@constraint(m, b17 + b18 + b19 + b20 + b21 == 1)

@constraint(m, b22 + b23 == 1)

@constraint(m, b24 + b25 == 1)

@constraint(m, b26 + b27 + b28 == 1)

@constraint(m,  - x2 + x30 == 0)

@constraint(m,  - x4 - x5 - x6 - x7 - 22000*b18 - 70000*b19 - 100000*b20 - 150000*b21 + x31 == 0)

@constraint(m,  - x9 + x32 == 0)

@constraint(m,  - x11 + x33 == 0)

@constraint(m,  - x13 - x14 - 42000*b28 + x34 == 0)

@constraint(m,  - x30 - x31 - x32 - x33 - x34 == -239600.48)

@constraint(m,  - 61.15*x2 - 3855.84*b16 + x35 == 0)

@constraint(m,  - 68.099*x4 - 66.049*x5 - 64.099*x6 - 62.119*x7 - 1623982.84*b18 - 4892734.84*b19 - 6874204.84*b20
     - 10079154.84*b21 + x36 == 0)

@constraint(m,  - 62.19*x9 - 13456*b23 + x37 == 0)

@constraint(m,  - 72.488*x11 - 6583.98*b25 + x38 == 0)

@constraint(m,  - 70.15*x13 - 68.15*x14 - 2946300*b28 + x39 == 0)
