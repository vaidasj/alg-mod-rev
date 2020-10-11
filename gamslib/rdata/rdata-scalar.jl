#  MIP written by GAMS Convert at 10/11/20 12:18:42
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51       11        0       40        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         49       44        5        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        178      178        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

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
@variable(m, 0 <= b42 <= 1, binary=true, start=0)
@variable(m, 0 <= b43 <= 1, binary=true, start=0)
@variable(m, 0 <= b44 <= 1, binary=true, start=0)
@variable(m, 0 <= b45 <= 1, binary=true, start=0)
@variable(m, 0 <= b46 <= 1, binary=true, start=0)
@variable(m, x47, start=0)
@variable(m, x48, start=0)
@variable(m, x49, start=0)

@objective(m, Min, b42 + b43 + b44 + b45 + b46)

@constraint(m, x2 + x3 + x4 + x5 + x6 - 1.2*x7 - 1.2*x8 - 1.2*x9 - 1.2*x10 - 1.2*x11 == 0)

@constraint(m, x7 + x8 + x9 + x10 + x11 - 0.2*x17 - 0.2*x18 - 0.2*x19 - 0.2*x20 - 0.2*x21 == 0)

@constraint(m,  - x12 - x13 - x14 - x15 - x16 + x47 == 0)

@constraint(m, x12 + x13 + x14 + x15 + x16 - 0.9*x22 - 0.9*x23 - 0.9*x24 - 0.9*x25 - 0.9*x26 - 0.7*x27 - 0.7*x28
     - 0.7*x29 - 0.7*x30 - 0.7*x31 == 0)

@constraint(m,  - 0.2*x22 - 0.2*x23 - 0.2*x24 - 0.2*x25 - 0.2*x26 - 0.4*x27 - 0.4*x28 - 0.4*x29 - 0.4*x30 - 0.4*x31
     + 0.2*x32 + 0.2*x33 + 0.2*x34 + 0.2*x35 + 0.2*x36 + x48 == 0)

@constraint(m, x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + x31 - 1.2*x32 - 1.2*x33 - 1.2*x34 - 1.2*x35
     - 1.2*x36 == 0)

@constraint(m,  - 1.2*x17 - 1.2*x18 - 1.2*x19 - 1.2*x20 - 1.2*x21 + x32 + x33 + x34 + x35 + x36 == 0)

@constraint(m,  - 1.4*x2 - 1.4*x3 - 1.4*x4 - 1.4*x5 - 1.4*x6 + x49 == 0)

@constraint(m, x17 + x18 + x19 + x20 + x21 - x37 - x38 - x39 - x40 - x41 == 0)

@constraint(m, x37 + x38 + x39 + x40 + x41 == 0.5)

@constraint(m, x12 <= 2)

@constraint(m, x13 <= 2.5)

@constraint(m, x14 <= 0)

@constraint(m, x15 <= 0)

@constraint(m, x16 <= 0)

@constraint(m, x22 + x27 <= 2.35)

@constraint(m, x23 + x28 <= 2.8)

@constraint(m, x24 + x29 <= 0)

@constraint(m, x25 + x30 <= 0)

@constraint(m, x26 + x31 <= 0)

@constraint(m, x32 <= 1.9)

@constraint(m, x33 <= 2.4)

@constraint(m, x34 <= 0)

@constraint(m, x35 <= 0)

@constraint(m, x36 <= 0)

@constraint(m, x2 <= 0)

@constraint(m, x3 <= 0)

@constraint(m, x4 <= 0.8)

@constraint(m, x5 <= 0)

@constraint(m, x6 <= 0)

@constraint(m, x7 <= 0)

@constraint(m, x8 <= 0)

@constraint(m, x9 <= 0.6)

@constraint(m, x10 <= 0.5)

@constraint(m, x11 <= 0)

@constraint(m, x17 <= 0)

@constraint(m, x18 <= 0)

@constraint(m, x19 <= 0)

@constraint(m, x20 <= 0)

@constraint(m, x21 <= 0.6)

@constraint(m, x37 <= 0)

@constraint(m, x38 <= 0)

@constraint(m, x39 <= 0)

@constraint(m, x40 <= 0)

@constraint(m, x41 <= 0.6)

@constraint(m, 0.05*x12 + 0.05*x22 + 0.05*x27 + 0.05*x32 - 0.2*b42 <= 0)

@constraint(m, 0.05*x10 - 0.05*b43 <= 0)

@constraint(m, 0.2*x4 + 0.2*x9 + 0.3*x12 + 0.3*x22 + 0.3*x27 + 0.3*x32 - 1.6*b44 <= 0)

@constraint(m, 1.2*x21 + 1.2*x41 - 2.4*b45 <= 0)

@constraint(m, 0.7*x4 + 0.7*x9 + 0.5*x10 + 1.2*x12 + 0.4*x13 + 1.2*x22 + 0.4*x23 + 1.2*x27 + 0.4*x28 + 1.2*x32 + 0.4*x33
     - 8.3*b46 <= 0)
