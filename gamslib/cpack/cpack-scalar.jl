#  QCP written by GAMS Convert at 10/11/20 14:04:05
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         15        0       15        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         65        0       65        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.05 <= x1 <= 0.4, start=0.05)
@variable(m, -1 <= x2 <= 1, start=-0.1)
@variable(m, -1 <= x3 <= 1, start=0)
@variable(m, -1 <= x4 <= 1, start=0.1)
@variable(m, -1 <= x5 <= 1, start=0.2)
@variable(m, -1 <= x6 <= 1, start=0.3)
@variable(m, -1 <= x7 <= 1, start=-0.1)
@variable(m, -1 <= x8 <= 1, start=0)
@variable(m, -1 <= x9 <= 1, start=0.1)
@variable(m, -1 <= x10 <= 1, start=0.2)
@variable(m, -1 <= x11 <= 1, start=0.3)

@objective(m, Max, x1)

JuMP.add_NL_constraint(m, :((1 - $(x1))^2 - ($(x2)^2 + $(x7)^2) >= 0))

JuMP.add_NL_constraint(m, :((1 - $(x1))^2 - ($(x3)^2 + $(x8)^2) >= 0))

JuMP.add_NL_constraint(m, :((1 - $(x1))^2 - ($(x4)^2 + $(x9)^2) >= 0))

JuMP.add_NL_constraint(m, :((1 - $(x1))^2 - ($(x5)^2 + $(x10)^2) >= 0))

JuMP.add_NL_constraint(m, :((1 - $(x1))^2 - ($(x6)^2 + $(x11)^2) >= 0))

JuMP.add_NL_constraint(m, :(($(x2) - $(x3))^2 + ($(x7) - $(x8))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x2) - $(x4))^2 + ($(x7) - $(x9))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x2) - $(x5))^2 + ($(x7) - $(x10))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x2) - $(x6))^2 + ($(x7) - $(x11))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x4))^2 + ($(x8) - $(x9))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x5))^2 + ($(x8) - $(x10))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x3) - $(x6))^2 + ($(x8) - $(x11))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x4) - $(x5))^2 + ($(x9) - $(x10))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x4) - $(x6))^2 + ($(x9) - $(x11))^2 - 4*$(x1)^2 >= 0))

JuMP.add_NL_constraint(m, :(($(x5) - $(x6))^2 + ($(x10) - $(x11))^2 - 4*$(x1)^2 >= 0))
