#  NLP written by GAMS Convert at 10/11/20 12:41:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13       10        1        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         14       14        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         41       13       28        0
#  
#  Warning: This is a scaled version of the original model
#  =======================================================
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1 <= 16, start=6)
@variable(m, 1 <= x2 <= 16, start=5)
@variable(m, 1 <= x3 <= 16, start=6)
@variable(m, 1 <= x4 <= 16, start=3)
@variable(m, 1 <= x6 <= 1000, start=1000)
@variable(m, 0.0001 <= x7, start=1.6)
@variable(m, 0.0001 <= x8, start=0.3)
@variable(m, 1 <= x9, start=1)
@variable(m, x10 <= 50, start=50)
@variable(m, 100 <= x11, start=600)
@variable(m, 1 <= x12, start=1)
@variable(m, 0.0001 <= x13, start=0.0001)
@variable(m, 0.01 <= x14, start=0.01)

@objective(m, Min, x7 + x8)

JuMP.add_NL_constraint(m, :(-1.42857142857143*$(x4)*$(x6) + 10000*$(x8) == 0))

JuMP.add_NL_constraint(m, :(10*$(x7)*$(x9) - 0.00968946146259369*($(x1)^4 - $(x2)^4)*$(x3) == 0))

JuMP.add_NL_constraint(m, :(143.3076*$(x10)*$(x4) - 10000*$(x7) == 0))

JuMP.add_NL_constraint(m, :(3.14159265358979*(0.001*$(x9))^3*$(x6) - 6e-6*$(x3)*$(x4)*$(x13) == 0))

JuMP.add_NL_constraint(m, :(101000*$(x12)*$(x13) - 1.5707963267949*$(x6)*$(x14) == 0))

JuMP.add_NL_constraint(m, :(log10(0.8 + 8.112*$(x3)) - 10964781961.4319*$(x11)^(-3.55) == 0))

@constraint(m,  - 0.5*x10 + x11 == 560)

@constraint(m, x1 - x2 >= 0)

JuMP.add_NL_constraint(m, :(0.0307*$(x4)^2 - 0.3864*(0.00628318530717959*$(x1)*$(x9))^2*$(x6) <= 0))

@constraint(m, 101000*x12 - 15707.963267949*x14 <= 0)

JuMP.add_NL_constraint(m, :(-(log($(x1)) - log($(x2))) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-($(x1)^2 - $(x2)^2) + $(x14) == 0))
