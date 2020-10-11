#  LP written by GAMS Convert at 10/11/20 12:16:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         74        5       43       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         78       78        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        230      230        0        0
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
@variable(m, 0 <= x73, start=0)
@variable(m, x75, start=0)
@variable(m, x76, start=0)
@variable(m, x77, start=0)
@variable(m, x78, start=0)

@objective(m, Min, x75 + x76 + x77 - x78)

@constraint(m, x11 + x16 + x21 - x26 - x27 - x28 - x69 >= 0)

@constraint(m, x12 + x17 + x22 - x29 - x30 - x31 - x70 >= 0)

@constraint(m, x13 + x18 + x23 - x32 - x33 - x34 - x71 >= 0)

@constraint(m, x14 + x19 + x24 - x35 - x36 - x37 - x72 >= 0)

@constraint(m, x15 + x20 + x25 - x38 - x39 - x40 - x73 >= 0)

@constraint(m, x1 - 0.77*x11 - 0.95*x21 >= 0)

@constraint(m, x2 - 0.77*x12 - 0.95*x22 >= 0)

@constraint(m, x3 - 0.77*x13 - 0.95*x23 >= 0)

@constraint(m, x4 - 0.77*x14 - 0.95*x24 >= 0)

@constraint(m, x5 - 0.77*x15 - 0.95*x25 >= 0)

@constraint(m, x6 - 1.09*x16 >= 0)

@constraint(m, x7 - 1.09*x17 >= 0)

@constraint(m, x8 - 1.09*x18 >= 0)

@constraint(m, x9 - 1.09*x19 >= 0)

@constraint(m, x10 - 1.09*x20 >= 0)

@constraint(m,  - 1.58*x1 - 1.38*x6 + x41 >= 0)

@constraint(m,  - 1.58*x2 - 1.38*x7 + x42 >= 0)

@constraint(m,  - 1.58*x3 - 1.38*x8 + x43 >= 0)

@constraint(m,  - 1.58*x4 - 1.38*x9 + x44 >= 0)

@constraint(m,  - 1.58*x5 - 1.38*x10 + x45 >= 0)

@constraint(m,  - 0.63*x1 + x46 >= 0)

@constraint(m,  - 0.63*x2 + x47 >= 0)

@constraint(m,  - 0.63*x3 + x48 >= 0)

@constraint(m,  - 0.63*x4 + x49 >= 0)

@constraint(m,  - 0.63*x5 + x50 >= 0)

@constraint(m,  - 0.57*x6 + x51 >= 0)

@constraint(m,  - 0.57*x7 + x52 >= 0)

@constraint(m,  - 0.57*x8 + x53 >= 0)

@constraint(m,  - 0.57*x9 + x54 >= 0)

@constraint(m,  - 0.57*x10 + x55 >= 0)

@constraint(m,  - 0.58*x16 + x56 >= 0)

@constraint(m,  - 0.58*x17 + x57 >= 0)

@constraint(m,  - 0.58*x18 + x58 >= 0)

@constraint(m,  - 0.58*x19 + x59 >= 0)

@constraint(m,  - 0.58*x20 + x60 >= 0)

@constraint(m,  - 0.33*x11 - 0.12*x21 + x61 >= 0)

@constraint(m,  - 0.33*x12 - 0.12*x22 + x62 >= 0)

@constraint(m,  - 0.33*x13 - 0.12*x23 + x63 >= 0)

@constraint(m,  - 0.33*x14 - 0.12*x24 + x64 >= 0)

@constraint(m,  - 0.33*x15 - 0.12*x25 + x65 >= 0)

@constraint(m, x1 <= 3.25)

@constraint(m, x2 <= 1.4)

@constraint(m, x3 <= 1.1)

@constraint(m, x4 <= 0)

@constraint(m, x5 <= 0)

@constraint(m, x11 <= 1.5)

@constraint(m, x12 <= 0.85)

@constraint(m, x13 <= 0)

@constraint(m, x14 <= 0)

@constraint(m, x15 <= 0)

@constraint(m, x21 <= 2.07)

@constraint(m, x22 <= 1.5)

@constraint(m, x23 <= 1.3)

@constraint(m, x24 <= 0)

@constraint(m, x25 <= 0)

@constraint(m, x6 <= 0)

@constraint(m, x7 <= 0)

@constraint(m, x8 <= 0)

@constraint(m, x9 <= 0.98)

@constraint(m, x10 <= 1)

@constraint(m, x16 <= 0)

@constraint(m, x17 <= 0)

@constraint(m, x18 <= 0)

@constraint(m, x19 <= 1.13)

@constraint(m, x20 <= 0.56)

@constraint(m, x26 + x29 + x32 + x35 + x38 + x66 >= 4.01093)

@constraint(m, x27 + x30 + x33 + x36 + x39 + x67 >= 2.18778)

@constraint(m, x28 + x31 + x34 + x37 + x40 + x68 >= 1.09389)

@constraint(m, x69 + x70 + x71 + x72 + x73 <= 1)

@constraint(m,  - 18.7*x41 - 18.7*x42 - 18.7*x43 - 18.7*x44 - 18.7*x45 - 52.17*x46 - 52.17*x47 - 52.17*x48 - 52.17*x49
     - 52.17*x50 - 14*x51 - 14*x52 - 14*x53 - 14*x54 - 14*x55 - 24*x56 - 24*x57 - 24*x58 - 24*x59 - 24*x60 - 105*x61
     - 105*x62 - 105*x63 - 105*x64 - 105*x65 + x75 == 0)

@constraint(m,  - 12.5936*x26 - 4.3112*x27 - 11.93*x28 - 11.0228*x29 - 11.132*x31 - 9.3596*x32 - 13.442*x33 - 8.3936*x34
     - 11.0228*x35 - 11.132*x37 - 4.034*x38 - 11.594*x39 - 8.864*x40 - 6.0752*x66 - 6.8564*x67 - 5*x68 - 8.6876*x69
     - 6.8564*x70 - 6.8564*x72 - 5.126*x73 + x76 == 0)

@constraint(m,  - 150*x66 - 150*x67 - 150*x68 + x77 == 0)

@constraint(m,  - 140*x69 - 140*x70 - 140*x71 - 140*x72 - 140*x73 + x78 == 0)
