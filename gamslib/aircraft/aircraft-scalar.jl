#  LP written by GAMS Convert at 10/11/20 12:15:56
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57       28        0       29        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         73       73        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        222      222        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
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

@objective(m, Min, x71 + x72)

@constraint(m, x1 + x2 + x3 + x4 + x5 <= 10)

@constraint(m, x6 + x7 + x8 + x9 + x10 <= 19)

@constraint(m, x11 + x12 + x13 + x14 + x15 <= 25)

@constraint(m, x16 + x17 + x18 + x19 + x20 <= 15)

@constraint(m,  - 16*x1 - 9*x16 + x21 <= 0)

@constraint(m,  - 16*x1 - 9*x16 + x22 <= 0)

@constraint(m,  - 16*x1 - 9*x16 + x23 <= 0)

@constraint(m,  - 16*x1 - 9*x16 + x24 <= 0)

@constraint(m,  - 16*x1 - 9*x16 + x25 <= 0)

@constraint(m,  - 15*x2 - 10*x7 - 5*x12 - 11*x17 + x26 <= 0)

@constraint(m,  - 15*x2 - 10*x7 - 5*x12 - 11*x17 + x27 <= 0)

@constraint(m,  - 15*x2 - 10*x7 - 5*x12 - 11*x17 + x28 <= 0)

@constraint(m,  - 15*x2 - 10*x7 - 5*x12 - 11*x17 + x29 <= 0)

@constraint(m,  - 15*x2 - 10*x7 - 5*x12 - 11*x17 + x30 <= 0)

@constraint(m,  - 28*x3 - 14*x8 - 22*x18 + x31 <= 0)

@constraint(m,  - 28*x3 - 14*x8 - 22*x18 + x32 <= 0)

@constraint(m,  - 28*x3 - 14*x8 - 22*x18 + x33 <= 0)

@constraint(m,  - 28*x3 - 14*x8 - 22*x18 + x34 <= 0)

@constraint(m,  - 28*x3 - 14*x8 - 22*x18 + x35 <= 0)

@constraint(m,  - 23*x4 - 15*x9 - 7*x14 - 17*x19 + x36 <= 0)

@constraint(m,  - 23*x4 - 15*x9 - 7*x14 - 17*x19 + x37 <= 0)

@constraint(m,  - 23*x4 - 15*x9 - 7*x14 - 17*x19 + x38 <= 0)

@constraint(m,  - 23*x4 - 15*x9 - 7*x14 - 17*x19 + x39 <= 0)

@constraint(m,  - 23*x4 - 15*x9 - 7*x14 - 17*x19 + x40 <= 0)

@constraint(m,  - 81*x5 - 57*x10 - 29*x15 - 55*x20 + x41 <= 0)

@constraint(m,  - 81*x5 - 57*x10 - 29*x15 - 55*x20 + x42 <= 0)

@constraint(m,  - 81*x5 - 57*x10 - 29*x15 - 55*x20 + x43 <= 0)

@constraint(m,  - 81*x5 - 57*x10 - 29*x15 - 55*x20 + x44 <= 0)

@constraint(m,  - 81*x5 - 57*x10 - 29*x15 - 55*x20 + x45 <= 0)

@constraint(m, x21 + x46 == 200)

@constraint(m, x22 + x47 == 220)

@constraint(m, x23 + x48 == 250)

@constraint(m, x24 + x49 == 270)

@constraint(m, x25 + x50 == 300)

@constraint(m, x26 + x51 == 50)

@constraint(m, x27 + x52 == 150)

@constraint(m, x28 + x53 == 0)

@constraint(m, x29 + x54 == 0)

@constraint(m, x30 + x55 == 0)

@constraint(m, x31 + x56 == 140)

@constraint(m, x32 + x57 == 160)

@constraint(m, x33 + x58 == 180)

@constraint(m, x34 + x59 == 200)

@constraint(m, x35 + x60 == 220)

@constraint(m, x36 + x61 == 10)

@constraint(m, x37 + x62 == 50)

@constraint(m, x38 + x63 == 80)

@constraint(m, x39 + x64 == 100)

@constraint(m, x40 + x65 == 340)

@constraint(m, x41 + x66 == 580)

@constraint(m, x42 + x67 == 600)

@constraint(m, x43 + x68 == 620)

@constraint(m, x44 + x69 == 0)

@constraint(m, x45 + x70 == 0)

@constraint(m,  - 18*x1 - 21*x2 - 18*x3 - 16*x4 - 10*x5 - 15*x7 - 16*x8 - 14*x9 - 9*x10 - 10*x12 - 9*x14 - 6*x15
     - 17*x16 - 16*x17 - 17*x18 - 15*x19 - 10*x20 + x71 == 0)

@constraint(m,  - 2.6*x46 - 0.65*x47 - 4.55*x48 - 2.6*x49 - 2.6*x50 - 3.9*x51 - 9.1*x52 - 0.7*x56 - 1.4*x57 - 2.8*x58
     - 1.4*x59 - 0.7*x60 - 1.4*x61 - 1.4*x62 - 2.1*x63 - 1.4*x64 - 0.7*x65 - 0.1*x66 - 0.8*x67 - 0.1*x68 + x72 == 0)
