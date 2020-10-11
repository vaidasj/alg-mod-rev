#  MCP written by GAMS Convert at 10/11/20 12:28:02
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         92       14       78        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         92       92        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        329      287       42        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=1)
@variable(m, 0 <= x2, start=1)
@variable(m, 0 <= x3, start=1)
@variable(m, 0 <= x4, start=25)
@variable(m, 0 <= x5, start=25)
@variable(m, 0 <= x6, start=25)
@variable(m, 0 <= x7, start=1)
@variable(m, 0 <= x8, start=1)
@variable(m, 0 <= x9, start=1)
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
@variable(m, 0 <= x29, start=0)
@variable(m, 0 <= x30, start=0)
@variable(m, 0 <= x31, start=0)
@variable(m, 0 <= x32, start=0)
@variable(m, 0 <= x33, start=0)
@variable(m, 0 <= x34, start=0)
@variable(m, 0 <= x35, start=0)
@variable(m, 0 <= x36, start=0)
@variable(m, 0 <= x37, start=0)
@variable(m, 0 <= x38, start=0)
@variable(m, 0 <= x39, start=0)
@variable(m, 0 <= x40, start=0)
@variable(m, 0 <= x41, start=0)
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=0)
@variable(m, 0 <= x44, start=0)
@variable(m, 0 <= x45, start=0)
@variable(m, 0 <= x46, start=0)
@variable(m, 0 <= x47, start=0)
@variable(m, 0 <= x48, start=0)
@variable(m, 0 <= x49, start=0)
@variable(m, 0 <= x50, start=0)
@variable(m, 0 <= x51, start=0)
@variable(m, 0 <= x52, start=0)
@variable(m, 0 <= x53, start=0)
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=0)
@variable(m, 0 <= x56, start=0)
@variable(m, 0 <= x57, start=0)
@variable(m, 0 <= x58, start=0)
@variable(m, 0 <= x59, start=0)
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= x66, start=0)
@variable(m, 0 <= x67, start=0)
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
@variable(m, 0 <= x78, start=0)
@variable(m, 0 <= x79, start=0)
@variable(m, 0 <= x80, start=0)
@variable(m, 0 <= x81, start=0)
@variable(m, 0 <= x82, start=0)
@variable(m, 0 <= x83, start=0)
@variable(m, 0 <= x84, start=0)
@variable(m, 0 <= x85, start=0)
@variable(m, 0 <= x86, start=0)
@variable(m, 0 <= x87, start=0)
@variable(m, 0 <= x88, start=0)
@variable(m, 0 <= x89, start=0)
@variable(m, 0 <= x90, start=0)
@variable(m, 0 <= x91, start=0)
@variable(m, 0 <= x92, start=0)

@constraint(m, 0.2*x1 + x7 >= 19)

@constraint(m, 0.01*x2 + x8 >= 27)

@constraint(m, 0.3*x3 + x9 >= 30)

@constraint(m, x4 - x42 - x51 - x52 + x55 + x58 >= 0)

@constraint(m,  - x43 - x53 + x61 >= 0)

@constraint(m,  - x44 - x54 + x62 >= 0)

@constraint(m, x51 - x55 - x56 - x57 + x59 + x63 >= 0)

@constraint(m, x52 + x56 - x58 - x59 - x60 + x64 >= 0)

@constraint(m, x53 + x54 + x57 + x60 - x61 - x62 - x63 - x64 >= 0)

@constraint(m,  - x45 - x65 - x66 + x69 + x72 >= 0)

@constraint(m, x5 - x46 - x67 + x75 >= 0)

@constraint(m,  - x47 - x68 + x76 >= 0)

@constraint(m, x65 - x69 - x70 - x71 + x73 + x77 >= 0)

@constraint(m, x66 + x70 - x72 - x73 - x74 + x78 >= 0)

@constraint(m, x67 + x68 + x71 + x74 - x75 - x76 - x77 - x78 >= 0)

