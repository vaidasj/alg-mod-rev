#  MCP written by GAMS Convert at 10/11/20 12:29:06
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        126        0      126        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        126      126        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        733      285      448        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=1)
@variable(m, 0 <= x2, start=1)
@variable(m, 0 <= x3, start=1)
@variable(m, 0 <= x4, start=1)
@variable(m, 0 <= x5, start=1)
@variable(m, 0 <= x6, start=1)
@variable(m, 0 <= x7, start=1)
@variable(m, 0 <= x8, start=1)
@variable(m, 0 <= x9, start=1)
@variable(m, 0 <= x10, start=1)
@variable(m, 0 <= x11, start=1)
@variable(m, 0 <= x12, start=1)
@variable(m, 0 <= x13, start=1)
@variable(m, 0 <= x14, start=1)
@variable(m, 0 <= x15, start=1)
@variable(m, 0 <= x16, start=1)
@variable(m, 0 <= x17, start=1)
@variable(m, 0 <= x18, start=1)
@variable(m, 0 <= x19, start=1)
@variable(m, 0 <= x20, start=1)
@variable(m, 0 <= x21, start=1)
@variable(m, 0 <= x22, start=1)
@variable(m, 0 <= x23, start=1)
@variable(m, 0 <= x24, start=1)
@variable(m, 0 <= x25, start=1)
@variable(m, 0 <= x26, start=1)
@variable(m, 0 <= x27, start=1)
@variable(m, 0 <= x28, start=1)
@variable(m, 0 <= x29, start=1)
@variable(m, 0 <= x30, start=1)
@variable(m, 0 <= x31, start=1)
@variable(m, 0 <= x32, start=1)
@variable(m, 0 <= x33, start=1)
@variable(m, 0 <= x34, start=1)
@variable(m, 0 <= x35, start=1)
@variable(m, 0 <= x36, start=1)
@variable(m, 0 <= x37, start=1)
@variable(m, 0 <= x38, start=1)
@variable(m, 0 <= x39, start=1)
@variable(m, 0 <= x40, start=1)
@variable(m, 0 <= x41, start=1)
@variable(m, 0 <= x42, start=1)
@variable(m, 0 <= x43, start=1)
@variable(m, 0 <= x44, start=1)
@variable(m, 0 <= x45, start=1)
@variable(m, 0 <= x46, start=1)
@variable(m, 0 <= x47, start=1)
@variable(m, 0 <= x48, start=1)
@variable(m, 0 <= x49, start=1)
@variable(m, 0 <= x50, start=1)
@variable(m, 0 <= x51, start=1)
@variable(m, 0 <= x52, start=1)
@variable(m, 0 <= x53, start=1)
@variable(m, 0 <= x54, start=1)
@variable(m, 0 <= x55, start=1)
@variable(m, 0 <= x56, start=1)
@variable(m, 0 <= x57, start=1)
@variable(m, 0 <= x58, start=1)
@variable(m, 0 <= x59, start=1)
@variable(m, 0 <= x60, start=1)
@variable(m, 0 <= x61, start=1)
@variable(m, 0 <= x62, start=1)
@variable(m, 0 <= x63, start=1)
@variable(m, 0 <= x64, start=1)
@variable(m, 0 <= x65, start=1)
@variable(m, 0 <= x66, start=1)
@variable(m, 0 <= x67, start=1)
@variable(m, 0 <= x68, start=1)
@variable(m, 0 <= x69, start=1)
@variable(m, 0 <= x70, start=1)
@variable(m, 0 <= x71, start=1)
@variable(m, 0 <= x72, start=1)
@variable(m, 0 <= x73, start=1)
@variable(m, 0 <= x74, start=1)
@variable(m, 0 <= x75, start=1)
@variable(m, 0 <= x76, start=1)
@variable(m, 0 <= x77, start=1)
@variable(m, 0 <= x78, start=1)
@variable(m, 0 <= x79, start=1)
@variable(m, 0 <= x80, start=1)
@variable(m, 0 <= x81, start=1)
@variable(m, 0 <= x82, start=1)
@variable(m, 0 <= x83, start=1)
@variable(m, 0 <= x84, start=1)
@variable(m, 0 <= x85, start=1)
@variable(m, 0 <= x86, start=1)
@variable(m, 0 <= x87, start=1)
@variable(m, 0 <= x88, start=1)
@variable(m, 0 <= x89, start=1)
@variable(m, 0 <= x90, start=1)
@variable(m, 0 <= x91, start=1)
@variable(m, 0 <= x92, start=1)
@variable(m, 0 <= x93, start=1)
@variable(m, 0 <= x94, start=1)
@variable(m, 0 <= x95, start=1)
@variable(m, 0 <= x96, start=1)
@variable(m, 0 <= x97, start=0)
@variable(m, 0 <= x98, start=0)
@variable(m, 0 <= x99, start=0)
@variable(m, 0 <= x100, start=0)
@variable(m, 0 <= x101, start=0)
@variable(m, 0 <= x102, start=0)
@variable(m, 0 <= x103, start=0)
@variable(m, 0 <= x104, start=0)
@variable(m, 0 <= x105, start=0)
@variable(m, 0 <= x106, start=0)
@variable(m, 0 <= x107, start=0)
@variable(m, 0 <= x108, start=0)
@variable(m, 0.001 <= x109, start=1)
@variable(m, 0.001 <= x110, start=1)
@variable(m, 0.001 <= x111, start=1)
@variable(m, 0.001 <= x112, start=1)
@variable(m, 0.001 <= x113, start=1)
@variable(m, 0.001 <= x114, start=1)
@variable(m, 0.001 <= x115, start=1)
@variable(m, 0.001 <= x116, start=1)
@variable(m, 0.001 <= x117, start=1)
@variable(m, 0.001 <= x118, start=1)
@variable(m, 0.001 <= x119, start=1)
@variable(m, 0.001 <= x120, start=1)
@variable(m, 0 <= x121, start=1)
@variable(m, 1 <= x122 <= 1, start=1)
@variable(m, 0.1 <= x123, start=1)
@variable(m, 0.1 <= x124, start=1)
@variable(m, 0.1 <= x125, start=1)
@variable(m, 0.1 <= x126, start=1)

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x109))^0.1 + $(x1) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x109))^0.3 + 2*$(x2) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x109))^0.5 + 3*$(x3) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x109))^0.7 + 4*$(x4) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x110))^0.1 + $(x5) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x110))^0.3 + 2*$(x6) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x110))^0.5 + 3*$(x7) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x110))^0.7 + 4*$(x8) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x111))^0.1 + $(x9) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x111))^0.3 + 2*$(x10) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x111))^0.5 + 3*$(x11) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x111))^0.7 + 4*$(x12) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x112))^0.1 + $(x13) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x112))^0.3 + 2*$(x14) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x112))^0.5 + 3*$(x15) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x112))^0.7 + 4*$(x16) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x113))^0.1 + $(x17) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x113))^0.3 + 2*$(x18) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x113))^0.5 + 3*$(x19) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x113))^0.7 + 4*$(x20) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x114))^0.1 + $(x21) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x114))^0.3 + 2*$(x22) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x114))^0.5 + 3*$(x23) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x114))^0.7 + 4*$(x24) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x115))^0.1 + $(x25) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x115))^0.3 + 2*$(x26) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x115))^0.5 + 3*$(x27) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x115))^0.7 + 4*$(x28) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x116))^0.1 + $(x29) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x116))^0.3 + 2*$(x30) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x116))^0.5 + 3*$(x31) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x116))^0.7 + 4*$(x32) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x117))^0.1 + $(x33) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x117))^0.3 + 2*$(x34) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x117))^0.5 + 3*$(x35) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x117))^0.7 + 4*$(x36) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x118))^0.1 + $(x37) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x118))^0.3 + 2*$(x38) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x118))^0.5 + 3*$(x39) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x118))^0.7 + 4*$(x40) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x119))^0.1 + $(x41) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x119))^0.3 + 2*$(x42) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x119))^0.5 + 3*$(x43) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x119))^0.7 + 4*$(x44) >= 0))

