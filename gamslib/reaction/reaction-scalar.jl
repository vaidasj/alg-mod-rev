#  MIP written by GAMS Convert at 10/11/20 12:27:07
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23        1       22        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         35        1       34        0        0        0        0        0
#  FX     15        0       15        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         79       79        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
@variable(m, 1 <= b2 <= 1, binary=true, start=1)
@variable(m, 1 <= b3 <= 1, binary=true, start=1)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 1 <= b5 <= 1, binary=true, start=1)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 1 <= b10 <= 1, binary=true, start=1)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 1 <= b12 <= 1, binary=true, start=1)
@variable(m, 1 <= b13 <= 1, binary=true, start=1)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 0, binary=true, start=0)
@variable(m, 1 <= b17 <= 1, binary=true, start=1)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 0, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 1 <= b22 <= 1, binary=true, start=1)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 1 <= b25 <= 1, binary=true, start=1)
@variable(m, 1 <= b26 <= 1, binary=true, start=1)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 1 <= b28 <= 1, binary=true, start=1)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 1 <= b31 <= 1, binary=true, start=1)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 1 <= b33 <= 1, binary=true, start=1)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)

@objective(m, Min, b6)

@constraint(m,  - b1 - b2 - b3 + b4 >= -2)

@constraint(m,  - b4 - b5 + b6 >= -1)

@constraint(m,  - b4 - b5 + b7 >= -1)

@constraint(m, b3 - b4 - b5 >= -1)

@constraint(m,  - b8 - b9 - b10 + b11 >= -2)

@constraint(m, b6 - b11 - b12 - b13 >= -2)

@constraint(m,  - b5 - b9 - b10 - b14 + b15 >= -3)

@constraint(m, b6 - b15 - b16 - b17 >= -2)

@constraint(m, b6 - b12 - b18 - b19 >= -2)

@constraint(m,  - b12 - b18 - b19 + b20 >= -2)

@constraint(m, b9 - b21 - b22 >= -1)

@constraint(m,  - b9 - b23 + b24 >= -1)

@constraint(m,  - b17 + b18 - b24 >= -1)

@constraint(m, b21 - b25 - b26 >= -1)

@constraint(m,  - b25 - b26 + b27 >= -1)

@constraint(m,  - b3 + b14 - b28 - b29 >= -2)

@constraint(m,  - b12 - b30 - b31 + b32 >= -2)

@constraint(m, b8 - b12 - b30 - b31 >= -2)

@constraint(m,  - b25 + b30 - b33 >= -1)

@constraint(m, b13 - b25 - b33 >= -1)

@constraint(m, b1 - b3 - b34 >= -1)

@constraint(m,  - b14 - b28 + b34 >= -1)
