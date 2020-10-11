#  MINLP written by GAMS Convert at 10/11/20 12:41:22
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        2        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          9        5        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 12 <= i1 <= 60, integer=true, start=24)
@variable(m, 12 <= i2 <= 60, integer=true, start=24)
@variable(m, 12 <= i3 <= 60, integer=true, start=24)
@variable(m, 12 <= i4 <= 60, integer=true, start=24)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :((6.931 - $(i1)*$(i2)/($(i3)*$(i4)))^2 + 1))

@constraint(m,  - i3 + i4 >= 0)

@constraint(m, i1 - i2 >= 0)
