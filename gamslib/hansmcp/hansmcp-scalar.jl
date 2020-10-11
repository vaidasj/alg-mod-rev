#  MCP written by GAMS Convert at 10/11/20 12:28:59
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         44        0       44        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         44       44        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        367      334       33        0
#  Cannot handle MCP


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1 <= 1, start=1)
@variable(m, 1E-5 <= x2, start=1)
@variable(m, 1E-5 <= x3, start=1)
@variable(m, 1E-5 <= x4, start=1)
@variable(m, 1E-5 <= x5, start=1)
@variable(m, 1E-5 <= x6, start=1)
@variable(m, 1E-5 <= x7, start=1)
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

JuMP.add_NL_constraint(m, :(-(0.1*$(x41)/$(x1) + 0.2*$(x42)/$(x1) + 0.3*$(x43)/$(x1) + 0.1*$(x44)/$(x1)) + 5*$(x15)
     - 3.5*$(x16) - 0.1*$(x17) - 0.7*$(x19) + $(x27) - $(x34) >= 0))

JuMP.add_NL_constraint(m, :(-(0.2*$(x41)/$(x2) + 0.2*$(x42)/$(x2) + 0.2*$(x43)/$(x2) + 0.2*$(x44)/$(x2)) - 0.9*$(x15)
     + 5*$(x16) - 0.1*$(x17) - 0.8*$(x19) + $(x28) - $(x35) >= 0))

JuMP.add_NL_constraint(m, :(-(0.1*$(x41)/$(x3) + 0.1*$(x42)/$(x3) + 0.3*$(x43)/$(x3) + 0.1*$(x44)/$(x3)) - 0.2*$(x15)
     - 0.5*$(x16) + 2*$(x17) - 0.1*$(x18) - 0.1*$(x19) - 0.8*$(x20) - 0.4*$(x21) - 0.1*$(x22) - 0.1*$(x23) - 0.1*$(x24)
     + $(x29) - $(x36) >= 0))

JuMP.add_NL_constraint(m, :(-(0.1*$(x41)/$(x4) + 0.1*$(x42)/$(x4) + 0.1*$(x43)/$(x4) + 0.1*$(x44)/$(x4)) - $(x15)
     - 2*$(x16) - 2*$(x17) + 2*$(x18) - 2*$(x19) - 0.4*$(x20) - 1.8*$(x21) - 1.6*$(x22) - 0.8*$(x23) - 0.2*$(x24)
     - 0.4*$(x27) - 0.2*$(x28) - 0.2*$(x29) - 0.4*$(x30) - 0.4*$(x31) - 0.4*$(x32) - 0.4*$(x33) - 0.2*$(x34)
     - 0.2*$(x35) - 0.2*$(x36) - 0.4*$(x37) - 0.4*$(x38) - 0.4*$(x39) - 0.4*$(x40) >= 0))

JuMP.add_NL_constraint(m, :(-(0.1*$(x41)/$(x5) + 0.1*$(x42)/$(x5) + 0.1*$(x43)/$(x5) + 0.1*$(x44)/$(x5)) + 4*$(x19)
     >= 0))

JuMP.add_NL_constraint(m, :(-(0.3*$(x41)/$(x6) + 0.1*$(x42)/$(x6) + 0.1*$(x44)/$(x6)) + 0.32*$(x18) + 0.8*$(x20)
     + 0.36*$(x26) >= 0))

JuMP.add_NL_constraint(m, :(-(0.1*$(x41)/$(x7) + 0.2*$(x42)/$(x7) + 0.3*$(x44)/$(x7)) + 0.4*$(x15) + 1.3*$(x16)
     + 1.2*$(x17) + 1.1*$(x20) + 6*$(x21) + 1.8*$(x22) + 1.2*$(x23) + 0.4*$(x24) + 0.9*$(x25) + $(x30) - $(x37) >= 0))

@constraint(m,  - 0.2*x15 - 0.4*x16 - 0.2*x17 - 0.1*x18 - x20 - 2*x21 + 2*x22 - 0.5*x23 - 0.2*x24 + x31 - x38 >= 0)

@constraint(m,  - x15 - 0.1*x16 - 0.1*x17 - x18 - 0.2*x21 - x22 + 2*x23 - 0.2*x24 + x32 - x39 >= 0)

@constraint(m,  - 0.5*x15 - 0.4*x16 - 0.3*x17 - 0.3*x18 - 3*x20 - 0.2*x21 - 0.2*x22 - 0.5*x23 + x24 + x33 - x40 >= 0)

@constraint(m,  - 0.4*x18 - 0.4*x26 >= -3.2)

@constraint(m,  - 0.5*x15 - 1.5*x16 - 1.5*x17 - 0.1*x18 - 0.1*x19 - 1.5*x20 - 2.5*x21 - 2.5*x22 - 1.5*x23 - 0.5*x24
     - x25 - 0.2*x27 - 0.1*x28 - 0.1*x29 - 0.2*x30 - 0.2*x31 - 0.2*x32 - 0.2*x33 - 0.2*x34 - 0.1*x35 - 0.1*x36 - 0.2*x37
     - 0.2*x38 - 0.2*x39 - 0.2*x40 >= -12.5)

