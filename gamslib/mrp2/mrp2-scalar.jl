#  MIP written by GAMS Convert at 10/11/20 12:41:46
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        135        1       78       56        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         81       41       40        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        451      451        0        0
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
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 0 <= b31 <= 1, binary=true, start=0)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 0 <= b33 <= 1, binary=true, start=0)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)
@variable(m, 0 <= b35 <= 1, binary=true, start=0)
@variable(m, 0 <= b36 <= 1, binary=true, start=0)
@variable(m, 0 <= b37 <= 1, binary=true, start=0)
@variable(m, 0 <= b38 <= 1, binary=true, start=0)
@variable(m, 0 <= b39 <= 1, binary=true, start=0)
@variable(m, 0 <= b40 <= 1, binary=true, start=0)
@variable(m, 0 <= x41, start=0)
@variable(m, 0 <= x42, start=0)
@variable(m, 0 <= x43, start=20)
@variable(m, 0 <= x44, start=20)
@variable(m, 0 <= x45, start=30)
@variable(m, 0 <= x46, start=40)
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
@variable(m, 0 <= x58, start=10)
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

@objective(m, Min, 8*x41 + 7*x42 + 6*x43 + 5*x44 + 4*x45 + 3*x46 + 2*x47 + x48 + 8*x49 + 7*x50 + 6*x51 + 5*x52 + 4*x53
     + 3*x54 + 2*x55 + x56 + 8*x57 + 7*x58 + 6*x59 + 5*x60 + 4*x61 + 3*x62 + 2*x63 + x64 + 8*x65 + 7*x66 + 6*x67 + 5*x68
     + 4*x69 + 3*x70 + 2*x71 + x72 + 8*x73 + 7*x74 + 6*x75 + 5*x76 + 4*x77 + 3*x78 + 2*x79 + x80)

@constraint(m, x41 >= -30)

@constraint(m, x41 + x42 >= -10)

@constraint(m, x41 + x42 + x43 >= 20)

@constraint(m, x41 + x42 + x43 + x44 >= 40)

@constraint(m, x41 + x42 + x43 + x44 + x45 >= 70)

@constraint(m, x41 + x42 + x43 + x44 + x45 + x46 >= 110)

@constraint(m,  - 2*x41 >= -300)

@constraint(m,  - 2*x41 - 2*x42 >= -300)

@constraint(m,  - 2*x41 - 2*x42 - 2*x43 >= -300)

@constraint(m,  - 2*x41 - 2*x42 - 2*x43 - 2*x44 + x49 >= -300)

@constraint(m,  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 + x49 + x50 >= -300)

@constraint(m,  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 - 2*x46 + x49 + x50 + x51 >= -300)

@constraint(m,  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 - 2*x46 - 2*x47 + x49 + x50 + x51 + x52 >= -300)

@constraint(m,  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 - 2*x46 - 2*x47 - 2*x48 + x49 + x50 + x51 + x52 + x53 >= -300)

@constraint(m,  - x41 >= -100)

@constraint(m,  - x41 - x42 >= -100)

@constraint(m,  - x41 - x42 - x43 >= -100)

@constraint(m,  - x41 - x42 - x43 - x44 >= -100)

@constraint(m,  - x41 - x42 - x43 - x44 - x45 + x57 >= -100)

@constraint(m,  - x41 - x42 - x43 - x44 - x45 - x46 + x57 + x58 >= -100)

@constraint(m,  - x41 - x42 - x43 - x44 - x45 - x46 - x47 + x57 + x58 + x59 >= -100)

@constraint(m,  - x41 - x42 - x43 - x44 - x45 - x46 - x47 - x48 + x57 + x58 + x59 + x60 >= -100)

@constraint(m,  - x49 >= 0)

@constraint(m,  - x49 - x50 + x65 >= 0)

@constraint(m,  - x49 - x50 - x51 + x65 + x66 >= 0)

@constraint(m,  - x49 - x50 - x51 - x52 + x65 + x66 + x67 >= 0)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 + x65 + x66 + x67 + x68 >= 0)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 - x54 + x65 + x66 + x67 + x68 + x69 >= 0)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 - x54 - x55 + x65 + x66 + x67 + x68 + x69 + x70 >= 0)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 - x54 - x55 - x56 + x65 + x66 + x67 + x68 + x69 + x70 + x71 >= 0)

@constraint(m,  - x49 >= -900)

@constraint(m,  - x49 - x50 >= -900)

@constraint(m,  - x49 - x50 - x51 >= -900)

@constraint(m,  - x49 - x50 - x51 - x52 >= -900)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 >= -900)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 - x54 >= -900)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 - x54 - x55 >= -900)

@constraint(m,  - x49 - x50 - x51 - x52 - x53 - x54 - x55 - x56 >= -900)

@constraint(m,  - 100*b1 + x41 >= 0)

@constraint(m,  - 100*b2 + x42 >= 0)

@constraint(m,  - 100*b3 + x43 >= 0)

@constraint(m,  - 100*b4 + x44 >= 0)

@constraint(m,  - 100*b5 + x45 >= 0)

@constraint(m,  - 100*b6 + x46 >= 0)

@constraint(m,  - 100*b7 + x47 >= 0)

@constraint(m,  - 100*b8 + x48 >= 0)

@constraint(m,  - 400*b9 + x49 >= 0)

@constraint(m,  - 400*b10 + x50 >= 0)

@constraint(m,  - 400*b11 + x51 >= 0)

@constraint(m,  - 400*b12 + x52 >= 0)

@constraint(m,  - 400*b13 + x53 >= 0)

