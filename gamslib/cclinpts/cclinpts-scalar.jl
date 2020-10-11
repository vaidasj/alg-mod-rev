#  NLP written by GAMS Convert at 10/11/20 13:51:27
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       31        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         61       61        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        121       31       90        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 5 <= x2 <= 5, start=5)
@variable(m, 5 <= x3 <= 100, start=5)
@variable(m, 5 <= x4 <= 100, start=5)
@variable(m, 5 <= x5 <= 100, start=5)
@variable(m, 5 <= x6 <= 100, start=5)
@variable(m, 5 <= x7 <= 100, start=5)
@variable(m, 5 <= x8 <= 100, start=5)
@variable(m, 5 <= x9 <= 100, start=5)
@variable(m, 5 <= x10 <= 100, start=5)
@variable(m, 5 <= x11 <= 100, start=5)
@variable(m, 5 <= x12 <= 100, start=5)
@variable(m, 5 <= x13 <= 100, start=5)
@variable(m, 5 <= x14 <= 100, start=5)
@variable(m, 5 <= x15 <= 100, start=5)
@variable(m, 5 <= x16 <= 100, start=5)
@variable(m, 5 <= x17 <= 100, start=5)
@variable(m, 5 <= x18 <= 100, start=5)
@variable(m, 5 <= x19 <= 100, start=5)
@variable(m, 5 <= x20 <= 100, start=5)
@variable(m, 5 <= x21 <= 100, start=5)
@variable(m, 5 <= x22 <= 100, start=5)
@variable(m, 5 <= x23 <= 100, start=5)
@variable(m, 5 <= x24 <= 100, start=5)
@variable(m, 5 <= x25 <= 100, start=5)
@variable(m, 5 <= x26 <= 100, start=5)
@variable(m, 5 <= x27 <= 100, start=5)
@variable(m, 5 <= x28 <= 100, start=5)
@variable(m, 5 <= x29 <= 100, start=5)
@variable(m, 5 <= x30 <= 100, start=5)
@variable(m, 100 <= x31 <= 100, start=100)
@variable(m, x32, start=0)
@variable(m, x33, start=0)
@variable(m, x34, start=0)
@variable(m, x35, start=0)
@variable(m, x36, start=0)
@variable(m, x37, start=0)
@variable(m, x38, start=0)
@variable(m, x39, start=0)
@variable(m, x40, start=0)
@variable(m, x41, start=0)
@variable(m, x42, start=0)
@variable(m, x43, start=0)
@variable(m, x44, start=0)
@variable(m, x45, start=0)
@variable(m, x46, start=0)
@variable(m, x47, start=0)
@variable(m, x48, start=0)
@variable(m, x49, start=0)
@variable(m, x50, start=0)
@variable(m, x51, start=0)
@variable(m, x52, start=0)
@variable(m, x53, start=0)
@variable(m, x54, start=0)
@variable(m, x55, start=0)
@variable(m, x56, start=0)
@variable(m, x57, start=0)
@variable(m, x58, start=0)
@variable(m, x59, start=0)
@variable(m, x60, start=0)
@variable(m, x61, start=0)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(($(x31) - $(x2))*$(x32) + ($(x31) - $(x3))*($(x33) - $(x32)) + ($(x31) - $(x4)
    )*($(x34) - $(x33)) + ($(x31) - $(x5))*($(x35) - $(x34)) + ($(x31) - $(x6))*($(x36) - $(x35)) + ($(x31) - $(x7))*(
    $(x37) - $(x36)) + ($(x31) - $(x8))*($(x38) - $(x37)) + ($(x31) - $(x9))*($(x39) - $(x38)) + ($(x31) - $(x10))*(
    $(x40) - $(x39)) + ($(x31) - $(x11))*($(x41) - $(x40)) + ($(x31) - $(x12))*($(x42) - $(x41)) + ($(x31) - $(x13))*(
    $(x43) - $(x42)) + ($(x31) - $(x14))*($(x44) - $(x43)) + ($(x31) - $(x15))*($(x45) - $(x44)) + ($(x31) - $(x16))*(
    $(x46) - $(x45)) + ($(x31) - $(x17))*($(x47) - $(x46)) + ($(x31) - $(x18))*($(x48) - $(x47)) + ($(x31) - $(x19))*(
    $(x49) - $(x48)) + ($(x31) - $(x20))*($(x50) - $(x49)) + ($(x31) - $(x21))*($(x51) - $(x50)) + ($(x31) - $(x22))*(
    $(x52) - $(x51)) + ($(x31) - $(x23))*($(x53) - $(x52)) + ($(x31) - $(x24))*($(x54) - $(x53)) + ($(x31) - $(x25))*(
    $(x55) - $(x54)) + ($(x31) - $(x26))*($(x56) - $(x55)) + ($(x31) - $(x27))*($(x57) - $(x56)) + ($(x31) - $(x28))*(
    $(x58) - $(x57)) + ($(x31) - $(x29))*($(x59) - $(x58)) + ($(x31) - $(x30))*($(x60) - $(x59)) + 0.5*(($(x3) - $(x2))*
    ($(x33) - $(x32)) + ($(x4) - $(x3))*($(x34) - $(x33)) + ($(x5) - $(x4))*($(x35) - $(x34)) + ($(x6) - $(x5))*($(x36)
     - $(x35)) + ($(x7) - $(x6))*($(x37) - $(x36)) + ($(x8) - $(x7))*($(x38) - $(x37)) + ($(x9) - $(x8))*($(x39) - 
    $(x38)) + ($(x10) - $(x9))*($(x40) - $(x39)) + ($(x11) - $(x10))*($(x41) - $(x40)) + ($(x12) - $(x11))*($(x42) - 
    $(x41)) + ($(x13) - $(x12))*($(x43) - $(x42)) + ($(x14) - $(x13))*($(x44) - $(x43)) + ($(x15) - $(x14))*($(x45) - 
    $(x44)) + ($(x16) - $(x15))*($(x46) - $(x45)) + ($(x17) - $(x16))*($(x47) - $(x46)) + ($(x18) - $(x17))*($(x48) - 
    $(x47)) + ($(x19) - $(x18))*($(x49) - $(x48)) + ($(x20) - $(x19))*($(x50) - $(x49)) + ($(x21) - $(x20))*($(x51) - 
    $(x50)) + ($(x22) - $(x21))*($(x52) - $(x51)) + ($(x23) - $(x22))*($(x53) - $(x52)) + ($(x24) - $(x23))*($(x54) - 
    $(x53)) + ($(x25) - $(x24))*($(x55) - $(x54)) + ($(x26) - $(x25))*($(x56) - $(x55)) + ($(x27) - $(x26))*($(x57) - 
    $(x56)) + ($(x28) - $(x27))*($(x58) - $(x57)) + ($(x29) - $(x28))*($(x59) - $(x58)) + ($(x30) - $(x29))*($(x60) - 
    $(x59)) + ($(x31) - $(x30))*($(x61) - $(x60)))))

