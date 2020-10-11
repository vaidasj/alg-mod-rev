#  MPEC written by GAMS Convert at 10/11/20 12:51:03
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        2        9        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         12       12        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        113        2      111        0
# 
#  Reformulation has removed 1 variable and 1 equation
#  Cannot handle MPEC


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=7.44154669705633)
@variable(m, 0 <= x2, start=4.09781044734645)
@variable(m, 0 <= x3, start=2.59064374743843)
@variable(m, 0 <= x4, start=0.935385768072125)
@variable(m, 0 <= x5, start=17.9489523419981)
@variable(m, 0 <= x6, start=4.09781044734645)
@variable(m, 0 <= x7, start=1.30472575767983)
@variable(m, 0 <= x8, start=5.59008254355618)
@variable(m, 0 <= x9, start=3.22217945382394)
@variable(m, 0 <= x10, start=1.67709431683909)
@variable(m, x11, start=47.2793507462771)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :($(x10)*$(x11) - 3*$(x10) - 9.23329152870807*$(x10)^2.33333333333333))

JuMP.add_NL_constraint(m, :((10*$(x1))^0.833333333333333 + 0.833333333333333*$(x1)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -5))

JuMP.add_NL_constraint(m, :((10*$(x2))^1 + 0.833333333333333*$(x2)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4) + $(x5) + $(x6)
     + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -3))

JuMP.add_NL_constraint(m, :((10*$(x3))^1.11111111111111 + 0.833333333333333*$(x3)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -8))

JuMP.add_NL_constraint(m, :((10*$(x4))^1.66666666666667 + 0.833333333333333*$(x4)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -5))

JuMP.add_NL_constraint(m, :((10*$(x5))^0.666666666666667 + 0.833333333333333*$(x5)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -1))

JuMP.add_NL_constraint(m, :((10*$(x6))^1 + 0.833333333333333*$(x6)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4) + $(x5) + $(x6)
     + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -3))

JuMP.add_NL_constraint(m, :((10*$(x7))^1.42857142857143 + 0.833333333333333*$(x7)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -7))

JuMP.add_NL_constraint(m, :((10*$(x8))^0.909090909090909 + 0.833333333333333*$(x8)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -4))

JuMP.add_NL_constraint(m, :((10*$(x9))^1.05263157894737 + 0.833333333333333*$(x9)*$(x11)/($(x1) + $(x2) + $(x3) + $(x4)
     + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)) - $(x11) >= -6))

JuMP.add_NL_constraint(m, :(-(5000/($(x1) + $(x2) + $(x3) + $(x4) + $(x5) + $(x6) + $(x7) + $(x8) + $(x9) + $(x10)))^
    0.833333333333333 + $(x11) == 0))