@constraint(m,  - 400*b14 + x54 >= 0)

@constraint(m,  - 400*b15 + x55 >= 0)

@constraint(m,  - 400*b16 + x56 >= 0)

@constraint(m,  - 100*b17 + x57 >= 0)

@constraint(m,  - 100*b18 + x58 >= 0)

@constraint(m,  - 100*b19 + x59 >= 0)

@constraint(m,  - 100*b20 + x60 >= 0)

@constraint(m,  - 100*b21 + x61 >= 0)

@constraint(m,  - 100*b22 + x62 >= 0)

@constraint(m,  - 100*b23 + x63 >= 0)

@constraint(m,  - 100*b24 + x64 >= 0)

@constraint(m,  - b25 + x65 >= 0)

@constraint(m,  - b26 + x66 >= 0)

@constraint(m,  - b27 + x67 >= 0)

@constraint(m,  - b28 + x68 >= 0)

@constraint(m,  - b29 + x69 >= 0)

@constraint(m,  - b30 + x70 >= 0)

@constraint(m,  - b31 + x71 >= 0)

@constraint(m,  - b32 + x72 >= 0)

@constraint(m,  - 1000*b33 + x73 >= 0)

@constraint(m,  - 1000*b34 + x74 >= 0)

@constraint(m,  - 1000*b35 + x75 >= 0)

@constraint(m,  - 1000*b36 + x76 >= 0)

@constraint(m,  - 1000*b37 + x77 >= 0)

@constraint(m,  - 1000*b38 + x78 >= 0)

@constraint(m,  - 1000*b39 + x79 >= 0)

@constraint(m,  - 1000*b40 + x80 >= 0)

@constraint(m,  - 200*b1 + x41 <= 0)

@constraint(m,  - 200*b2 + x42 <= 0)

@constraint(m,  - 200*b3 + x43 <= 0)

@constraint(m,  - 200*b4 + x44 <= 0)

@constraint(m,  - 200*b5 + x45 <= 0)

@constraint(m,  - 200*b6 + x46 <= 0)

@constraint(m,  - 200*b7 + x47 <= 0)

@constraint(m,  - 200*b8 + x48 <= 0)

@constraint(m,  - 400*b9 + x49 <= 0)

@constraint(m,  - 400*b10 + x50 <= 0)

@constraint(m,  - 400*b11 + x51 <= 0)

@constraint(m,  - 400*b12 + x52 <= 0)

@constraint(m,  - 400*b13 + x53 <= 0)

@constraint(m,  - 400*b14 + x54 <= 0)

@constraint(m,  - 400*b15 + x55 <= 0)

@constraint(m,  - 400*b16 + x56 <= 0)

@constraint(m,  - 200*b17 + x57 <= 0)

@constraint(m,  - 200*b18 + x58 <= 0)

@constraint(m,  - 200*b19 + x59 <= 0)

@constraint(m,  - 200*b20 + x60 <= 0)

@constraint(m,  - 200*b21 + x61 <= 0)

@constraint(m,  - 200*b22 + x62 <= 0)

@constraint(m,  - 200*b23 + x63 <= 0)

@constraint(m,  - 200*b24 + x64 <= 0)

@constraint(m,  - 400*b25 + x65 <= 0)

@constraint(m,  - 400*b26 + x66 <= 0)

@constraint(m,  - 400*b27 + x67 <= 0)

@constraint(m,  - 400*b28 + x68 <= 0)

@constraint(m,  - 400*b29 + x69 <= 0)

@constraint(m,  - 400*b30 + x70 <= 0)

@constraint(m,  - 400*b31 + x71 <= 0)

@constraint(m,  - 400*b32 + x72 <= 0)

@constraint(m,  - 1000*b33 + x73 <= 0)

@constraint(m,  - 1000*b34 + x74 <= 0)

@constraint(m,  - 1000*b35 + x75 <= 0)

@constraint(m,  - 1000*b36 + x76 <= 0)

@constraint(m,  - 1000*b37 + x77 <= 0)

@constraint(m,  - 1000*b38 + x78 <= 0)

@constraint(m,  - 1000*b39 + x79 <= 0)

@constraint(m,  - 1000*b40 + x80 <= 0)

@constraint(m, 0.00208333*x41 <= 1)

@constraint(m, 0.000104166*x41 + 0.000333333*x49 + 1E-6*x65 <= 1)

@constraint(m, 0.00208333*x42 <= 1)

@constraint(m, 0.000104166*x42 + 0.000333333*x50 + 1E-6*x66 <= 1)

@constraint(m, 0.00208333*x43 <= 1)

@constraint(m, 0.000104166*x43 + 0.000333333*x51 + 1E-6*x67 <= 1)

@constraint(m, 0.00208333*x44 <= 1)

@constraint(m, 0.000104166*x44 + 0.000333333*x52 + 1E-6*x68 <= 1)

@constraint(m, 0.00208333*x45 <= 1)

@constraint(m, 0.000104166*x45 + 0.000333333*x53 + 1E-6*x69 <= 1)

@constraint(m, 0.00208333*x46 <= 1)

@constraint(m, 0.000104166*x46 + 0.000333333*x54 + 1E-6*x70 <= 1)

@constraint(m, 0.00208333*x47 <= 1)

@constraint(m, 0.000104166*x47 + 0.000333333*x55 + 1E-6*x71 <= 1)

@constraint(m, 0.00208333*x48 <= 1)

@constraint(m, 0.000104166*x48 + 0.000333333*x56 + 1E-6*x72 <= 1)