JuMP.add_NL_constraint(m, :(-(1.11111111111111*$(x122))^0.9*(10*$(x120))^0.1 + $(x45) >= 0))

JuMP.add_NL_constraint(m, :(-(1.42857142857143*$(x122))^0.7*(3.33333333333333*$(x120))^0.3 + 2*$(x46) >= 0))

JuMP.add_NL_constraint(m, :(-(2*$(x122))^0.5*(2*$(x120))^0.5 + 3*$(x47) >= 0))

JuMP.add_NL_constraint(m, :(-(3.33333333333333*$(x122))^0.3*(1.42857142857143*$(x120))^0.7 + 4*$(x48) >= 0))

@constraint(m, x1 + 0.075*x121 - x123 >= 0)

@constraint(m, x2 + 0.03*x121 - x124 >= 0)

@constraint(m, x3 + 0.02*x121 - x125 >= 0)

@constraint(m, x4 + 0.05*x121 - x126 >= 0)

@constraint(m, x5 + 0.225*x121 - x123 >= 0)

@constraint(m, x6 + 0.09*x121 - x124 >= 0)

@constraint(m, x7 + 0.06*x121 - x125 >= 0)

@constraint(m, x8 + 0.15*x121 - x126 >= 0)

@constraint(m, x9 + 0.375*x121 - x123 >= 0)

