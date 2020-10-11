#  NLP written by GAMS Convert at 10/11/20 12:22:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         16       16        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         30       30        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         98       72       26        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=1)
@variable(m, 0 <= x16, start=1)
@variable(m, 0 <= x17, start=1)
@variable(m, 0 <= x18, start=1)
@variable(m, 0 <= x19, start=1)
@variable(m, 0 <= x20, start=1)
@variable(m, 0 <= x21, start=1)
@variable(m, 0 <= x22, start=1)
@variable(m, 0 <= x23, start=1)
@variable(m, 0 <= x24, start=25)
@variable(m, 0 <= x25, start=25)
@variable(m, 0 <= x26, start=25)
@variable(m, 0 <= x27, start=25)
@variable(m, 0 <= x28, start=25)
@variable(m, 0 <= x29, start=25)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :((-0.2*((24 + $(x15))*$(x15) + (24 + $(x18))*$(x18) + (24 + $(x21))*$(x21))) - 
    0.01*((24 + $(x16))*$(x16) + (24 + $(x19))*$(x19) + (24 + $(x22))*$(x22)) - 0.3*((24 + $(x17))*$(x17) + (24 + $(x20)
    )*$(x20) + (24 + $(x23))*$(x23)) - (0.5*$(x27)^2 + $(x27) + 0.4*$(x28)^2 + 2*$(x28) + 0.3*$(x29)^2 + 1.5*$(x29)) - (
    0.166666666666667*$(x1)^3 + $(x1) + 0.0666666666666667*$(x2)^3 + 2*$(x2) + 0.1*$(x3)^3 + 3*$(x3) + 0.133333333333333
    *$(x4)^3 + $(x4) + 0.1*$(x5)^3 + 2*$(x5) + 0.0333333333333333*$(x6)^3 + $(x6) + 0.0333333333333333*$(x7)^3 + $(x7)
     + 0.166666666666667*$(x8)^3 + 3*$(x8) + 0.0666666666666667*$(x9)^3 + 2*$(x9) + 0.333333333333333*$(x10)^3 + $(x10)
     + 0.0833333333333333*$(x11)^3 + 2*$(x11) + 0.0666666666666667*$(x12)^3 + 2*$(x12) + 0.3*$(x13)^3 + $(x13) + 
    0.266666666666667*$(x14)^3 + 3*$(x14)) + 19*$(x24) + 27*$(x25) + 30*$(x26)))

@constraint(m,  - x1 - x2 + x5 + x8 - x24 + x27 == 0)

@constraint(m,  - x3 + x11 - x25 + x28 == 0)

@constraint(m,  - x4 + x12 - x26 + x29 == 0)

@constraint(m, x1 - x5 - x6 - x7 + x9 + x13 == 0)

@constraint(m, x2 + x6 - x8 - x9 - x10 + x14 == 0)

@constraint(m, x3 + x4 + x7 + x10 - x11 - x12 - x13 - x14 == 0)

@constraint(m,  - x15 - x16 - x17 + x27 == 0)

@constraint(m,  - x18 - x19 - x20 + x28 == 0)

@constraint(m,  - x21 - x22 - x23 + x29 == 0)

@constraint(m,  - x15 - x18 - x21 + x24 == 0)

@constraint(m,  - x16 - x19 - x22 + x25 == 0)

@constraint(m,  - x17 - x20 - x23 + x26 == 0)

@constraint(m,  - x5 - x8 - x15 + x24 == 0)

@constraint(m,  - x11 - x19 + x25 == 0)

@constraint(m,  - x12 - x23 + x26 == 0)
