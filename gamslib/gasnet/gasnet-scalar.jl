#  MINLP written by GAMS Convert at 10/11/20 12:43:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         70       49       11       10        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         91       81       10        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        267      137      130        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 2 <= x1 <= 200, start=20)
@variable(m, 2 <= x2 <= 200, start=20)
@variable(m, 2 <= x3 <= 200, start=20)
@variable(m, 2 <= x4 <= 200, start=20)
@variable(m, 2 <= x5 <= 200, start=20)
@variable(m, 2 <= x6 <= 200, start=20)
@variable(m, 2 <= x7 <= 200, start=20)
@variable(m, 2 <= x8 <= 200, start=20)
@variable(m, 2 <= x9 <= 200, start=20)
@variable(m, 2 <= x10 <= 200, start=20)
@variable(m, 2 <= x11 <= 200, start=20)
@variable(m, 200 <= x12 <= 1000, start=200)
@variable(m, 200 <= x13 <= 1000, start=200)
@variable(m, 200 <= x14 <= 1000, start=200)
@variable(m, 200 <= x15 <= 1000, start=200)
@variable(m, 200 <= x16 <= 1000, start=200)
@variable(m, 200 <= x17 <= 1000, start=200)
@variable(m, 200 <= x18 <= 1000, start=200)
@variable(m, 200 <= x19 <= 1000, start=200)
@variable(m, 200 <= x20 <= 1000, start=200)
@variable(m, 200 <= x21 <= 1000, start=200)
@variable(m, 200 <= x22 <= 1000, start=200)
@variable(m, 500 <= x23 <= 500, start=500)
@variable(m, 200 <= x24 <= 1000, start=200)
@variable(m, 200 <= x25 <= 1000, start=200)
@variable(m, 200 <= x26 <= 1000, start=200)
@variable(m, 200 <= x27 <= 1000, start=200)
@variable(m, 200 <= x28 <= 1000, start=200)
@variable(m, 200 <= x29 <= 1000, start=200)
@variable(m, 600 <= x30 <= 600, start=600)
@variable(m, 200 <= x31 <= 1000, start=200)
@variable(m, 200 <= x32 <= 1000, start=200)
@variable(m, 200 <= x33 <= 1000, start=200)
@variable(m, 300 <= x34 <= 300, start=300)
@variable(m, 4 <= x35 <= 36, start=18)
@variable(m, 4 <= x36 <= 36, start=18)
@variable(m, 4 <= x37 <= 36, start=18)
@variable(m, 4 <= x38 <= 18, start=18)
@variable(m, 4 <= x39 <= 18, start=18)
@variable(m, 4 <= x40 <= 18, start=18)
@variable(m, 4 <= x41 <= 18, start=18)
@variable(m, 4 <= x42 <= 18, start=18)
@variable(m, 4 <= x43 <= 18, start=18)
@variable(m, 4 <= x44 <= 18, start=18)
@variable(m, 4 <= x45 <= 18, start=18)
@variable(m, 600 <= x46 <= 600, start=600)
@variable(m, 200 <= x47 <= 600, start=200)
@variable(m, 200 <= x48 <= 600, start=200)
@variable(m, 200 <= x49 <= 600, start=200)
@variable(m, 200 <= x50 <= 600, start=200)
@variable(m, 200 <= x51 <= 600, start=200)
@variable(m, 200 <= x52 <= 600, start=200)
@variable(m, 200 <= x53 <= 600, start=200)
@variable(m, 200 <= x54 <= 600, start=200)
@variable(m, 200 <= x55 <= 600, start=200)
@variable(m, 200 <= x56 <= 600, start=200)
@variable(m, 200 <= x57 <= 600, start=200)
@variable(m, 1 <= x58 <= 2, start=1)
@variable(m, 1 <= x59 <= 2, start=1)
@variable(m, 1 <= x60 <= 2, start=1)
@variable(m, 1 <= x61 <= 2, start=1)
@variable(m, 1 <= x62 <= 2, start=1)
@variable(m, 1 <= x63 <= 2, start=1)
@variable(m, 1 <= x64 <= 2, start=1)
@variable(m, 1 <= x65 <= 2, start=1)
@variable(m, 1 <= x66 <= 2, start=1)
@variable(m, 1 <= x67 <= 2, start=1)
@variable(m, 0 <= x68, start=0)
@variable(m, 0 <= x69, start=0)
@variable(m, 0 <= x70, start=0)
@variable(m, 0 <= x71, start=0)
@variable(m, 0 <= x72, start=0)
@variable(m, 0 <= x73, start=0)
@variable(m, 0 <= x74, start=0)
@variable(m, 0 <= x75, start=0)
@variable(m, 0 <= x76, start=0)
@variable(m, 0 <= x77, start=0)
@variable(m, 0 <= b78 <= 1, binary=true, start=0)
@variable(m, 0 <= b79 <= 1, binary=true, start=0)
@variable(m, 0 <= b80 <= 1, binary=true, start=0)
@variable(m, 0 <= b81 <= 1, binary=true, start=0)
@variable(m, 0 <= b82 <= 1, binary=true, start=0)
@variable(m, 0 <= b83 <= 1, binary=true, start=0)
@variable(m, 0 <= b84 <= 1, binary=true, start=0)
@variable(m, 0 <= b85 <= 1, binary=true, start=0)
@variable(m, 0 <= b86 <= 1, binary=true, start=0)
@variable(m, 0 <= b87 <= 1, binary=true, start=0)
@variable(m, x88, start=0)
@variable(m, x89, start=0)
@variable(m, x90, start=0)

