#  MIP written by GAMS Convert at 10/11/20 12:26:59
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          4        0        1        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        1        2        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          8        8        0        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)

@objective(m, Min, x1)

@constraint(m, x1 >= 0)

@constraint(m,  - x1 + 0.23947*b2 + 0.75835*b3 <= -0.654290131004367)

@constraint(m, b2 + b3 <= 1)

@constraint(m,  - b2 - b3 <= -1)
