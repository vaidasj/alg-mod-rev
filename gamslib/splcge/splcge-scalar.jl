#  NLP written by GAMS Convert at 10/11/20 12:51:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         15       15        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       15        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         45       21       24        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.001 <= x1, start=15)
@variable(m, 0.001 <= x2, start=35)
@variable(m, 0.001 <= x3, start=5)
@variable(m, 0.001 <= x4, start=20)
@variable(m, 0.001 <= x5, start=10)
@variable(m, 0.001 <= x6, start=15)
@variable(m, 0.001 <= x7, start=15)
@variable(m, 0.001 <= x8, start=35)
@variable(m, 0.001 <= x9, start=1)
@variable(m, 0.001 <= x10, start=1)
@variable(m, 0.001 <= x11, start=1)
@variable(m, 0.001 <= x12, start=1)
@variable(m, 0.001 <= x13, start=1)
@variable(m, 1 <= x14 <= 1, start=1)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x1)^0.3*$(x2)^0.7))

JuMP.add_NL_constraint(m, :(-(7.5*$(x13) + 7.5*$(x14))/$(x9) + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-(17.5*$(x13) + 17.5*$(x14))/$(x10) + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-1.88988157484231*$(x3)^0.333333333333333*$(x5)^0.666666666666667 + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-1.97962633005252*$(x4)^0.571428571428571*$(x6)^0.428571428571429 + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-0.333333333333333*$(x11)*$(x7)/$(x13) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-0.571428571428571*$(x12)*$(x8)/$(x13) + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-0.666666666666667*$(x11)*$(x7)/$(x14) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-0.428571428571429*$(x12)*$(x8)/$(x14) + $(x6) == 0))

@constraint(m, x1 - x7 == 0)

@constraint(m, x2 - x8 == 0)

@constraint(m, x3 + x4 == 25)

@constraint(m, x5 + x6 == 25)

@constraint(m, x9 - x11 == 0)

@constraint(m, x10 - x12 == 0)
