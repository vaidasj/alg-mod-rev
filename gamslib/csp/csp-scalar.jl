#  MIP written by GAMS Convert at 10/11/20 13:00:58
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        6        0        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         20        1       19        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         47       47        0        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
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
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)

@objective(m, Min, x1)

@constraint(m, b2 + b3 + b4 == 1)

@constraint(m, b5 + b6 == 1)

@constraint(m, b7 + b8 + b9 == 1)

@constraint(m, b10 + b11 + b12 == 1)

@constraint(m, b13 + b14 + b15 + b16 == 1)

@constraint(m, b17 + b18 + b19 + b20 == 1)

@constraint(m,  - x1 - b2 - b6 - b8 - b10 - b14 - b20 <= -6)

@constraint(m,  - x1 - b4 - b5 - b7 - b12 - b13 - b19 <= -6)

@constraint(m,  - x1 - b3 - b5 - b9 - b11 - b15 - b17 <= -6)

@constraint(m,  - x1 - b4 - b5 - b7 - b12 - b16 - b18 <= -6)
