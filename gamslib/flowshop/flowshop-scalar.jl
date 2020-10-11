#  MIP written by GAMS Convert at 10/11/20 13:51:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         58       30       28        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         73       37       36        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        272      272        0        0


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
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 0 <= b31 <= 1, binary=true, start=0)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 0 <= b33 <= 1, binary=true, start=0)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)
@variable(m, 0 <= b35 <= 1, binary=true, start=0)
@variable(m, 0 <= b36 <= 1, binary=true, start=0)
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
@variable(m, x73, start=0)

@objective(m, Min, x73)

@constraint(m, b1 + b7 + b13 + b19 + b25 + b31 == 1)

@constraint(m, b2 + b8 + b14 + b20 + b26 + b32 == 1)

@constraint(m, b3 + b9 + b15 + b21 + b27 + b33 == 1)

@constraint(m, b4 + b10 + b16 + b22 + b28 + b34 == 1)

@constraint(m, b5 + b11 + b17 + b23 + b29 + b35 == 1)

@constraint(m, b6 + b12 + b18 + b24 + b30 + b36 == 1)

@constraint(m, b1 + b2 + b3 + b4 + b5 + b6 == 1)

@constraint(m, b7 + b8 + b9 + b10 + b11 + b12 == 1)

@constraint(m, b13 + b14 + b15 + b16 + b17 + b18 == 1)

@constraint(m, b19 + b20 + b21 + b22 + b23 + b24 == 1)

@constraint(m, b25 + b26 + b27 + b28 + b29 + b30 == 1)

@constraint(m, b31 + b32 + b33 + b34 + b35 + b36 == 1)

@constraint(m, x38 - x55 >= 0)

@constraint(m, x39 - x56 >= 0)

@constraint(m, x40 - x57 >= 0)

@constraint(m, x41 - x58 >= 0)

@constraint(m, x42 - x59 >= 0)

@constraint(m, x44 - x61 >= 0)

@constraint(m, x45 - x62 >= 0)

@constraint(m, x46 - x63 >= 0)

@constraint(m, x47 - x64 >= 0)

@constraint(m, x48 - x65 >= 0)

@constraint(m, x50 - x67 >= 0)

@constraint(m, x51 - x68 >= 0)

@constraint(m, x52 - x69 >= 0)

@constraint(m, x53 - x70 >= 0)

@constraint(m, x54 - x71 >= 0)

@constraint(m, x43 - x55 >= 0)

@constraint(m, x44 - x56 >= 0)

@constraint(m, x45 - x57 >= 0)

@constraint(m, x46 - x58 >= 0)

@constraint(m, x47 - x59 >= 0)

@constraint(m, x48 - x60 >= 0)

@constraint(m, x49 - x61 >= 0)

@constraint(m, x50 - x62 >= 0)

@constraint(m, x51 - x63 >= 0)

@constraint(m, x52 - x64 >= 0)

@constraint(m, x53 - x65 >= 0)

@constraint(m, x54 - x66 >= 0)

@constraint(m,  - 3*b1 - 6*b7 - 3*b13 - 5*b19 - 5*b25 - 7*b31 - x37 + x55 == 0)

@constraint(m,  - 3*b2 - 6*b8 - 3*b14 - 5*b20 - 5*b26 - 7*b32 - x38 + x56 == 0)

@constraint(m,  - 3*b3 - 6*b9 - 3*b15 - 5*b21 - 5*b27 - 7*b33 - x39 + x57 == 0)

@constraint(m,  - 3*b4 - 6*b10 - 3*b16 - 5*b22 - 5*b28 - 7*b34 - x40 + x58 == 0)

@constraint(m,  - 3*b5 - 6*b11 - 3*b17 - 5*b23 - 5*b29 - 7*b35 - x41 + x59 == 0)

@constraint(m,  - 3*b6 - 6*b12 - 3*b18 - 5*b24 - 5*b30 - 7*b36 - x42 + x60 == 0)

@constraint(m,  - 5*b1 - 4*b7 - 2*b13 - 4*b19 - 4*b25 - 5*b31 - x43 + x61 == 0)

@constraint(m,  - 5*b2 - 4*b8 - 2*b14 - 4*b20 - 4*b26 - 5*b32 - x44 + x62 == 0)

@constraint(m,  - 5*b3 - 4*b9 - 2*b15 - 4*b21 - 4*b27 - 5*b33 - x45 + x63 == 0)

@constraint(m,  - 5*b4 - 4*b10 - 2*b16 - 4*b22 - 4*b28 - 5*b34 - x46 + x64 == 0)

@constraint(m,  - 5*b5 - 4*b11 - 2*b17 - 4*b23 - 4*b29 - 5*b35 - x47 + x65 == 0)

@constraint(m,  - 5*b6 - 4*b12 - 2*b18 - 4*b24 - 4*b30 - 5*b36 - x48 + x66 == 0)

@constraint(m,  - 5*b1 - 2*b7 - 4*b13 - 6*b19 - 3*b25 - 6*b31 - x49 + x67 == 0)

@constraint(m,  - 5*b2 - 2*b8 - 4*b14 - 6*b20 - 3*b26 - 6*b32 - x50 + x68 == 0)

@constraint(m,  - 5*b3 - 2*b9 - 4*b15 - 6*b21 - 3*b27 - 6*b33 - x51 + x69 == 0)

@constraint(m,  - 5*b4 - 2*b10 - 4*b16 - 6*b22 - 3*b28 - 6*b34 - x52 + x70 == 0)

@constraint(m,  - 5*b5 - 2*b11 - 4*b17 - 6*b23 - 3*b29 - 6*b35 - x53 + x71 == 0)

@constraint(m,  - 5*b6 - 2*b12 - 4*b18 - 6*b24 - 3*b30 - 6*b36 - x54 + x72 == 0)

@constraint(m,  - x72 + x73 >= 0)
