#  MIP written by GAMS Convert at 10/11/20 14:04:14
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24        9        0       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         17        1       16        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         97       97        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)

@objective(m, Min, 3*b1 + 4*b2 + 2*b3 + b4 + 3*b5 + 4*b6 + b7 + 2*b8 + 3*b9 + 2*b10 + b11 + 4*b12 + 4*b13 + 2*b14
     + 3*b15 + b16)

@constraint(m, b1 + b2 + b3 + b4 == 1)

@constraint(m, b5 + b6 + b7 + b8 == 1)

@constraint(m, b9 + b10 + b11 + b12 == 1)

@constraint(m, b13 + b14 + b15 + b16 == 1)

@constraint(m, b1 + b5 + b9 + b13 == 1)

@constraint(m, b2 + b6 + b10 + b14 == 1)

@constraint(m, b3 + b7 + b11 + b15 == 1)

@constraint(m, b4 + b8 + b12 + b16 == 1)

@constraint(m, b2 + b5 + b13 <= 1)

@constraint(m, b6 + b10 + b14 <= 1)

@constraint(m, b1 + b2 + b7 <= 1)

@constraint(m, b1 + b2 + b3 + b16 <= 1)

@constraint(m, b6 <= 1)

@constraint(m, b5 + b6 + b8 <= 1)

@constraint(m, b4 + b5 + b6 + b16 <= 1)

@constraint(m, b1 + b5 + b12 + b13 <= 1)

@constraint(m, b6 + b9 + b12 + b14 <= 1)

@constraint(m, b3 + b7 + b9 + b10 + b12 <= 1)

@constraint(m, b4 + b8 + b16 <= 1)

@constraint(m, b5 <= 1)

@constraint(m, b6 + b13 + b15 <= 1)

@constraint(m, b3 + b7 + b11 + b13 <= 1)

@constraint(m, b13 + b14 + b15 <= 1)
