#  MINLP written by GAMS Convert at 10/11/20 12:27:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         55       27        0       28        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         71       57       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        241      181       60        0
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
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0.15 <= x29 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x30 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x31 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x32 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x33 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x34 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x35 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x36 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x37 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x38 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x39 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x40 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x41 <= 2, start=0.547722557505166)
@variable(m, 0.15 <= x42 <= 2, start=0.547722557505166)
@variable(m, 6.5 <= x43, start=11.5)
@variable(m, 3.25 <= x44, start=8.25)
@variable(m, 16.58 <= x45, start=21.58)
@variable(m, 14.92 <= x46, start=19.92)
@variable(m, 12.925 <= x47, start=17.925)
@variable(m, 12.26 <= x48, start=17.26)
@variable(m, 8.76 <= x49, start=13.76)
@variable(m, 16.08 <= x50, start=21.08)
@variable(m, 0 <= x51 <= 2.5, start=0.961470588235294)
@variable(m, 0 <= x52 <= 6, start=2.30752941176471)
@variable(m, x53, start=0)
@variable(m, x54, start=0)
@variable(m, x55, start=0)
@variable(m, x57, start=0)
@variable(m, 0 <= b58 <= 1, binary=true, start=0)
@variable(m, 0 <= b59 <= 1, binary=true, start=0)
@variable(m, 0 <= b60 <= 1, binary=true, start=0)
@variable(m, 0 <= b61 <= 1, binary=true, start=0)
@variable(m, 0 <= b62 <= 1, binary=true, start=0)
@variable(m, 0 <= b63 <= 1, binary=true, start=0)
@variable(m, 0 <= b64 <= 1, binary=true, start=0)
@variable(m, 0 <= b65 <= 1, binary=true, start=0)
@variable(m, 0 <= b66 <= 1, binary=true, start=0)
@variable(m, 0 <= b67 <= 1, binary=true, start=0)
@variable(m, 0 <= b68 <= 1, binary=true, start=0)
@variable(m, 0 <= b69 <= 1, binary=true, start=0)
@variable(m, 0 <= b70 <= 1, binary=true, start=0)
@variable(m, 0 <= b71 <= 1, binary=true, start=0)

@objective(m, Min, 10*x53 + x54 + 10*x55 + x57)

@constraint(m,  - x1 - x2 - x3 + x15 + x16 + x17 + x51 == 0)

@constraint(m,  - x4 - x5 - x6 - x7 + x18 + x19 + x20 + x21 + x52 == 0)

@constraint(m, x1 + x4 - x8 - x9 - x10 - x11 - x15 - x18 + x22 + x23 + x24 + x25 == 1.212)

@constraint(m, x2 + x8 + x12 - x16 - x22 - x26 == 0.452)

@constraint(m, x9 - x12 + x13 - x23 + x26 - x27 == 0.245)

@constraint(m, x5 + x10 - x13 - x14 - x19 - x24 + x27 + x28 == 0.652)

@constraint(m, x6 + x14 - x20 - x28 == 0.252)

@constraint(m, x3 + x7 + x11 - x17 - x21 - x25 == 0.456)

JuMP.add_NL_constraint(m, :(-(1.5722267648148*$(x1) + 1.5722267648148*$(x15))*($(x1) - $(x15))/$(x29)^5.33 + $(x43)
     - $(x45) == 0))

JuMP.add_NL_constraint(m, :(-(1.32004857865156*$(x2) + 1.32004857865156*$(x16))*($(x2) - $(x16))/$(x30)^5.33 + $(x43)
     - $(x46) == 0))

JuMP.add_NL_constraint(m, :(-(2.57705917665854*$(x3) + 2.57705917665854*$(x17))*($(x3) - $(x17))/$(x31)^5.33 + $(x43)
     - $(x50) == 0))

JuMP.add_NL_constraint(m, :(-(2.06257339263358*$(x4) + 2.06257339263358*$(x18))*($(x4) - $(x18))/$(x32)^5.33 + $(x44)
     - $(x45) == 0))

JuMP.add_NL_constraint(m, :(-(2.40235218067626*$(x5) + 2.40235218067626*$(x19))*($(x5) - $(x19))/$(x33)^5.33 + $(x44)
     - $(x48) == 0))

JuMP.add_NL_constraint(m, :(-(1.339*$(x6) + 1.339*$(x20))*($(x6) - $(x20))/$(x34)^5.33 + $(x44) - $(x49) == 0))

JuMP.add_NL_constraint(m, :(-(1.37419139860501*$(x7) + 1.37419139860501*$(x21))*($(x7) - $(x21))/$(x35)^5.33 + $(x44)
     - $(x50) == 0))