@constraint(m, x10 + 0.15*x121 - x124 >= 0)

@constraint(m, x11 + 0.1*x121 - x125 >= 0)

@constraint(m, x12 + 0.25*x121 - x126 >= 0)

@constraint(m, x13 + 0.525*x121 - x123 >= 0)

@constraint(m, x14 + 0.21*x121 - x124 >= 0)

@constraint(m, x15 + 0.14*x121 - x125 >= 0)

@constraint(m, x16 + 0.35*x121 - x126 >= 0)

@constraint(m, x17 + 0.675*x121 - x123 >= 0)

@constraint(m, x18 + 0.27*x121 - x124 >= 0)

@constraint(m, x19 + 0.18*x121 - x125 >= 0)

@constraint(m, x20 + 0.45*x121 - x126 >= 0)

@constraint(m, x21 + 0.825*x121 - x123 >= 0)

@constraint(m, x22 + 0.33*x121 - x124 >= 0)

@constraint(m, x23 + 0.22*x121 - x125 >= 0)

@constraint(m, x24 + 0.55*x121 - x126 >= 0)

@constraint(m, x25 + 0.975*x121 - x123 >= 0)

@constraint(m, x26 + 0.39*x121 - x124 >= 0)

@constraint(m, x27 + 0.26*x121 - x125 >= 0)

@constraint(m, x28 + 0.65*x121 - x126 >= 0)

@constraint(m, x29 + 1.125*x121 - x123 >= 0)

@constraint(m, x30 + 0.45*x121 - x124 >= 0)

@constraint(m, x31 + 0.3*x121 - x125 >= 0)

@constraint(m, x32 + 0.75*x121 - x126 >= 0)

@constraint(m, x33 + 1.275*x121 - x123 >= 0)

@constraint(m, x34 + 0.51*x121 - x124 >= 0)

@constraint(m, x35 + 0.34*x121 - x125 >= 0)

@constraint(m, x36 + 0.85*x121 - x126 >= 0)

@constraint(m, x37 + 1.425*x121 - x123 >= 0)

@constraint(m, x38 + 0.57*x121 - x124 >= 0)

@constraint(m, x39 + 0.38*x121 - x125 >= 0)

