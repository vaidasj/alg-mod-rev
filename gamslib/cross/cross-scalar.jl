#  MIP written by GAMS Convert at 10/11/20 12:40:04
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         87       28        0       59        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         68       38       30        0        0        0        0        0
#  FX      3        0        3        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        239      239        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 0, binary=true, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 0, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 0, binary=true, start=0)
@variable(m, 0 <= b22 <= 1, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
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

@objective(m, Max, x58 + x59 + x60 + x61 + x62 + x63 + x64 + x65 + x66 + x67)

@constraint(m,  - b1 + x58 <= 0)

@constraint(m,  - b2 + x59 <= 0)

@constraint(m,  - b3 + x60 <= 0)

@constraint(m,  - b4 + x61 <= 0)

@constraint(m,  - b5 + x62 <= 0)

@constraint(m,  - b6 + x63 <= 0)

@constraint(m,  - b7 + x64 <= 0)

@constraint(m,  - b8 + x65 <= 0)

@constraint(m,  - b9 + x66 <= 0)

@constraint(m,  - b10 + x67 <= 0)

@constraint(m,  - b11 + x58 <= 0)

@constraint(m,  - b12 + x59 <= 0)

@constraint(m,  - b13 + x60 <= 0)

@constraint(m,  - b14 + x61 <= 0)

@constraint(m,  - b15 + x62 <= 0)

@constraint(m,  - b16 + x63 <= 0)

@constraint(m,  - b17 + x64 <= 0)

@constraint(m,  - b18 + x65 <= 0)

@constraint(m,  - b19 + x66 <= 0)

@constraint(m,  - b20 + x67 <= 0)

@constraint(m,  - b21 + x58 <= 0)

@constraint(m,  - b22 + x59 <= 0)

@constraint(m,  - b23 + x60 <= 0)

@constraint(m,  - b24 + x61 <= 0)

@constraint(m,  - b25 + x62 <= 0)

@constraint(m,  - b26 + x63 <= 0)

@constraint(m,  - b27 + x64 <= 0)

@constraint(m,  - b28 + x65 <= 0)

@constraint(m,  - b29 + x66 <= 0)

@constraint(m,  - b30 + x67 <= 0)

@constraint(m,  - b1 + b2 - x31 == 0)

@constraint(m,  - b2 + b3 + x32 == 0)

@constraint(m,  - b3 + b4 - x33 == 0)

@constraint(m,  - b4 + b5 + x34 == 0)

@constraint(m,  - b5 + b6 - x35 == 0)

@constraint(m,  - b6 + b7 + x36 == 0)

@constraint(m,  - b7 + b8 - x37 == 0)

@constraint(m,  - b8 + b9 + x38 == 0)

@constraint(m,  - b9 + b10 - x39 == 0)

@constraint(m,  - b11 + b12 - x40 == 0)

@constraint(m,  - b12 + b13 + x41 == 0)

@constraint(m,  - b13 + b14 - x42 == 0)

@constraint(m,  - b14 + b15 + x43 == 0)

@constraint(m,  - b15 + b16 - x44 == 0)

@constraint(m,  - b16 + b17 + x45 == 0)

@constraint(m,  - b17 + b18 - x46 == 0)

@constraint(m,  - b18 + b19 + x47 == 0)

@constraint(m,  - b19 + b20 - x48 == 0)

@constraint(m,  - b21 + b22 - x49 == 0)

@constraint(m,  - b22 + b23 + x50 == 0)

@constraint(m,  - b23 + b24 - x51 == 0)

@constraint(m,  - b24 + b25 + x52 == 0)

@constraint(m,  - b25 + b26 - x53 == 0)

@constraint(m,  - b26 + b27 + x54 == 0)

@constraint(m,  - b27 + b28 - x55 == 0)

@constraint(m,  - b28 + b29 + x56 == 0)

@constraint(m,  - b29 + b30 - x57 == 0)

@constraint(m, x31 + x40 + x49 <= 1)

@constraint(m, x32 + x41 + x50 <= 1)

@constraint(m, x33 + x42 + x51 <= 1)

@constraint(m, x34 + x43 + x52 <= 1)

@constraint(m, x35 + x44 + x53 <= 1)

@constraint(m, x36 + x45 + x54 <= 1)

@constraint(m, x37 + x46 + x55 <= 1)

@constraint(m, x38 + x47 + x56 <= 1)

@constraint(m, x39 + x48 + x57 <= 1)

@constraint(m, b1 + b11 - x58 <= 1)

@constraint(m,  - b2 - b12 - x59 <= -1)

@constraint(m, b3 + b13 - x60 <= 1)

@constraint(m,  - b4 - b14 - x61 <= -1)

@constraint(m, b5 + b15 - x62 <= 1)

@constraint(m,  - b6 - b16 - x63 <= -1)

@constraint(m, b7 + b17 - x64 <= 1)

@constraint(m,  - b8 - b18 - x65 <= -1)

@constraint(m, b9 + b19 - x66 <= 1)

@constraint(m,  - b10 - b20 - x67 <= -1)

@constraint(m, b1 + b21 - x58 <= 1)

@constraint(m,  - b2 - b22 - x59 <= -1)

@constraint(m, b3 + b23 - x60 <= 1)

@constraint(m,  - b4 - b24 - x61 <= -1)

@constraint(m, b5 + b25 - x62 <= 1)

@constraint(m,  - b6 - b26 - x63 <= -1)

@constraint(m, b7 + b27 - x64 <= 1)

@constraint(m,  - b8 - b28 - x65 <= -1)

@constraint(m, b9 + b29 - x66 <= 1)

@constraint(m,  - b10 - b30 - x67 <= -1)
