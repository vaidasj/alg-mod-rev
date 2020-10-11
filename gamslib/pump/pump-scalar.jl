#  MINLP written by GAMS Convert at 10/11/20 12:41:33
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         35       14        0       21        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         25       16        3        6        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         94       58       36        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 80, start=80)
@variable(m, 0 <= x2 <= 25, start=25)
@variable(m, 0 <= x3 <= 45, start=45)
@variable(m, 0 <= x4 <= 2950, start=2950)
@variable(m, 0 <= x5 <= 2950, start=2950)
@variable(m, 0 <= x6 <= 2950, start=2950)
@variable(m, 0 <= x7 <= 400, start=400)
@variable(m, 0 <= x8 <= 400, start=400)
@variable(m, 0 <= x9 <= 400, start=400)
@variable(m, 0 <= x10 <= 350, start=350)
@variable(m, 0 <= x11 <= 350, start=350)
@variable(m, 0 <= x12 <= 350, start=350)
@variable(m, 0 <= x13 <= 1, start=0.33)
@variable(m, 0 <= x14 <= 1, start=0.33)
@variable(m, 0 <= x15 <= 1, start=0.33)
@variable(m, 0 <= i16 <= 3, integer=true, start=3)
@variable(m, 0 <= i17 <= 3, integer=true, start=3)
@variable(m, 0 <= i18 <= 3, integer=true, start=3)
@variable(m, 0 <= i19 <= 3, integer=true, start=3)
@variable(m, 0 <= i20 <= 3, integer=true, start=3)
@variable(m, 0 <= i21 <= 3, integer=true, start=3)
@variable(m, 0 <= b22 <= 1, binary=true, start=1)
@variable(m, 0 <= b23 <= 1, binary=true, start=1)
@variable(m, 0 <= b24 <= 1, binary=true, start=1)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :((6329.03 + 1800*$(x1))*$(i16)*$(i19)*$(b22) + (2489.31 + 1800*$(x2))*$(i17)*
    $(i20)*$(b23) + (3270.27 + 1800*$(x3))*$(i18)*$(i21)*$(b24)))

JuMP.add_NL_constraint(m, :(-(19.9*(0.000338983050847458*$(x4))^3 + 0.161*(0.000338983050847458*$(x4))^2*$(x10) - 
    1.90169491525424e-7*$(x10)^2*$(x4)) + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-(1.21*(0.000338983050847458*$(x5))^3 + 0.0644*(0.000338983050847458*$(x5))^2*$(x11) - 
    1.91186440677966e-7*$(x11)^2*$(x5)) + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-(6.52*(0.000338983050847458*$(x6))^3 + 0.102*(0.000338983050847458*$(x6))^2*$(x12) - 
    7.86440677966102e-8*$(x12)^2*$(x6)) + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-(0.000235932203389831*$(x4)*$(x10) + 629*(0.000338983050847458*$(x4))^2 - 0.0116*$(x10)^2)
     + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-(0.001*$(x5)*$(x11) + 215*(0.000338983050847458*$(x5))^2 - 0.115*$(x11)^2) + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-(0.000179661016949153*$(x6)*$(x12) + 361*(0.000338983050847458*$(x6))^2 - 0.00946*$(x12)^2)
     + $(x9) == 0))

@constraint(m, x13 + x14 + x15 == 1)

JuMP.add_NL_constraint(m, :(-0.00285714285714286*$(x10)*$(i16) + $(x13) == 0))

JuMP.add_NL_constraint(m, :(-0.00285714285714286*$(x11)*$(i17) + $(x14) == 0))

JuMP.add_NL_constraint(m, :(-0.00285714285714286*$(x12)*$(i18) + $(x15) == 0))

JuMP.add_NL_constraint(m, :(-0.0025*$(x7)*$(i19) + $(b22) == 0))

JuMP.add_NL_constraint(m, :(-0.0025*$(x8)*$(i20) + $(b23) == 0))

JuMP.add_NL_constraint(m, :(-0.0025*$(x9)*$(i21) + $(b24) == 0))

@constraint(m, 0.000338983050847458*x4 - b22 <= 0)

@constraint(m, 0.000338983050847458*x5 - b23 <= 0)

@constraint(m, 0.000338983050847458*x6 - b24 <= 0)

@constraint(m, 0.0125*x1 - b22 <= 0)

@constraint(m, 0.04*x2 - b23 <= 0)

@constraint(m, 0.0222222222222222*x3 - b24 <= 0)

@constraint(m, 0.0025*x7 - b22 <= 0)

@constraint(m, 0.0025*x8 - b23 <= 0)

@constraint(m, 0.0025*x9 - b24 <= 0)

@constraint(m, 0.00285714285714286*x10 - b22 <= 0)

@constraint(m, 0.00285714285714286*x11 - b23 <= 0)

@constraint(m, 0.00285714285714286*x12 - b24 <= 0)

@constraint(m, x13 - b22 <= 0)

@constraint(m, x14 - b23 <= 0)

@constraint(m, x15 - b24 <= 0)

@constraint(m, i16 - 3*b22 <= 0)

@constraint(m, i17 - 3*b23 <= 0)

@constraint(m, i18 - 3*b24 <= 0)

@constraint(m, i19 - 3*b22 <= 0)

@constraint(m, i20 - 3*b23 <= 0)

@constraint(m, i21 - 3*b24 <= 0)