@constraint(m, x40 + 0.95*x121 - x126 >= 0)

@constraint(m, x41 + 1.575*x121 - x123 >= 0)

@constraint(m, x42 + 0.63*x121 - x124 >= 0)

@constraint(m, x43 + 0.42*x121 - x125 >= 0)

@constraint(m, x44 + 1.05*x121 - x126 >= 0)

@constraint(m, x45 + 1.725*x121 - x123 >= 0)

@constraint(m, x46 + 0.69*x121 - x124 >= 0)

@constraint(m, x47 + 0.46*x121 - x125 >= 0)

@constraint(m, x48 + 1.15*x121 - x126 >= 0)

@constraint(m, x109 - 0.0001*x122 >= 0)

@constraint(m, x110 - 0.0001*x122 >= 0)

@constraint(m, x111 - 0.0001*x122 >= 0)

@constraint(m, x112 - 0.0001*x122 >= 0)

@constraint(m, x113 - 0.0001*x122 >= 0)

@constraint(m, x114 - 0.0001*x122 >= 0)

@constraint(m, x115 - 0.0001*x122 >= 0)

@constraint(m, x116 - 0.0001*x122 >= 0)

@constraint(m, x117 - 0.0001*x122 >= 0)

@constraint(m, x118 - 0.0001*x122 >= 0)

@constraint(m, x119 - 0.0001*x122 >= 0)

@constraint(m, x120 - 0.0001*x122 >= 0)

JuMP.add_NL_constraint(m, :(-(0.1*$(x49)*$(x1) + 0.3*$(x50)*$(x2) + 0.5*$(x51)*$(x3) + 0.7*$(x52)*$(x4))/$(x109)
     - $(x97) >= -31.415))

JuMP.add_NL_constraint(m, :(-(0.1*$(x53)*$(x5) + 0.3*$(x54)*$(x6) + 0.5*$(x55)*$(x7) + 0.7*$(x56)*$(x8))/$(x110)
     - $(x98) >= -94.245))

JuMP.add_NL_constraint(m, :(-(0.1*$(x57)*$(x9) + 0.3*$(x58)*$(x10) + 0.5*$(x59)*$(x11) + 0.7*$(x60)*$(x12))/$(x111)
     - $(x99) >= -157.075))

JuMP.add_NL_constraint(m, :(-(0.1*$(x61)*$(x13) + 0.3*$(x62)*$(x14) + 0.5*$(x63)*$(x15) + 0.7*$(x64)*$(x16))/$(x112)
     - $(x100) >= -219.905))

JuMP.add_NL_constraint(m, :(-(0.1*$(x65)*$(x17) + 0.3*$(x66)*$(x18) + 0.5*$(x67)*$(x19) + 0.7*$(x68)*$(x20))/$(x113)
     - $(x101) >= -282.735))

JuMP.add_NL_constraint(m, :(-(0.1*$(x69)*$(x21) + 0.3*$(x70)*$(x22) + 0.5*$(x71)*$(x23) + 0.7*$(x72)*$(x24))/$(x114)
     - $(x102) >= -345.565))

JuMP.add_NL_constraint(m, :(-(0.1*$(x73)*$(x25) + 0.3*$(x74)*$(x26) + 0.5*$(x75)*$(x27) + 0.7*$(x76)*$(x28))/$(x115)
     - $(x103) >= -408.395))

JuMP.add_NL_constraint(m, :(-(0.1*$(x77)*$(x29) + 0.3*$(x78)*$(x30) + 0.5*$(x79)*$(x31) + 0.7*$(x80)*$(x32))/$(x116)
     - $(x104) >= -471.225))

JuMP.add_NL_constraint(m, :(-(0.1*$(x81)*$(x33) + 0.3*$(x82)*$(x34) + 0.5*$(x83)*$(x35) + 0.7*$(x84)*$(x36))/$(x117)
     - $(x105) >= -534.055))