@constraint(m,  - x48 - x79 - x80 + x83 + x86 >= 0)

@constraint(m,  - x49 - x81 + x89 >= 0)

@constraint(m, x6 - x50 - x82 + x90 >= 0)

@constraint(m, x79 - x83 - x84 - x85 + x87 + x91 >= 0)

@constraint(m, x80 + x84 - x86 - x87 - x88 + x92 >= 0)

@constraint(m, x81 + x82 + x85 + x88 - x89 - x90 - x91 - x92 >= 0)

@constraint(m,  - x1 + x42 + x45 + x48 >= 0)

@constraint(m,  - x2 + x43 + x46 + x49 >= 0)

@constraint(m,  - x3 + x44 + x47 + x50 >= 0)

@constraint(m,  - x7 + x24 + 0.2*x42 >= 0)

@constraint(m,  - x8 + x25 + 0.01*x43 >= 0)

@constraint(m,  - x9 + x26 + 0.3*x44 >= 0)

@constraint(m,  - x7 + x30 + 0.2*x45 >= 0)

@constraint(m,  - x8 + x31 + 0.01*x46 >= 0)

@constraint(m,  - x9 + x32 + 0.3*x47 >= 0)

@constraint(m,  - x7 + x36 + 0.2*x48 >= 0)

@constraint(m,  - x8 + x37 + 0.01*x49 >= 0)

@constraint(m,  - x9 + x38 + 0.3*x50 >= 0)

JuMP.add_NL_constraint(m, :(0.5*$(x10)*$(x10) + $(x24) - $(x27) >= -1))

JuMP.add_NL_constraint(m, :(0.2*$(x11)*$(x11) + $(x24) - $(x28) >= -2))

JuMP.add_NL_constraint(m, :(0.3*$(x12)*$(x12) + $(x25) - $(x29) >= -3))

JuMP.add_NL_constraint(m, :(0.4*$(x13)*$(x13) + $(x26) - $(x29) >= -1))

JuMP.add_NL_constraint(m, :(0.3*$(x14)*$(x14) - $(x24) + $(x27) >= -2))

JuMP.add_NL_constraint(m, :(0.1*$(x15)*$(x15) + $(x27) - $(x28) >= -1))

JuMP.add_NL_constraint(m, :(0.1*$(x16)*$(x16) + $(x27) - $(x29) >= -1))

JuMP.add_NL_constraint(m, :(0.5*$(x17)*$(x17) - $(x24) + $(x28) >= -3))

JuMP.add_NL_constraint(m, :(0.2*$(x18)*$(x18) - $(x27) + $(x28) >= -2))

JuMP.add_NL_constraint(m, :($(x19)*$(x19) + $(x28) - $(x29) >= -1))

JuMP.add_NL_constraint(m, :(0.25*$(x20)*$(x20) - $(x25) + $(x29) >= -2))

JuMP.add_NL_constraint(m, :(0.2*$(x21)*$(x21) - $(x26) + $(x29) >= -2))

JuMP.add_NL_constraint(m, :(0.9*$(x22)*$(x22) - $(x27) + $(x29) >= -1))

JuMP.add_NL_constraint(m, :(0.8*$(x23)*$(x23) - $(x28) + $(x29) >= -3))

JuMP.add_NL_constraint(m, :(0.5*$(x10)*$(x10) + $(x30) - $(x33) >= -1))

JuMP.add_NL_constraint(m, :(0.2*$(x11)*$(x11) + $(x30) - $(x34) >= -2))

JuMP.add_NL_constraint(m, :(0.3*$(x12)*$(x12) + $(x31) - $(x35) >= -3))

JuMP.add_NL_constraint(m, :(0.4*$(x13)*$(x13) + $(x32) - $(x35) >= -1))

JuMP.add_NL_constraint(m, :(0.3*$(x14)*$(x14) - $(x30) + $(x33) >= -2))

JuMP.add_NL_constraint(m, :(0.1*$(x15)*$(x15) + $(x33) - $(x34) >= -1))

