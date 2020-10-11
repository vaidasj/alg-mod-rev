#  MINLP written by GAMS Convert at 10/11/20 12:43:59
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         44       42        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       49        2        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        197       75      122        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b2 <= 1, binary=true, start=0.5)
@variable(m, 0 <= b3 <= 1, binary=true, start=0.5)
@variable(m, 0 <= x4 <= 300, start=150)
@variable(m, 0 <= x5 <= 300, start=150)
@variable(m, 0 <= x6 <= 300, start=150)
@variable(m, 0 <= x7 <= 300, start=150)
@variable(m, 0 <= x8 <= 300, start=75)
@variable(m, 0 <= x9 <= 300, start=75)
@variable(m, 0 <= x10 <= 300, start=75)
@variable(m, 0 <= x11 <= 300, start=75)
@variable(m, 0 <= x12 <= 300, start=37.5)
@variable(m, 0 <= x13 <= 300, start=37.5)
@variable(m, 0 <= x14 <= 300, start=37.5)
@variable(m, 0 <= x15 <= 300, start=37.5)
@variable(m, 0 <= x16 <= 300, start=37.5)
@variable(m, 0 <= x17 <= 300, start=37.5)
@variable(m, 0 <= x18 <= 300, start=37.5)
@variable(m, 0 <= x19 <= 300, start=37.5)
@variable(m, 0 <= x20 <= 300, start=37.5)
@variable(m, 0 <= x21 <= 300, start=37.5)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24 <= 100, start=50)
@variable(m, 0 <= x25 <= 100, start=50)
@variable(m, 0 <= x26 <= 100, start=50)
@variable(m, 0 <= x27 <= 100, start=50)
@variable(m, 0 <= x28 <= 100, start=50)
@variable(m, 0 <= x29 <= 100, start=50)
@variable(m, 0 <= x30 <= 1, start=0.333333333333333)
@variable(m, 0 <= x31 <= 1, start=0.333333333333333)
@variable(m, 0 <= x32 <= 1, start=0.333333333333333)
@variable(m, 0 <= x33 <= 1, start=0.333333333333333)
@variable(m, 0 <= x34 <= 1, start=0.333333333333333)
@variable(m, 0 <= x35 <= 1, start=0.333333333333333)
@variable(m, 0 <= x36 <= 1, start=0.333333333333333)
@variable(m, 0 <= x37 <= 1, start=0.333333333333333)
@variable(m, 0 <= x38 <= 1, start=0.333333333333333)
@variable(m, 0 <= x39 <= 1, start=0.333333333333333)
@variable(m, 0 <= x40 <= 1, start=0.333333333333333)
@variable(m, 0 <= x41 <= 1, start=0.333333333333333)
@variable(m, 0 <= x42 <= 1, start=0.333333333333333)
@variable(m, 0 <= x43 <= 1, start=0.333333333333333)
@variable(m, 0 <= x44 <= 1, start=0.333333333333333)
@variable(m, 0 <= x45 <= 1, start=0.333333333333333)
@variable(m, 0 <= x46 <= 1, start=0.333333333333333)
@variable(m, 0 <= x47 <= 1, start=0.333333333333333)
@variable(m, 0.85 <= x48 <= 1, start=0.85)
@variable(m, 0.85 <= x49 <= 1, start=0.85)
@variable(m, 0.85 <= x50 <= 1, start=0.85)
@variable(m, 0.85 <= x51 <= 1, start=0.85)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :((-0.0139904 - 0.0005719*$(x30) + 0.0042656*$(x31) + 0.0093514*$(x48) + 
    0.0077308*$(x49))*$(x6) + (-0.0661588 + 0.0016371*$(x33) + 0.0288996*$(x34) + 0.0338147*$(x50) + 0.0373349*$(x51))*
    $(x7) + 0.23947*$(b2) + 0.75835*$(b3)))

@constraint(m, x4 + x5 + x22 + x23 == 300)

@constraint(m, x8 - x14 - x15 == 0)

@constraint(m, x9 - x13 - x16 - x17 == 0)

@constraint(m, x10 - x12 - x18 - x19 == 0)

@constraint(m, x11 - x20 - x21 == 0)

