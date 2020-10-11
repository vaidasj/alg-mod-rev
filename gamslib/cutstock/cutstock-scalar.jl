#  MIP written by GAMS Convert at 10/11/20 12:54:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        1        4        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          9        9        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= i1 <= 1313, integer=true, start=48.5)
@variable(m, 0 <= i2 <= 1313, integer=true, start=305)
@variable(m, 0 <= i3 <= 1313, integer=true, start=131.666666666667)
@variable(m, 0 <= i4 <= 1313, integer=true, start=30.1428571428571)

@objective(m, Min, i1 + i2 + i3 + i4)

@constraint(m, 2*i1 >= 97)

@constraint(m, 2*i2 >= 610)

@constraint(m, 3*i3 >= 395)

@constraint(m, 7*i4 >= 211)
