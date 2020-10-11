#  MIP written by GAMS Convert at 10/11/20 12:29:52
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        1        1        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      1        0        0        1        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          8        8        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 2 <= i1 <= 4, integer=true, start=2)
@variable(m, 3 <= i2 <= 3, integer=true, start=3)
@variable(m, 2 <= i3 <= 4, integer=true, start=2)
@variable(m, 2 <= i4 <= 3, integer=true, start=2)

@objective(m, Min, 1000*i1 + 100*i2 + 10*i3 + i4)

@constraint(m, i1 + i3 + i4 >= 7)