@objective(m, Min, x88 + x89 + x90)

@constraint(m, x12 - x24 >= 0)

@constraint(m, x13 - x25 >= 0)

@constraint(m, x14 - x26 >= 0)

@constraint(m, x15 - x27 >= 0)

@constraint(m, x16 - x28 >= 0)

@constraint(m, x17 - x29 >= 0)

@constraint(m, x18 - x30 >= 0)

@constraint(m, x19 - x31 >= 0)

@constraint(m, x20 - x32 >= 0)

@constraint(m, x21 - x33 >= 0)

@constraint(m, x22 - x34 >= 0)

@constraint(m, x1 + x2 + x3 + x4 + x5 + x6 + x7 == 175)

@constraint(m, x1 + x2 + x3 + x8 + x9 + x10 + x11 == 200)

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x35)^5.33333333333333*($(x12)^2 - $(x24)^2)/$(x47)^2 + $(x1) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x36)^5.33333333333333*($(x13)^2 - $(x25)^2)/$(x48)^2 + $(x2) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x37)^5.33333333333333*($(x14)^2 - $(x26)^2)/$(x49)^2 + $(x3) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x38)^5.33333333333333*($(x15)^2 - $(x27)^2)/$(x50)^2 + $(x4) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x39)^5.33333333333333*($(x16)^2 - $(x28)^2)/$(x51)^2 + $(x5) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x40)^5.33333333333333*($(x17)^2 - $(x29)^2)/$(x52)^2 + $(x6) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x41)^5.33333333333333*($(x18)^2 - $(x30)^2)/$(x53)^2 + $(x7) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x42)^5.33333333333333*($(x19)^2 - $(x31)^2)/$(x54)^2 + $(x8) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x43)^5.33333333333333*($(x20)^2 - $(x32)^2)/$(x55)^2 + $(x9) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x44)^5.33333333333333*($(x21)^2 - $(x33)^2)/$(x56)^2 + $(x10) == 0))

JuMP.add_NL_constraint(m, :(-7.58641e-7*$(x45)^5.33333333333333*($(x22)^2 - $(x34)^2)/$(x57)^2 + $(x11) == 0))

JuMP.add_NL_constraint(m, :($(x46) - 0.005*$(x46)*$(b78) - $(x47) == 0))

JuMP.add_NL_constraint(m, :($(x47) - 0.005*$(x47)*$(b79) - $(x48) == 0))

JuMP.add_NL_constraint(m, :($(x48) - 0.005*$(x48)*$(b80) - $(x49) == 0))

JuMP.add_NL_constraint(m, :($(x49) - 0.005*$(x49)*$(b81) - $(x50) - $(x54) == 0))

JuMP.add_NL_constraint(m, :($(x50) - 0.005*$(x50)*$(b82) - $(x51) == 0))

