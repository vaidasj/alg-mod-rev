#  LP written by GAMS Convert at 10/11/20 12:25:10
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11       11        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        130      130        0        0
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
@variable(m, 5 <= x41, start=5)
@variable(m, 6 <= x42, start=6)
@variable(m, 7 <= x43, start=7)
@variable(m, 6 <= x44, start=6)
@variable(m, 4 <= x45, start=4)
@variable(m, 9 <= x46, start=9)
@variable(m, 8 <= x47, start=8)
@variable(m, 8 <= x48, start=8)
@variable(m, 6 <= x49, start=6)
@variable(m, 4 <= x50, start=4)

@objective(m, Min, 50*x1 + 85*x2 + 115*x3 + 143*x4 + 52.5*x5 + 89.25*x6 + 120.75*x7 + 150.15*x8 + 56*x9 + 95.2*x10
     + 128.8*x11 + 160.16*x12 + 85.5*x13 + 145.35*x14 + 196.65*x15 + 244.53*x16 + 90*x17 + 153*x18 + 207*x19 + 257.4*x20
     + 95*x21 + 161.5*x22 + 218.5*x23 + 271.7*x24 + 98.5*x25 + 167.45*x26 + 226.55*x27 + 281.71*x28 + 105*x29
     + 178.5*x30 + 241.5*x31 + 300.3*x32 + 111*x33 + 188.7*x34 + 255.3*x35 + 317.46*x36 + 119*x37 + 202.3*x38
     + 273.7*x39 + 340.34*x40)

@constraint(m,  - x1 - x2 - x3 - x4 + x41 == 0)

@constraint(m, x1 - x5 - x6 - x7 - x8 - x41 + x42 == 0)

@constraint(m, x2 + x5 - x9 - x10 - x11 - x12 - x42 + x43 == 0)

@constraint(m, x3 + x6 + x9 - x13 - x14 - x15 - x16 - x43 + x44 == 0)

@constraint(m, x4 + x7 + x10 + x13 - x17 - x18 - x19 - x20 - x44 + x45 == 0)

@constraint(m, x8 + x11 + x14 + x17 - x21 - x22 - x23 - x24 - x45 + x46 == 0)

@constraint(m, x12 + x15 + x18 + x21 - x25 - x26 - x27 - x28 - x46 + x47 == 0)

@constraint(m, x16 + x19 + x22 + x25 - x29 - x30 - x31 - x32 - x47 + x48 == 0)

@constraint(m, x20 + x23 + x26 + x29 - x33 - x34 - x35 - x36 - x48 + x49 == 0)

@constraint(m, x24 + x27 + x30 + x33 - x37 - x38 - x39 - x40 - x49 + x50 == 0)
