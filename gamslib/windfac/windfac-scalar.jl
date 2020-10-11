#  MINLP written by GAMS Convert at 10/11/20 12:43:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         14       14        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       12        0        3        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         38       14       24        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= i1 <= 10, integer=true, start=1)
@variable(m, 1 <= i2, integer=true, start=1)
@variable(m, x3, start=1.5)
@variable(m, x4, start=1)
@variable(m, 1 <= i5, integer=true, start=1)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x13, start=0)
@variable(m, x14, start=0)
@variable(m, 0.8 <= x15, start=0.8)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :($(x13)*$(x13) + $(x14)*$(x14)))

@constraint(m,  - 12*i1 + i2 == 0)

JuMP.add_NL_constraint(m, :(-12.5663706143592/$(i2) + $(x3) == 0))

@constraint(m,  - 0.25*i2 + x4 == 0)

@constraint(m,  - x4 + i5 == -1)

JuMP.add_NL_constraint(m, :(sin(0.5*$(x3))*$(i1)*$(x6) - sin(0.5*$(i1)*$(x3)) == 0))

JuMP.add_NL_constraint(m, :(-sin(1.5707963267949*$(i5)/$(x4)) + $(x9) == 0))

JuMP.add_NL_constraint(m, :(-$(x9)*$(x6) + $(x15) == 0))

JuMP.add_NL_constraint(m, :(sin(1.5*$(x3))*$(i1)*$(x7) - sin(1.5*$(i1)*$(x3)) == 0))

JuMP.add_NL_constraint(m, :(-sin(4.71238898038469*$(i5)/$(x4)) + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-$(x10)*$(x7) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(sin(2.5*$(x3))*$(i1)*$(x8) - sin(2.5*$(i1)*$(x3)) == 0))

JuMP.add_NL_constraint(m, :(-sin(7.85398163397448*$(i5)/$(x4)) + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-$(x11)*$(x8) + $(x14) == 0))