JuMP.add_NL_constraint(m, :(-(0.1*$(x85)*$(x37) + 0.3*$(x86)*$(x38) + 0.5*$(x87)*$(x39) + 0.7*$(x88)*$(x40))/$(x118)
     - $(x106) >= -596.885))

JuMP.add_NL_constraint(m, :(-(0.1*$(x89)*$(x41) + 0.3*$(x90)*$(x42) + 0.5*$(x91)*$(x43) + 0.7*$(x92)*$(x44))/$(x119)
     - $(x107) >= -659.715))

JuMP.add_NL_constraint(m, :(-(0.1*$(x93)*$(x45) + 0.3*$(x94)*$(x46) + 0.5*$(x95)*$(x47) + 0.7*$(x96)*$(x48))/$(x120)
     - $(x108) >= -722.545))

@constraint(m,  - 0.075*x49 - 0.03*x50 - 0.02*x51 - 0.05*x52 - 0.225*x53 - 0.09*x54 - 0.06*x55 - 0.15*x56 - 0.375*x57
     - 0.15*x58 - 0.1*x59 - 0.25*x60 - 0.525*x61 - 0.21*x62 - 0.14*x63 - 0.35*x64 - 0.675*x65 - 0.27*x66 - 0.18*x67
     - 0.45*x68 - 0.825*x69 - 0.33*x70 - 0.22*x71 - 0.55*x72 - 0.975*x73 - 0.39*x74 - 0.26*x75 - 0.65*x76 - 1.125*x77
     - 0.45*x78 - 0.3*x79 - 0.75*x80 - 1.275*x81 - 0.51*x82 - 0.34*x83 - 0.85*x84 - 1.425*x85 - 0.57*x86 - 0.38*x87
     - 0.95*x88 - 1.575*x89 - 0.63*x90 - 0.42*x91 - 1.05*x92 - 1.725*x93 - 0.69*x94 - 0.46*x95 - 1.15*x96 >= -20)

JuMP.add_NL_constraint(m, :(-(0.9*$(x49)*$(x1) + 0.7*$(x50)*$(x2) + 0.5*$(x51)*$(x3) + 0.3*$(x52)*$(x4) + 0.9*$(x53)*
    $(x5) + 0.7*$(x54)*$(x6) + 0.5*$(x55)*$(x7) + 0.3*$(x56)*$(x8) + 0.9*$(x57)*$(x9) + 0.7*$(x58)*$(x10) + 0.5*$(x59)*
    $(x11) + 0.3*$(x60)*$(x12) + 0.9*$(x61)*$(x13) + 0.7*$(x62)*$(x14) + 0.5*$(x63)*$(x15) + 0.3*$(x64)*$(x16) + 0.9*
    $(x65)*$(x17) + 0.7*$(x66)*$(x18) + 0.5*$(x67)*$(x19) + 0.3*$(x68)*$(x20) + 0.9*$(x69)*$(x21) + 0.7*$(x70)*$(x22) + 
    0.5*$(x71)*$(x23) + 0.3*$(x72)*$(x24) + 0.9*$(x73)*$(x25) + 0.7*$(x74)*$(x26) + 0.5*$(x75)*$(x27) + 0.3*$(x76)*
    $(x28) + 0.9*$(x77)*$(x29) + 0.7*$(x78)*$(x30) + 0.5*$(x79)*$(x31) + 0.3*$(x80)*$(x32) + 0.9*$(x81)*$(x33) + 0.7*
    $(x82)*$(x34) + 0.5*$(x83)*$(x35) + 0.3*$(x84)*$(x36) + 0.9*$(x85)*$(x37) + 0.7*$(x86)*$(x38) + 0.5*$(x87)*$(x39) + 
    0.3*$(x88)*$(x40) + 0.9*$(x89)*$(x41) + 0.7*$(x90)*$(x42) + 0.5*$(x91)*$(x43) + 0.3*$(x92)*$(x44) + 0.9*$(x93)*
    $(x45) + 0.7*$(x94)*$(x46) + 0.5*$(x95)*$(x47) + 0.3*$(x96)*$(x48)) + 30*$(x122) >= 0))