JuMP.add_NL_constraint(m, :(1/$(x2) + $(x32) == 0))

JuMP.add_NL_constraint(m, :(1/$(x3) + $(x33) == 0))

JuMP.add_NL_constraint(m, :(1/$(x4) + $(x34) == 0))

JuMP.add_NL_constraint(m, :(1/$(x5) + $(x35) == 0))

JuMP.add_NL_constraint(m, :(1/$(x6) + $(x36) == 0))

JuMP.add_NL_constraint(m, :(1/$(x7) + $(x37) == 0))

JuMP.add_NL_constraint(m, :(1/$(x8) + $(x38) == 0))

JuMP.add_NL_constraint(m, :(1/$(x9) + $(x39) == 0))

JuMP.add_NL_constraint(m, :(1/$(x10) + $(x40) == 0))

JuMP.add_NL_constraint(m, :(1/$(x11) + $(x41) == 0))

JuMP.add_NL_constraint(m, :(1/$(x12) + $(x42) == 0))

JuMP.add_NL_constraint(m, :(1/$(x13) + $(x43) == 0))

JuMP.add_NL_constraint(m, :(1/$(x14) + $(x44) == 0))

JuMP.add_NL_constraint(m, :(1/$(x15) + $(x45) == 0))

JuMP.add_NL_constraint(m, :(1/$(x16) + $(x46) == 0))

JuMP.add_NL_constraint(m, :(1/$(x17) + $(x47) == 0))

JuMP.add_NL_constraint(m, :(1/$(x18) + $(x48) == 0))

JuMP.add_NL_constraint(m, :(1/$(x19) + $(x49) == 0))

JuMP.add_NL_constraint(m, :(1/$(x20) + $(x50) == 0))

JuMP.add_NL_constraint(m, :(1/$(x21) + $(x51) == 0))

JuMP.add_NL_constraint(m, :(1/$(x22) + $(x52) == 0))

JuMP.add_NL_constraint(m, :(1/$(x23) + $(x53) == 0))

JuMP.add_NL_constraint(m, :(1/$(x24) + $(x54) == 0))

JuMP.add_NL_constraint(m, :(1/$(x25) + $(x55) == 0))

JuMP.add_NL_constraint(m, :(1/$(x26) + $(x56) == 0))

JuMP.add_NL_constraint(m, :(1/$(x27) + $(x57) == 0))

JuMP.add_NL_constraint(m, :(1/$(x28) + $(x58) == 0))

JuMP.add_NL_constraint(m, :(1/$(x29) + $(x59) == 0))

JuMP.add_NL_constraint(m, :(1/$(x30) + $(x60) == 0))

JuMP.add_NL_constraint(m, :(1/$(x31) + $(x61) == 0))