JuMP.add_NL_constraint(m, :(0.1*$(x16)*$(x16) + $(x33) - $(x35) >= -1))

JuMP.add_NL_constraint(m, :(0.5*$(x17)*$(x17) - $(x30) + $(x34) >= -3))

JuMP.add_NL_constraint(m, :(0.2*$(x18)*$(x18) - $(x33) + $(x34) >= -2))

JuMP.add_NL_constraint(m, :($(x19)*$(x19) + $(x34) - $(x35) >= -1))

JuMP.add_NL_constraint(m, :(0.25*$(x20)*$(x20) - $(x31) + $(x35) >= -2))

JuMP.add_NL_constraint(m, :(0.2*$(x21)*$(x21) - $(x32) + $(x35) >= -2))

JuMP.add_NL_constraint(m, :(0.9*$(x22)*$(x22) - $(x33) + $(x35) >= -1))

JuMP.add_NL_constraint(m, :(0.8*$(x23)*$(x23) - $(x34) + $(x35) >= -3))

JuMP.add_NL_constraint(m, :(0.5*$(x10)*$(x10) + $(x36) - $(x39) >= -1))

JuMP.add_NL_constraint(m, :(0.2*$(x11)*$(x11) + $(x36) - $(x40) >= -2))

JuMP.add_NL_constraint(m, :(0.3*$(x12)*$(x12) + $(x37) - $(x41) >= -3))

JuMP.add_NL_constraint(m, :(0.4*$(x13)*$(x13) + $(x38) - $(x41) >= -1))

JuMP.add_NL_constraint(m, :(0.3*$(x14)*$(x14) - $(x36) + $(x39) >= -2))

JuMP.add_NL_constraint(m, :(0.1*$(x15)*$(x15) + $(x39) - $(x40) >= -1))

JuMP.add_NL_constraint(m, :(0.1*$(x16)*$(x16) + $(x39) - $(x41) >= -1))

JuMP.add_NL_constraint(m, :(0.5*$(x17)*$(x17) - $(x36) + $(x40) >= -3))

JuMP.add_NL_constraint(m, :(0.2*$(x18)*$(x18) - $(x39) + $(x40) >= -2))

JuMP.add_NL_constraint(m, :($(x19)*$(x19) + $(x40) - $(x41) >= -1))

JuMP.add_NL_constraint(m, :(0.25*$(x20)*$(x20) - $(x37) + $(x41) >= -2))

JuMP.add_NL_constraint(m, :(0.2*$(x21)*$(x21) - $(x38) + $(x41) >= -2))

JuMP.add_NL_constraint(m, :(0.9*$(x22)*$(x22) - $(x39) + $(x41) >= -1))

JuMP.add_NL_constraint(m, :(0.8*$(x23)*$(x23) - $(x40) + $(x41) >= -3))

@constraint(m, x4 - x24 >= -1)

@constraint(m, 0.8*x5 - x31 >= -2)

@constraint(m, 0.6*x6 - x38 >= -1.5)

@constraint(m, x10 - x51 - x65 - x79 == 0)

@constraint(m, x11 - x52 - x66 - x80 == 0)

@constraint(m, x12 - x53 - x67 - x81 == 0)

@constraint(m, x13 - x54 - x68 - x82 == 0)

@constraint(m, x14 - x55 - x69 - x83 == 0)

@constraint(m, x15 - x56 - x70 - x84 == 0)

@constraint(m, x16 - x57 - x71 - x85 == 0)

@constraint(m, x17 - x58 - x72 - x86 == 0)

@constraint(m, x18 - x59 - x73 - x87 == 0)

@constraint(m, x19 - x60 - x74 - x88 == 0)

@constraint(m, x20 - x61 - x75 - x89 == 0)

@constraint(m, x21 - x62 - x76 - x90 == 0)

@constraint(m, x22 - x63 - x77 - x91 == 0)

@constraint(m, x23 - x64 - x78 - x92 == 0)
