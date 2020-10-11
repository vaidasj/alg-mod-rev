#  MIP written by GAMS Convert at 10/11/20 12:19:05
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        100        2        0       98        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         77       50       27        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        469      469        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 0 <= b22 <= 1, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
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

@objective(m, Min, x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44
     + x45 + x46 + x47 + x48 + x49 + x50 + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 + x61 + x62 + x63
     + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72 + x73 + x74 + x75 + x76)

@constraint(m, b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 + b17 + b18 + b19
     + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 == 13)

@constraint(m, b1 + b2 + b3 - x28 <= 2)

@constraint(m,  - b1 - b2 - b3 - x28 <= -1)

@constraint(m, b4 + b5 + b6 - x29 <= 2)

@constraint(m,  - b4 - b5 - b6 - x29 <= -1)

@constraint(m, b7 + b8 + b9 - x30 <= 2)

@constraint(m,  - b7 - b8 - b9 - x30 <= -1)

@constraint(m, b1 + b4 + b7 - x31 <= 2)

@constraint(m,  - b1 - b4 - b7 - x31 <= -1)

@constraint(m, b2 + b5 + b8 - x32 <= 2)

@constraint(m,  - b2 - b5 - b8 - x32 <= -1)

@constraint(m, b3 + b6 + b9 - x33 <= 2)

@constraint(m,  - b3 - b6 - b9 - x33 <= -1)

@constraint(m, b1 + b5 + b9 - x34 <= 2)

@constraint(m,  - b1 - b5 - b9 - x34 <= -1)

@constraint(m, b3 + b5 + b7 - x35 <= 2)

@constraint(m,  - b3 - b5 - b7 - x35 <= -1)

@constraint(m, b10 + b11 + b12 - x36 <= 2)

@constraint(m,  - b10 - b11 - b12 - x36 <= -1)

@constraint(m, b13 + b14 + b15 - x37 <= 2)

@constraint(m,  - b13 - b14 - b15 - x37 <= -1)

@constraint(m, b16 + b17 + b18 - x38 <= 2)

@constraint(m,  - b16 - b17 - b18 - x38 <= -1)

@constraint(m, b10 + b13 + b16 - x39 <= 2)

@constraint(m,  - b10 - b13 - b16 - x39 <= -1)

@constraint(m, b11 + b14 + b17 - x40 <= 2)

@constraint(m,  - b11 - b14 - b17 - x40 <= -1)

@constraint(m, b12 + b15 + b18 - x41 <= 2)

@constraint(m,  - b12 - b15 - b18 - x41 <= -1)

@constraint(m, b10 + b14 + b18 - x42 <= 2)

@constraint(m,  - b10 - b14 - b18 - x42 <= -1)

@constraint(m, b12 + b14 + b16 - x43 <= 2)

@constraint(m,  - b12 - b14 - b16 - x43 <= -1)

@constraint(m, b19 + b20 + b21 - x44 <= 2)

@constraint(m,  - b19 - b20 - b21 - x44 <= -1)

@constraint(m, b22 + b23 + b24 - x45 <= 2)

@constraint(m,  - b22 - b23 - b24 - x45 <= -1)

@constraint(m, b25 + b26 + b27 - x46 <= 2)

@constraint(m,  - b25 - b26 - b27 - x46 <= -1)

@constraint(m, b19 + b22 + b25 - x47 <= 2)

@constraint(m,  - b19 - b22 - b25 - x47 <= -1)

@constraint(m, b20 + b23 + b26 - x48 <= 2)

@constraint(m,  - b20 - b23 - b26 - x48 <= -1)

@constraint(m, b21 + b24 + b27 - x49 <= 2)

@constraint(m,  - b21 - b24 - b27 - x49 <= -1)

@constraint(m, b19 + b23 + b27 - x50 <= 2)

@constraint(m,  - b19 - b23 - b27 - x50 <= -1)

@constraint(m, b21 + b23 + b25 - x51 <= 2)

@constraint(m,  - b21 - b23 - b25 - x51 <= -1)

@constraint(m, b1 + b10 + b19 - x52 <= 2)

@constraint(m,  - b1 - b10 - b19 - x52 <= -1)

@constraint(m, b2 + b11 + b20 - x53 <= 2)

@constraint(m,  - b2 - b11 - b20 - x53 <= -1)

@constraint(m, b3 + b12 + b21 - x54 <= 2)

@constraint(m,  - b3 - b12 - b21 - x54 <= -1)

@constraint(m, b1 + b11 + b21 - x55 <= 2)

@constraint(m,  - b1 - b11 - b21 - x55 <= -1)

@constraint(m, b4 + b13 + b22 - x56 <= 2)

@constraint(m,  - b4 - b13 - b22 - x56 <= -1)

@constraint(m, b5 + b14 + b23 - x57 <= 2)

@constraint(m,  - b5 - b14 - b23 - x57 <= -1)

@constraint(m, b6 + b15 + b24 - x58 <= 2)

@constraint(m,  - b6 - b15 - b24 - x58 <= -1)

@constraint(m, b4 + b14 + b24 - x59 <= 2)

@constraint(m,  - b4 - b14 - b24 - x59 <= -1)

@constraint(m, b7 + b16 + b25 - x60 <= 2)

@constraint(m,  - b7 - b16 - b25 - x60 <= -1)

@constraint(m, b8 + b17 + b26 - x61 <= 2)

@constraint(m,  - b8 - b17 - b26 - x61 <= -1)

@constraint(m, b9 + b18 + b27 - x62 <= 2)

@constraint(m,  - b9 - b18 - b27 - x62 <= -1)

@constraint(m, b7 + b17 + b27 - x63 <= 2)

@constraint(m,  - b7 - b17 - b27 - x63 <= -1)

@constraint(m, b1 + b13 + b25 - x64 <= 2)

@constraint(m,  - b1 - b13 - b25 - x64 <= -1)

@constraint(m, b2 + b14 + b26 - x65 <= 2)

@constraint(m,  - b2 - b14 - b26 - x65 <= -1)

@constraint(m, b3 + b15 + b27 - x66 <= 2)

@constraint(m,  - b3 - b15 - b27 - x66 <= -1)

@constraint(m, b1 + b14 + b27 - x67 <= 2)

@constraint(m,  - b1 - b14 - b27 - x67 <= -1)

@constraint(m, b3 + b14 + b25 - x68 <= 2)

@constraint(m,  - b3 - b14 - b25 - x68 <= -1)

@constraint(m, b7 + b13 + b19 - x69 <= 2)

@constraint(m,  - b7 - b13 - b19 - x69 <= -1)

@constraint(m, b8 + b14 + b20 - x70 <= 2)

@constraint(m,  - b8 - b14 - b20 - x70 <= -1)

@constraint(m, b9 + b15 + b21 - x71 <= 2)

@constraint(m,  - b9 - b15 - b21 - x71 <= -1)

@constraint(m, b7 + b14 + b21 - x72 <= 2)

@constraint(m,  - b7 - b14 - b21 - x72 <= -1)

@constraint(m, b9 + b14 + b19 - x73 <= 2)

@constraint(m,  - b9 - b14 - b19 - x73 <= -1)

@constraint(m, b3 + b11 + b19 - x74 <= 2)

@constraint(m,  - b3 - b11 - b19 - x74 <= -1)

@constraint(m, b6 + b14 + b22 - x75 <= 2)

@constraint(m,  - b6 - b14 - b22 - x75 <= -1)

@constraint(m, b9 + b17 + b25 - x76 <= 2)

@constraint(m,  - b9 - b17 - b25 - x76 <= -1)
