#  MIP written by GAMS Convert at 10/11/20 12:40:25
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51        6       45        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         71       46       25        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        206      206        0        0
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
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=0)
@variable(m, 0 <= x44, start=0)
@variable(m, 0 <= x45, start=0)
@variable(m, 0 <= x46, start=0)
@variable(m, 0 <= b47 <= 1, binary=true, start=0)
@variable(m, 0 <= b48 <= 1, binary=true, start=0)
@variable(m, 0 <= b49 <= 1, binary=true, start=0)
@variable(m, 0 <= b50 <= 1, binary=true, start=0)
@variable(m, 0 <= b51 <= 1, binary=true, start=0)
@variable(m, 0 <= b52 <= 1, binary=true, start=0)
@variable(m, 0 <= b53 <= 1, binary=true, start=0)
@variable(m, 0 <= b54 <= 1, binary=true, start=0)
@variable(m, 0 <= b55 <= 1, binary=true, start=0)
@variable(m, 0 <= b56 <= 1, binary=true, start=0)
@variable(m, 0 <= b57 <= 1, binary=true, start=0)
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

@objective(m, Min, 2*x2 + 4*x3 + 3*x4 + 2*x5 + 4*x6 + 3*x7 + 2*x8 + 4*x9 + 3*x10 + 2*x11 + 4*x12 + 3*x13 + 2*x14 + 4*x15
     + 3*x16 + 6*x17 + 2*x18 + 3*x19 + 6*x20 + 2*x21 + 3*x22 + 6*x23 + 2*x24 + 3*x25 + 6*x26 + 2*x27 + 3*x28 + 6*x29
     + 2*x30 + 3*x31 + 5*x32 + 3*x33 + 5*x34 + 3*x35 + 5*x36 + 3*x37 + 5*x38 + 3*x39 + 5*x40 + 3*x41 + 3*x42 + 3*x43
     + 3*x44 + 3*x45 + 3*x46)

@constraint(m, b47 + b48 + b49 + b50 + b51 == 1)

@constraint(m, b52 + b53 + b54 + b55 + b56 == 1)

@constraint(m, b57 + b58 + b59 + b60 + b61 == 1)

@constraint(m, b62 + b63 + b64 + b65 + b66 == 1)

@constraint(m, b67 + b68 + b69 + b70 + b71 == 1)

@constraint(m, x2 - b47 - b57 >= -1)

@constraint(m, x3 - b47 - b62 >= -1)

@constraint(m, x4 - b47 - b67 >= -1)

@constraint(m, x5 - b48 - b58 >= -1)

@constraint(m, x6 - b48 - b63 >= -1)

@constraint(m, x7 - b48 - b68 >= -1)

@constraint(m, x8 - b49 - b59 >= -1)

@constraint(m, x9 - b49 - b64 >= -1)

@constraint(m, x10 - b49 - b69 >= -1)

@constraint(m, x11 - b50 - b60 >= -1)

@constraint(m, x12 - b50 - b65 >= -1)

@constraint(m, x13 - b50 - b70 >= -1)

@constraint(m, x14 - b51 - b61 >= -1)

@constraint(m, x15 - b51 - b66 >= -1)

@constraint(m, x16 - b51 - b71 >= -1)

@constraint(m, x17 - b52 - b57 >= -1)

@constraint(m, x18 - b52 - b62 >= -1)

@constraint(m, x19 - b52 - b67 >= -1)

@constraint(m, x20 - b53 - b58 >= -1)

@constraint(m, x21 - b53 - b63 >= -1)

@constraint(m, x22 - b53 - b68 >= -1)

@constraint(m, x23 - b54 - b59 >= -1)

@constraint(m, x24 - b54 - b64 >= -1)

@constraint(m, x25 - b54 - b69 >= -1)

@constraint(m, x26 - b55 - b60 >= -1)

@constraint(m, x27 - b55 - b65 >= -1)

@constraint(m, x28 - b55 - b70 >= -1)

@constraint(m, x29 - b56 - b61 >= -1)

@constraint(m, x30 - b56 - b66 >= -1)

@constraint(m, x31 - b56 - b71 >= -1)

@constraint(m, x32 - b57 - b62 >= -1)

@constraint(m, x33 - b57 - b67 >= -1)

@constraint(m, x34 - b58 - b63 >= -1)

@constraint(m, x35 - b58 - b68 >= -1)

@constraint(m, x36 - b59 - b64 >= -1)

@constraint(m, x37 - b59 - b69 >= -1)

@constraint(m, x38 - b60 - b65 >= -1)

@constraint(m, x39 - b60 - b70 >= -1)

@constraint(m, x40 - b61 - b66 >= -1)

@constraint(m, x41 - b61 - b71 >= -1)

@constraint(m, x42 - b62 - b67 >= -1)

@constraint(m, x43 - b63 - b68 >= -1)

@constraint(m, x44 - b64 - b69 >= -1)

@constraint(m, x45 - b65 - b70 >= -1)

@constraint(m, x46 - b66 - b71 >= -1)