@constraint(m,  - 0.4*x15 - 0.2*x16 - 0.2*x17 - 0.02*x18 - 0.4*x19 - 0.3*x20 - 0.1*x21 - 0.1*x22 - 0.4*x23 - 0.4*x24
     - 0.04*x27 - 0.02*x28 - 0.02*x29 - 0.04*x30 - 0.04*x31 - 0.04*x32 - 0.04*x33 - 0.04*x34 - 0.02*x35 - 0.02*x36
     - 0.04*x37 - 0.04*x38 - 0.04*x39 - 0.04*x40 >= -3)

@constraint(m,  - 0.5*x27 - 0.4*x28 - 0.8*x29 - 1.2*x30 - 0.6*x31 - 0.7*x32 - 0.4*x33 + 0.5*x34 + 0.4*x35 + 0.8*x36
     + 1.2*x37 + 0.6*x38 + 0.7*x39 + 0.4*x40 >= 0)

@constraint(m,  - 5*x1 + 0.9*x2 + 0.2*x3 + x4 - 0.4*x7 + 0.2*x8 + x9 + 0.5*x10 + 0.5*x12 + 0.4*x13 >= 0)

@constraint(m, 3.5*x1 - 5*x2 + 0.5*x3 + 2*x4 - 1.3*x7 + 0.4*x8 + 0.1*x9 + 0.4*x10 + 1.5*x12 + 0.2*x13 >= 0)

@constraint(m, 0.1*x1 + 0.1*x2 - 2*x3 + 2*x4 - 1.2*x7 + 0.2*x8 + 0.1*x9 + 0.3*x10 + 1.5*x12 + 0.2*x13 >= 0)

@constraint(m, 0.1*x3 - 2*x4 - 0.32*x6 + 0.1*x8 + x9 + 0.3*x10 + 0.4*x11 + 0.1*x12 + 0.02*x13 >= 0)

@constraint(m, 0.7*x1 + 0.8*x2 + 0.1*x3 + 2*x4 - 4*x5 + 0.1*x12 + 0.4*x13 >= 0)

@constraint(m, 0.8*x3 + 0.4*x4 - 0.8*x6 - 1.1*x7 + x8 + 3*x10 + 1.5*x12 + 0.3*x13 >= 0)

@constraint(m, 0.4*x3 + 1.8*x4 - 6*x7 + 2*x8 + 0.2*x9 + 0.2*x10 + 2.5*x12 + 0.1*x13 >= 0)

@constraint(m, 0.1*x3 + 1.6*x4 - 1.8*x7 - 2*x8 + x9 + 0.2*x10 + 2.5*x12 + 0.1*x13 >= 0)

@constraint(m, 0.1*x3 + 0.8*x4 - 1.2*x7 + 0.5*x8 - 2*x9 + 0.5*x10 + 1.5*x12 + 0.4*x13 >= 0)

@constraint(m, 0.1*x3 + 0.2*x4 - 0.4*x7 + 0.2*x8 + 0.2*x9 - x10 + 0.5*x12 + 0.4*x13 >= 0)

@constraint(m,  - 0.9*x7 + x12 >= 0)

@constraint(m,  - 0.36*x6 + 0.4*x11 >= 0)

@constraint(m,  - x1 + 0.4*x4 + 0.2*x12 + 0.04*x13 + 0.5*x14 >= 0)

@constraint(m,  - x2 + 0.2*x4 + 0.1*x12 + 0.02*x13 + 0.4*x14 >= 0)

@constraint(m,  - x3 + 0.2*x4 + 0.1*x12 + 0.02*x13 + 0.8*x14 >= 0)

@constraint(m, 0.4*x4 - x7 + 0.2*x12 + 0.04*x13 + 1.2*x14 >= 0)

@constraint(m, 0.4*x4 - x8 + 0.2*x12 + 0.04*x13 + 0.6*x14 >= 0)

@constraint(m, 0.4*x4 - x9 + 0.2*x12 + 0.04*x13 + 0.7*x14 >= 0)

@constraint(m, 0.4*x4 - x10 + 0.2*x12 + 0.04*x13 + 0.4*x14 >= 0)

@constraint(m, x1 + 0.2*x4 + 0.2*x12 + 0.04*x13 - 0.5*x14 >= 0)

@constraint(m, x2 + 0.2*x4 + 0.1*x12 + 0.02*x13 - 0.4*x14 >= 0)

@constraint(m, x3 + 0.2*x4 + 0.1*x12 + 0.02*x13 - 0.8*x14 >= 0)

@constraint(m, 0.4*x4 + x7 + 0.2*x12 + 0.04*x13 - 1.2*x14 >= 0)

@constraint(m, 0.4*x4 + x8 + 0.2*x12 + 0.04*x13 - 0.6*x14 >= 0)

@constraint(m, 0.4*x4 + x9 + 0.2*x12 + 0.04*x13 - 0.7*x14 >= 0)

@constraint(m, 0.4*x4 + x10 + 0.2*x12 + 0.04*x13 - 0.4*x14 >= 0)

@constraint(m,  - 2*x11 - 3*x12 - 0.6*x13 + x41 >= 0)

@constraint(m,  - 0.4*x11 - 2*x12 - 0.8*x13 + x42 >= 0)

@constraint(m,  - x13 + x43 >= 0)

@constraint(m,  - 0.8*x11 - 7.5*x12 - 0.6*x13 + x44 >= 0)
