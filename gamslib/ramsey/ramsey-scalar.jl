#  NLP written by GAMS Convert at 10/11/20 12:21:10
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23       22        0        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         34       34        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         77       55       22        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 3 <= x1 <= 3, start=3)
@variable(m, 3 <= x2, start=3)
@variable(m, 3 <= x3, start=3)
@variable(m, 3 <= x4, start=3)
@variable(m, 3 <= x5, start=3)
@variable(m, 3 <= x6, start=3)
@variable(m, 3 <= x7, start=3)
@variable(m, 3 <= x8, start=3)
@variable(m, 3 <= x9, start=3)
@variable(m, 3 <= x10, start=3)
@variable(m, 3 <= x11, start=3)
@variable(m, 0.95 <= x12, start=0.95)
@variable(m, 0.95 <= x13, start=0.95)
@variable(m, 0.95 <= x14, start=0.95)
@variable(m, 0.95 <= x15, start=0.95)
@variable(m, 0.95 <= x16, start=0.95)
@variable(m, 0.95 <= x17, start=0.95)
@variable(m, 0.95 <= x18, start=0.95)
@variable(m, 0.95 <= x19, start=0.95)
@variable(m, 0.95 <= x20, start=0.95)
@variable(m, 0.95 <= x21, start=0.95)
@variable(m, 0.95 <= x22, start=0.95)
@variable(m, 0.05 <= x23 <= 0.05, start=0.05)
@variable(m, 0.05 <= x24 <= 0.0575, start=0.05)
@variable(m, 0.05 <= x25 <= 0.066125, start=0.05)
@variable(m, 0.05 <= x26 <= 0.07604375, start=0.05)
@variable(m, 0.05 <= x27 <= 0.0874503125, start=0.05)
@variable(m, 0.05 <= x28 <= 0.100567859375, start=0.05)
@variable(m, 0.05 <= x29 <= 0.11565303828125, start=0.05)
@variable(m, 0.05 <= x30 <= 0.133000994023437, start=0.05)
@variable(m, 0.05 <= x31 <= 0.152951143126953, start=0.05)
@variable(m, 0.05 <= x32 <= 0.175893814595996, start=0.05)
@variable(m, 0.05 <= x33 <= 0.202277886785395, start=0.05)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(0.95*log($(x12)) + 0.9025*log($(x13)) + 0.857375*log($(x14)) + 0.81450625*log(
    $(x15)) + 0.7737809375*log($(x16)) + 0.735091890625*log($(x17)) + 0.69833729609375*log($(x18)) + 0.663420431289062*
    log($(x19)) + 0.630249409724609*log($(x20)) + 0.598736939238379*log($(x21)) + 11.3760018455292*log($(x22))))

JuMP.add_NL_constraint(m, :(0.759835685651592*$(x1)^0.25 - $(x12) - $(x23) == 0))

JuMP.add_NL_constraint(m, :(0.77686866556676*$(x2)^0.25 - $(x13) - $(x24) == 0))

JuMP.add_NL_constraint(m, :(0.794283468039448*$(x3)^0.25 - $(x14) - $(x25) == 0))

JuMP.add_NL_constraint(m, :(0.812088652256959*$(x4)^0.25 - $(x15) - $(x26) == 0))

JuMP.add_NL_constraint(m, :(0.830292969275008*$(x5)^0.25 - $(x16) - $(x27) == 0))

JuMP.add_NL_constraint(m, :(0.848905366318769*$(x6)^0.25 - $(x17) - $(x28) == 0))

JuMP.add_NL_constraint(m, :(0.867934991180341*$(x7)^0.25 - $(x18) - $(x29) == 0))

JuMP.add_NL_constraint(m, :(0.88739119671479*$(x8)^0.25 - $(x19) - $(x30) == 0))

JuMP.add_NL_constraint(m, :(0.907283545436971*$(x9)^0.25 - $(x20) - $(x31) == 0))

JuMP.add_NL_constraint(m, :(0.92762181422141*$(x10)^0.25 - $(x21) - $(x32) == 0))

JuMP.add_NL_constraint(m, :(0.948415999107521*$(x11)^0.25 - $(x22) - $(x33) == 0))

@constraint(m,  - x1 + x2 - x23 == 0)

@constraint(m,  - x2 + x3 - x24 == 0)

@constraint(m,  - x3 + x4 - x25 == 0)

@constraint(m,  - x4 + x5 - x26 == 0)

@constraint(m,  - x5 + x6 - x27 == 0)

@constraint(m,  - x6 + x7 - x28 == 0)

@constraint(m,  - x7 + x8 - x29 == 0)

@constraint(m,  - x8 + x9 - x30 == 0)

@constraint(m,  - x9 + x10 - x31 == 0)

@constraint(m,  - x10 + x11 - x32 == 0)

@constraint(m, 0.03*x11 - x33 <= 0)
