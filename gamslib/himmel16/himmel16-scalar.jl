#  NLP written by GAMS Convert at 10/11/20 12:18:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         22        7        0       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         19       19        0        0        0        0        0        0
#  FX      3        3        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         97       13       84        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 0, start=0)
@variable(m, x2, start=0.5)
@variable(m, x3, start=0.5)
@variable(m, x4, start=0.5)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, 0 <= x7 <= 0, start=0)
@variable(m, 0 <= x8 <= 0, start=0)
@variable(m, x9, start=0.4)
@variable(m, x10, start=0.8)
@variable(m, x11, start=0.8)
@variable(m, x12, start=0.4)
@variable(m, x13, start=0)
@variable(m, x14, start=0)
@variable(m, x15, start=0)
@variable(m, x16, start=0)
@variable(m, x17, start=0)
@variable(m, x18, start=0)

@objective(m, Max, x13 + x14 + x15 + x16 + x17 + x18)

JuMP.add_NL_constraint(m, :(($(x1) - $(x2))^2 + ($(x7) - $(x8))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x1) - $(x3))^2 + ($(x7) - $(x9))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x1) - $(x4))^2 + ($(x7) - $(x10))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x1) - $(x5))^2 + ($(x7) - $(x11))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x1) - $(x6))^2 + ($(x7) - $(x12))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x2) - $(x3))^2 + ($(x8) - $(x9))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x2) - $(x4))^2 + ($(x8) - $(x10))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x2) - $(x5))^2 + ($(x8) - $(x11))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x2) - $(x6))^2 + ($(x8) - $(x12))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x3) - $(x4))^2 + ($(x9) - $(x10))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x3) - $(x5))^2 + ($(x9) - $(x11))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x3) - $(x6))^2 + ($(x9) - $(x12))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x4) - $(x5))^2 + ($(x10) - $(x11))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x4) - $(x6))^2 + ($(x10) - $(x12))^2 <= 1))

JuMP.add_NL_constraint(m, :(($(x5) - $(x6))^2 + ($(x11) - $(x12))^2 <= 1))

JuMP.add_NL_constraint(m, :(-0.5*($(x1)*$(x8) - $(x7)*$(x2)) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-0.5*($(x2)*$(x9) - $(x8)*$(x3)) + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-0.5*($(x3)*$(x10) - $(x9)*$(x4)) + $(x15) == 0))

JuMP.add_NL_constraint(m, :(-0.5*($(x4)*$(x11) - $(x10)*$(x5)) + $(x16) == 0))

JuMP.add_NL_constraint(m, :(-0.5*($(x5)*$(x12) - $(x11)*$(x6)) + $(x17) == 0))

JuMP.add_NL_constraint(m, :(-0.5*($(x6)*$(x7) - $(x12)*$(x1)) + $(x18) == 0))