JuMP.add_NL_constraint(m, :($(x51) - 0.005*$(x51)*$(b83) - $(x52) == 0))

JuMP.add_NL_constraint(m, :($(x52) - 0.005*$(x52)*$(b84) - $(x53) == 0))

JuMP.add_NL_constraint(m, :($(x54) - 0.005*$(x54)*$(b85) - $(x55) == 0))

JuMP.add_NL_constraint(m, :($(x55) - 0.005*$(x55)*$(b86) - $(x56) == 0))

JuMP.add_NL_constraint(m, :($(x56) - 0.005*$(x56)*$(b87) - $(x57) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x58)^0.181587301587302)*$(x47) + $(x68) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x59)^0.181587301587302)*$(x48) + $(x69) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x60)^0.181587301587302)*$(x49) + $(x70) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x61)^0.181587301587302)*$(x50) + $(x71) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x61)^0.181587301587302)*$(x54) + $(x71) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x62)^0.181587301587302)*$(x51) + $(x72) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x63)^0.181587301587302)*$(x52) + $(x73) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x64)^0.181587301587302)*$(x53) + $(x74) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x65)^0.181587301587302)*$(x55) + $(x75) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x66)^0.181587301587302)*$(x56) + $(x76) == 0))

JuMP.add_NL_constraint(m, :(-214.9812*(-1 + $(x67)^0.181587301587302)*$(x57) + $(x77) == 0))

JuMP.add_NL_constraint(m, :($(x58)*$(x23) - $(x12) == 0))

JuMP.add_NL_constraint(m, :($(x59)*$(x24) - $(x13) == 0))

JuMP.add_NL_constraint(m, :($(x60)*$(x25) - $(x14) == 0))

JuMP.add_NL_constraint(m, :($(x61)*$(x26) - $(x15) == 0))

JuMP.add_NL_constraint(m, :($(x61)*$(x26) - $(x19) == 0))

JuMP.add_NL_constraint(m, :($(x62)*$(x27) - $(x16) == 0))

JuMP.add_NL_constraint(m, :($(x63)*$(x28) - $(x17) == 0))

JuMP.add_NL_constraint(m, :($(x64)*$(x29) - $(x18) == 0))

JuMP.add_NL_constraint(m, :($(x65)*$(x31) - $(x20) == 0))

JuMP.add_NL_constraint(m, :($(x66)*$(x32) - $(x21) == 0))

JuMP.add_NL_constraint(m, :($(x67)*$(x33) - $(x22) == 0))

@constraint(m, x58 - b78 <= 1)

@constraint(m, x59 - b79 <= 1)

@constraint(m, x60 - b80 <= 1)

@constraint(m, x61 - b81 <= 1)

@constraint(m, x62 - b82 <= 1)

@constraint(m, x63 - b83 <= 1)

@constraint(m, x64 - b84 <= 1)

@constraint(m, x65 - b85 <= 1)

@constraint(m, x66 - b86 <= 1)

@constraint(m, x67 - b87 <= 1)

JuMP.add_NL_constraint(m, :(-(870*$(x1)*$(x35) + 870*$(x2)*$(x36) + 870*$(x3)*$(x37) + 870*$(x4)*$(x38) + 870*$(x5)*
    $(x39) + 870*$(x6)*$(x40) + 870*$(x7)*$(x41) + 870*$(x8)*$(x42) + 870*$(x9)*$(x43) + 870*$(x10)*$(x44) + 870*$(x11)*
    $(x45)) + $(x88) == 0))

@constraint(m,  - 70*x68 - 70*x69 - 70*x70 - 70*x71 - 70*x72 - 70*x73 - 70*x74 - 70*x75 - 70*x76 - 70*x77 - 10000*b78
     - 10000*b79 - 10000*b80 - 10000*b81 - 10000*b82 - 10000*b83 - 10000*b84 - 10000*b85 - 10000*b86 - 10000*b87 + x89
     == 0)

@constraint(m,  - 8*x68 - 8*x69 - 8*x70 - 8*x71 - 8*x72 - 8*x73 - 8*x74 - 8*x75 - 8*x76 - 8*x77 + x90 == 0)