JuMP.add_NL_constraint(m, :($(x123)*($(x49) + $(x53) + $(x57) + $(x61) + $(x65) + $(x69) + $(x73) + $(x77) + $(x81) + 
    $(x85) + $(x89) + $(x93)) - 0.3*($(x109)*(31.415 - $(x97)) + $(x110)*(94.245 - $(x98)) + $(x111)*(157.075 - $(x99))
     + $(x112)*(219.905 - $(x100)) + $(x113)*(282.735 - $(x101)) + $(x114)*(345.565 - $(x102)) + $(x115)*(408.395 - 
    $(x103)) + $(x116)*(471.225 - $(x104)) + $(x117)*(534.055 - $(x105)) + $(x118)*(596.885 - $(x106)) + $(x119)*(
    659.715 - $(x107)) + $(x120)*(722.545 - $(x108))) - 12*$(x121) - 6*$(x122) >= 0))

JuMP.add_NL_constraint(m, :($(x124)*($(x50) + $(x54) + $(x58) + $(x62) + $(x66) + $(x70) + $(x74) + $(x78) + $(x82) + 
    $(x86) + $(x90) + $(x94)) - 0.3*($(x109)*(31.415 - $(x97)) + $(x110)*(94.245 - $(x98)) + $(x111)*(157.075 - $(x99))
     + $(x112)*(219.905 - $(x100)) + $(x113)*(282.735 - $(x101)) + $(x114)*(345.565 - $(x102)) + $(x115)*(408.395 - 
    $(x103)) + $(x116)*(471.225 - $(x104)) + $(x117)*(534.055 - $(x105)) + $(x118)*(596.885 - $(x106)) + $(x119)*(
    659.715 - $(x107)) + $(x120)*(722.545 - $(x108))) - 4*$(x121) - 9*$(x122) >= 0))

JuMP.add_NL_constraint(m, :($(x125)*($(x51) + $(x55) + $(x59) + $(x63) + $(x67) + $(x71) + $(x75) + $(x79) + $(x83) + 
    $(x87) + $(x91) + $(x95)) - 0.2*($(x109)*(31.415 - $(x97)) + $(x110)*(94.245 - $(x98)) + $(x111)*(157.075 - $(x99))
     + $(x112)*(219.905 - $(x100)) + $(x113)*(282.735 - $(x101)) + $(x114)*(345.565 - $(x102)) + $(x115)*(408.395 - 
    $(x103)) + $(x116)*(471.225 - $(x104)) + $(x117)*(534.055 - $(x105)) + $(x118)*(596.885 - $(x106)) + $(x119)*(
    659.715 - $(x107)) + $(x120)*(722.545 - $(x108))) - 2*$(x121) - 3*$(x122) >= 0))

JuMP.add_NL_constraint(m, :($(x126)*($(x52) + $(x56) + $(x60) + $(x64) + $(x68) + $(x72) + $(x76) + $(x80) + $(x84) + 
    $(x88) + $(x92) + $(x96)) - 0.2*($(x109)*(31.415 - $(x97)) + $(x110)*(94.245 - $(x98)) + $(x111)*(157.075 - $(x99))
     + $(x112)*(219.905 - $(x100)) + $(x113)*(282.735 - $(x101)) + $(x114)*(345.565 - $(x102)) + $(x115)*(408.395 - 
    $(x103)) + $(x116)*(471.225 - $(x104)) + $(x117)*(534.055 - $(x105)) + $(x118)*(596.885 - $(x106)) + $(x119)*(
    659.715 - $(x107)) + $(x120)*(722.545 - $(x108))) - 2*$(x121) - 9*$(x122) >= 0))