JuMP.add_NL_constraint(m, :(-$(x12)*$(x42) - 0.333333333333333*$(x4) + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-$(x12)*$(x43) - 0.333333333333333*$(x4) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-$(x12)*$(x44) - 0.333333333333333*$(x4) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-$(x13)*$(x39) - 0.333333333333333*$(x5) + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-$(x13)*$(x40) - 0.333333333333333*$(x5) + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-$(x13)*$(x41) - 0.333333333333333*$(x5) + $(x29) == 0))

JuMP.add_NL_constraint(m, :(-($(x8)*$(x36) + $(x9)*$(x39)) + $(x24) == 0))

JuMP.add_NL_constraint(m, :(-($(x8)*$(x37) + $(x9)*$(x40)) + $(x25) == 0))

JuMP.add_NL_constraint(m, :(-($(x8)*$(x38) + $(x9)*$(x41)) + $(x26) == 0))

JuMP.add_NL_constraint(m, :(-($(x10)*$(x42) + $(x11)*$(x45)) + $(x27) == 0))

JuMP.add_NL_constraint(m, :(-($(x10)*$(x43) + $(x11)*$(x46)) + $(x28) == 0))

JuMP.add_NL_constraint(m, :(-($(x10)*$(x44) + $(x11)*$(x47)) + $(x29) == 0))

JuMP.add_NL_constraint(m, :($(x24)*$(x48) - $(x8)*$(x36) == 0))

JuMP.add_NL_constraint(m, :($(x25)*$(x49) - $(x9)*$(x40) == 0))

JuMP.add_NL_constraint(m, :($(x28)*$(x50) - $(x10)*$(x43) == 0))

JuMP.add_NL_constraint(m, :($(x29)*$(x51) - $(x11)*$(x47) == 0))

JuMP.add_NL_constraint(m, :($(x14)*$(x36) + $(x16)*$(x39) + $(x18)*$(x42) + $(x20)*$(x45) + 0.333333333333333*$(x22)
     == 80))

JuMP.add_NL_constraint(m, :($(x14)*$(x37) + $(x16)*$(x40) + $(x18)*$(x43) + $(x20)*$(x46) + 0.333333333333333*$(x22)
     == 30))

JuMP.add_NL_constraint(m, :($(x14)*$(x38) + $(x16)*$(x41) + $(x18)*$(x44) + $(x20)*$(x47) + 0.333333333333333*$(x22)
     == 20))

JuMP.add_NL_constraint(m, :($(x15)*$(x36) + $(x17)*$(x39) + $(x19)*$(x42) + $(x21)*$(x45) + 0.333333333333333*$(x23)
     == 20))

JuMP.add_NL_constraint(m, :($(x15)*$(x37) + $(x17)*$(x40) + $(x19)*$(x43) + $(x21)*$(x46) + 0.333333333333333*$(x23)
     == 70))

JuMP.add_NL_constraint(m, :($(x15)*$(x38) + $(x17)*$(x41) + $(x19)*$(x44) + $(x21)*$(x47) + 0.333333333333333*$(x23)
     == 80))

JuMP.add_NL_constraint(m, :($(x6)*$(x30) - $(x24) == 0))

JuMP.add_NL_constraint(m, :($(x6)*$(x31) - $(x25) == 0))

JuMP.add_NL_constraint(m, :($(x6)*$(x32) - $(x26) == 0))

JuMP.add_NL_constraint(m, :($(x7)*$(x33) - $(x27) == 0))

JuMP.add_NL_constraint(m, :($(x7)*$(x34) - $(x28) == 0))

JuMP.add_NL_constraint(m, :($(x7)*$(x35) - $(x29) == 0))

@constraint(m, x36 + x37 + x38 == 1)

@constraint(m, x39 + x40 + x41 == 1)

@constraint(m, x42 + x43 + x44 == 1)

@constraint(m, x45 + x46 + x47 == 1)

@constraint(m, x30 + x31 + x32 == 1)

@constraint(m, x33 + x34 + x35 == 1)

@constraint(m, x38 == 0)

@constraint(m, x45 == 0)

@constraint(m,  - 300*b2 + x6 <= 0)

@constraint(m,  - 300*b3 + x7 <= 0)
