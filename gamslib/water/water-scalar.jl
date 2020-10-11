#  DNLP written by GAMS Convert at 10/11/20 12:21:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         26       26        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         42       42        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        113       67       46        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, x13, start=0)
@variable(m, x14, start=0)
@variable(m, 0.15 <= x15 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x16 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x17 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x18 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x19 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x20 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x21 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x22 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x23 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x24 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x25 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x26 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x27 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x28 <= 2, start=0.547722557505166)
@variable(m, 6.5 <= x29, start=7.5)
@variable(m, 3.25 <= x30, start=4.25)
@variable(m, 16.58 <= x31, start=17.58)
@variable(m, 14.92 <= x32, start=15.92)
@variable(m, 12.925 <= x33, start=13.925)
@variable(m, 12.26 <= x34, start=13.26)
@variable(m, 8.76 <= x35, start=9.76)
@variable(m, 16.08 <= x36, start=17.08)
@variable(m, 0 <= x37 <= 2.5, start=0.961470588235294)
@variable(m, 0 <= x38 <= 6, start=2.30752941176471)
@variable(m, x39, start=0)
@variable(m, x40, start=0)
@variable(m, x41, start=0)

@objective(m, Min, 10*x39 + x40 + 10*x41)

@constraint(m,  - x1 - x2 - x3 + x37 == 0)

@constraint(m,  - x4 - x5 - x6 - x7 + x38 == 0)

@constraint(m, x1 + x4 - x8 - x9 - x10 - x11 == 1.212)

@constraint(m, x2 + x8 + x12 == 0.452)

@constraint(m, x9 - x12 + x13 == 0.245)

@constraint(m, x5 + x10 - x13 - x14 == 0.652)

@constraint(m, x6 + x14 == 0.252)

@constraint(m, x3 + x7 + x11 == 0.456)

JuMP.add_NL_constraint(m, :(-1.5722267648148*abs($(x1))*$(x1)/$(x15)^5.33 + $(x29) - $(x31) == 0))

JuMP.add_NL_constraint(m, :(-1.32004857865156*abs($(x2))*$(x2)/$(x16)^5.33 + $(x29) - $(x32) == 0))

JuMP.add_NL_constraint(m, :(-2.57705917665854*abs($(x3))*$(x3)/$(x17)^5.33 + $(x29) - $(x36) == 0))

JuMP.add_NL_constraint(m, :(-2.06257339263358*abs($(x4))*$(x4)/$(x18)^5.33 + $(x30) - $(x31) == 0))

JuMP.add_NL_constraint(m, :(-2.40235218067626*abs($(x5))*$(x5)/$(x19)^5.33 + $(x30) - $(x34) == 0))

JuMP.add_NL_constraint(m, :(-1.339*abs($(x6))*$(x6)/$(x20)^5.33 + $(x30) - $(x35) == 0))

JuMP.add_NL_constraint(m, :(-1.37419139860501*abs($(x7))*$(x7)/$(x21)^5.33 + $(x30) - $(x36) == 0))

JuMP.add_NL_constraint(m, :(-1.2916134290104*abs($(x8))*$(x8)/$(x22)^5.33 + $(x31) - $(x32) == 0))

JuMP.add_NL_constraint(m, :(-1.60230396616872*abs($(x9))*$(x9)/$(x23)^5.33 + $(x31) - $(x33) == 0))

JuMP.add_NL_constraint(m, :(-1.339*abs($(x10))*$(x10)/$(x24)^5.33 + $(x31) - $(x34) == 0))

JuMP.add_NL_constraint(m, :(-2.14329116080854*abs($(x11))*$(x11)/$(x25)^5.33 + $(x31) - $(x36) == 0))

JuMP.add_NL_constraint(m, :(-1.24561882211213*abs($(x12))*$(x12)/$(x26)^5.33 - $(x32) + $(x33) == 0))

JuMP.add_NL_constraint(m, :(-1.15157500841239*abs($(x13))*$(x13)/$(x27)^5.33 - $(x33) + $(x34) == 0))

JuMP.add_NL_constraint(m, :(-2.06257339263358*abs($(x14))*$(x14)/$(x28)^5.33 + $(x34) - $(x35) == 0))

JuMP.add_NL_constraint(m, :(-(1.02*$(x37)*(-6.5 + $(x29)) + 1.02*$(x38)*(-3.25 + $(x30))) + $(x39) == 0))

JuMP.add_NL_constraint(m, :(-0.069*(1526.43375224737*$(x15)^1.29 + 1281.60056179763*$(x16)^1.29 + 2501.99920063936*
    $(x17)^1.29 + 2002.49843945008*$(x18)^1.29 + 2332.38075793812*$(x19)^1.29 + 1300*$(x20)^1.29 + 1334.16640641263*
    $(x21)^1.29 + 1253.99362039845*$(x22)^1.29 + 1555.6349186104*$(x23)^1.29 + 1300*$(x24)^1.29 + 2080.86520466848*
    $(x25)^1.29 + 1209.33866224478*$(x26)^1.29 + 1118.03398874989*$(x27)^1.29 + 2002.49843945008*$(x28)^1.29) + $(x40)
     == 0))

@constraint(m,  - 0.2*x37 - 0.17*x38 + x41 == 0)
