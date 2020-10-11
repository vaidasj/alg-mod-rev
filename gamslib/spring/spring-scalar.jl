#  MINLP written by GAMS Convert at 10/11/20 12:41:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          9        6        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         18        6       11        1        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         44       30       14        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0.414 <= x1, start=2.67695454545455)
@variable(m, 0.207 <= x2, start=0.323045454545455)
@variable(m, 0.00178571428571429 <= x3 <= 0.02, start=0.00178571428571429)
@variable(m, 1 <= i4, integer=true, start=1)
@variable(m, 1.1 <= x5, start=8.28661882650908)
@variable(m, x6, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b8 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b9 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b10 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b11 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b12 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b13 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b14 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b15 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b16 <= 1, binary=true, start=0.0909090909090909)
@variable(m, 0 <= b17 <= 1, binary=true, start=0.0909090909090909)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :((3.14159265358979 + 1.5707963267949*$(i4))*$(x1)*$(x2)^2))

JuMP.add_NL_constraint(m, :(-$(x1)/$(x2) + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-((-1 + 4*$(x5))/(-4 + 4*$(x5)) + 0.615/$(x5)) + $(x6) == 0))

JuMP.add_NL_constraint(m, :(2546.47908947033*$(x6)*$(x5)/$(x2)^2 <= 189000))

JuMP.add_NL_constraint(m, :(-6.95652173913044e-7*$(x5)^3*$(i4)/$(x2) + $(x3) == 0))

JuMP.add_NL_constraint(m, :((2.1 + 1.05*$(i4))*$(x2) + 1000*$(x3) <= 14))

@constraint(m, x1 + x2 <= 3)

@constraint(m, x2 - 0.207*b7 - 0.225*b8 - 0.244*b9 - 0.263*b10 - 0.283*b11 - 0.307*b12 - 0.331*b13 - 0.362*b14
     - 0.394*b15 - 0.4375*b16 - 0.5*b17 == 0)

@constraint(m, b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 + b17 == 1)
