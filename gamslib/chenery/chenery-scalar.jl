#  NLP written by GAMS Convert at 10/11/20 12:18:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         39       33        4        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         44       44        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        133       77       56        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1 <= 2000, start=200)
@variable(m, 0 <= x2 <= 2000, start=200)
@variable(m, 0 <= x3 <= 2000, start=200)
@variable(m, 0 <= x4 <= 2000, start=200)
@variable(m, 0 <= x5 <= 100, start=1.08002386572984)
@variable(m, 0 <= x6 <= 100, start=1.25850763714561)
@variable(m, 0 <= x7 <= 100, start=2.47224270643972)
@variable(m, 0 <= x8 <= 100, start=2.08174548233022)
@variable(m, 0 <= x9 <= 2000, start=250)
@variable(m, 0 <= x10 <= 2000, start=250)
@variable(m, 0 <= x11 <= 2000, start=250)
@variable(m, 0 <= x12 <= 2000, start=250)
@variable(m, 0.1 <= x13 <= 100, start=3)
@variable(m, 0.1 <= x14 <= 100, start=3)
@variable(m, 0.1 <= x15 <= 100, start=3)
@variable(m, 0.1 <= x16 <= 100, start=3)
@variable(m, 0 <= x17 <= 1, start=0.283078383128534)
@variable(m, 0 <= x18 <= 1, start=0.383990781960791)
@variable(m, 0 <= x19 <= 1, start=0.309951359679435)
@variable(m, 0 <= x20 <= 1, start=0.580992426342466)
@variable(m, 0 <= x21 <= 1, start=0.22769870931466)
@variable(m, 0 <= x22 <= 1, start=0.249861958624235)
@variable(m, 0 <= x23 <= 1, start=0.617797527645794)
@variable(m, 0 <= x24 <= 1, start=0.428786587425074)
@variable(m, 0 <= x25 <= 400, start=0)
@variable(m, 0 <= x26 <= 400, start=0)
@variable(m, 0 <= x27 <= 400, start=0)
@variable(m, 0 <= x28 <= 400, start=0)
@variable(m, 0 <= x29 <= 400, start=0)
@variable(m, 0 <= x30 <= 400, start=0)
@variable(m, 0 <= x31 <= 4, start=1)
@variable(m, 0 <= x32 <= 4, start=1)
@variable(m, 0 <= x33 <= 4, start=1)
@variable(m, 0 <= x34 <= 4, start=1)
@variable(m, 0 <= x35 <= 4, start=1.1)
@variable(m, 0 <= x36 <= 4, start=1)
@variable(m, 0.25 <= x37 <= 4, start=3.5)
@variable(m, 0.25 <= x38 <= 4, start=3.5)
@variable(m, 0.01 <= x39, start=0.3)
@variable(m, 0.001 <= x41, start=0.171804999139287)
@variable(m, 0.001 <= x42, start=0.349221638418406)
@variable(m, 0.001 <= x43, start=15.7837604335036)
@variable(m, 0.001 <= x44, start=0.00311417990544524)

@objective(m, Max, x9 + x10 + x11 + x12)

@constraint(m, x1 - x9 - x25 + x28 >= 0)

@constraint(m,  - 0.1*x1 + x2 - x10 - x26 + x29 >= 0)

@constraint(m,  - 0.2*x1 - 0.1*x2 + x3 - x11 - x27 + x30 >= 0)

@constraint(m,  - 0.2*x1 - 0.3*x2 - 0.1*x3 + x4 - x12 >= 0)

JuMP.add_NL_constraint(m, :($(x31)*$(x28) - $(x34)*$(x25) + $(x32)*$(x29) - $(x35)*$(x26) + $(x33)*$(x30) - $(x36)*
    $(x27) <= 0))

@constraint(m,  - 0.005*x28 + x31 == 1)

@constraint(m,  - 0.0157*x29 + x32 == 1)

@constraint(m,  - 0.00178*x30 + x33 == 1)

@constraint(m, 0.005*x25 + x34 == 1)

@constraint(m, 0.001*x26 + x35 == 1.1)

@constraint(m, 0.01*x27 + x36 == 1)

JuMP.add_NL_constraint(m, :(-100*($(x39)*$(x13))^(-0.674) + $(x9) == 0))

JuMP.add_NL_constraint(m, :(-230*($(x39)*$(x14))^(-0.246) + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-220*($(x39)*$(x15))^(-0.587) + $(x11) == 0))

JuMP.add_NL_constraint(m, :(-450*($(x39)*$(x16))^(-0.352) + $(x12) == 0))

JuMP.add_NL_constraint(m, :($(x17)*$(x1) + $(x18)*$(x2) + $(x19)*$(x3) + $(x20)*$(x4) <= 750))

JuMP.add_NL_constraint(m, :($(x21)*$(x1) + $(x22)*$(x2) + $(x23)*$(x3) + $(x24)*$(x4) == 500))

@constraint(m,  - x5 + x13 - 0.1*x14 - 0.2*x15 - 0.2*x16 == 0)

@constraint(m,  - x6 + x14 - 0.1*x15 - 0.3*x16 == 0)

@constraint(m,  - x7 + x15 - 0.1*x16 == 0)

@constraint(m,  - x8 + x16 == 0)

@constraint(m,  - x37 + x38 == 0)

JuMP.add_NL_constraint(m, :(-(2.06748466257669*$(x38))^(-0.89) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(-(1.25733634311512*$(x38))^(-0.71) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(-(0.00908173562058527*$(x38))^(-0.8) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(-(124.31328320802*$(x38))^(-0.95) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(-(0.674 + 0.326/$(x41))^0.123595505617978 + 3.97*$(x17) == 0))

JuMP.add_NL_constraint(m, :(-(0.557 + 0.443/$(x42))^0.408450704225352 + 3.33*$(x18) == 0))

JuMP.add_NL_constraint(m, :(-(0.00900000000000001 + 0.991/$(x43))^0.25 + 1.67*$(x19) == 0))

JuMP.add_NL_constraint(m, :(-(0.99202 + 0.00798/$(x44))^0.0526315789473684 + 1.84*$(x20) == 0))

JuMP.add_NL_constraint(m, :(-(0.326 + 0.674*$(x41))^0.123595505617978 + 3.97*$(x21) == 0))

JuMP.add_NL_constraint(m, :(-(0.443 + 0.557*$(x42))^0.408450704225352 + 3.33*$(x22) == 0))

JuMP.add_NL_constraint(m, :(-(0.991 + 0.00900000000000001*$(x43))^0.25 + 1.67*$(x23) == 0))

JuMP.add_NL_constraint(m, :(-(0.00798 + 0.99202*$(x44))^0.0526315789473684 + 1.84*$(x24) == 0))

JuMP.add_NL_constraint(m, :(-$(x37)*$(x21) + $(x5) - $(x17) == 0))

JuMP.add_NL_constraint(m, :(-$(x37)*$(x22) + $(x6) - $(x18) == 0))

JuMP.add_NL_constraint(m, :(-$(x37)*$(x23) + $(x7) - $(x19) == 0))

JuMP.add_NL_constraint(m, :(-$(x37)*$(x24) + $(x8) - $(x20) == 0))