JuMP.add_NL_constraint(m, :(-(1.2916134290104*$(x8) + 1.2916134290104*$(x22))*($(x8) - $(x22))/$(x36)^5.33 + $(x45)
     - $(x46) == 0))

JuMP.add_NL_constraint(m, :(-(1.60230396616872*$(x9) + 1.60230396616872*$(x23))*($(x9) - $(x23))/$(x37)^5.33 + $(x45)
     - $(x47) == 0))

JuMP.add_NL_constraint(m, :(-(1.339*$(x10) + 1.339*$(x24))*($(x10) - $(x24))/$(x38)^5.33 + $(x45) - $(x48) == 0))

JuMP.add_NL_constraint(m, :(-(2.14329116080854*$(x11) + 2.14329116080854*$(x25))*($(x11) - $(x25))/$(x39)^5.33 + $(x45)
     - $(x50) == 0))

JuMP.add_NL_constraint(m, :(-(1.24561882211213*$(x12) + 1.24561882211213*$(x26))*($(x12) - $(x26))/$(x40)^5.33 - $(x46)
     + $(x47) == 0))

JuMP.add_NL_constraint(m, :(-(1.15157500841239*$(x13) + 1.15157500841239*$(x27))*($(x13) - $(x27))/$(x41)^5.33 - $(x47)
     + $(x48) == 0))

JuMP.add_NL_constraint(m, :(-(2.06257339263358*$(x14) + 2.06257339263358*$(x28))*($(x14) - $(x28))/$(x42)^5.33 + $(x48)
     - $(x49) == 0))

JuMP.add_NL_constraint(m, :(-(1.02*$(x51)*(-6.5 + $(x43)) + 1.02*$(x52)*(-3.25 + $(x44))) + $(x53) == 0))

JuMP.add_NL_constraint(m, :(-0.069*(1526.43375224737*$(x29)^1.29 + 1281.60056179763*$(x30)^1.29 + 2501.99920063936*
    $(x31)^1.29 + 2002.49843945008*$(x32)^1.29 + 2332.38075793812*$(x33)^1.29 + 1300*$(x34)^1.29 + 1334.16640641263*
    $(x35)^1.29 + 1253.99362039845*$(x36)^1.29 + 1555.6349186104*$(x37)^1.29 + 1300*$(x38)^1.29 + 2080.86520466848*
    $(x39)^1.29 + 1209.33866224478*$(x40)^1.29 + 1118.03398874989*$(x41)^1.29 + 2002.49843945008*$(x42)^1.29) + $(x54)
     == 0))

@constraint(m,  - 0.2*x51 - 0.17*x52 + x55 == 0)

@constraint(m,  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x11 - x12 - x13 - x14 - x15 - x16 - x17 - x18 - x19
     - x20 - x21 - x22 - x23 - x24 - x25 - x26 - x27 - x28 + x57 == 0)

@constraint(m, x1 - 2*b58 <= 0)

@constraint(m, x2 - 2*b59 <= 0)

@constraint(m, x3 - 2*b60 <= 0)

@constraint(m, x4 - 2*b61 <= 0)

@constraint(m, x5 - 2*b62 <= 0)

@constraint(m, x6 - 2*b63 <= 0)

@constraint(m, x7 - 2*b64 <= 0)

@constraint(m, x8 - 2*b65 <= 0)

@constraint(m, x9 - 2*b66 <= 0)

@constraint(m, x10 - 2*b67 <= 0)

@constraint(m, x11 - 2*b68 <= 0)

@constraint(m, x12 - 2*b69 <= 0)

@constraint(m, x13 - 2*b70 <= 0)

@constraint(m, x14 - 2*b71 <= 0)

@constraint(m, x15 + 2*b58 <= 2)

@constraint(m, x16 + 2*b59 <= 2)

@constraint(m, x17 + 2*b60 <= 2)

@constraint(m, x18 + 2*b61 <= 2)

@constraint(m, x19 + 2*b62 <= 2)

@constraint(m, x20 + 2*b63 <= 2)

@constraint(m, x21 + 2*b64 <= 2)

@constraint(m, x22 + 2*b65 <= 2)

@constraint(m, x23 + 2*b66 <= 2)

@constraint(m, x24 + 2*b67 <= 2)

@constraint(m, x25 + 2*b68 <= 2)

@constraint(m, x26 + 2*b69 <= 2)

@constraint(m, x27 + 2*b70 <= 2)

@constraint(m, x28 + 2*b71 <= 2)
