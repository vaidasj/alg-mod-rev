#  LP written by GAMS Convert at 10/11/20 12:23:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         41       17        0       24        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         48       48        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        184      184        0        0
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
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
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

@objective(m, Max, x9 - x10 - x11 + x12)

@constraint(m, x1 + x2 + x3 + x4 <= 4)

@constraint(m, x1 + x2 + x3 + x4 <= 4)

@constraint(m, x1 + 0.5*x2 + x3 + x4 + 0.5*x5 <= 4)

@constraint(m, x1 + x3 + x4 + x5 <= 4)

@constraint(m, x1 + 0.25*x4 + x5 + 0.25*x6 <= 4)

@constraint(m, x5 + x6 <= 4)

@constraint(m, x5 + x6 + 0.75*x7 <= 4)

@constraint(m, x5 + x6 + x7 <= 4)

@constraint(m, x5 + x6 + x7 <= 4)

@constraint(m, x5 + 0.5*x6 + x7 <= 4)

@constraint(m, 0.5*x1 + 0.25*x2 + 0.25*x3 + 0.5*x4 + 0.75*x5 + 0.75*x7 <= 4)

@constraint(m, x1 + x2 + x3 + x4 <= 4)

@constraint(m, 1.72*x1 + 4.5*x2 + 0.75*x3 + 5.16*x4 - x13 - x37 <= 0)

@constraint(m, 0.5*x1 + x2 + 0.75*x3 + 5*x4 - x14 - x38 <= 0)

@constraint(m, x1 + 8*x2 + 0.75*x3 + 5*x4 + 5*x5 - x15 - x39 <= 0)

@constraint(m, x1 + 16*x3 + 19.58*x4 + 5*x5 - x16 - x40 <= 0)

@constraint(m, 17.16*x1 + 2.42*x4 + 9*x5 + 4.3*x6 - x17 - x41 <= 0)

@constraint(m, 2.34*x1 + 2*x5 + 5.04*x6 - x18 - x42 <= 0)

@constraint(m, 1.5*x5 + 7.16*x6 + 17*x7 - x19 - x43 <= 0)

@constraint(m, 2*x5 + 7.97*x6 + 15*x7 - x20 - x44 <= 0)

@constraint(m, x5 + 4.41*x6 + 12*x7 - x21 - x45 <= 0)

@constraint(m, 26*x5 + 1.12*x6 + 7*x7 - x22 - x46 <= 0)

@constraint(m, 2.43*x1 + 2.5*x2 + 7.5*x3 + 11.16*x4 + 12*x5 + 6*x7 - x23 - x47 <= 0)

@constraint(m, 1.35*x1 + 7.5*x2 + 0.75*x3 + 4.68*x4 - x24 - x48 <= 0)

@constraint(m,  - x13 - x25 == -25)

@constraint(m,  - x14 - x26 == -25)

@constraint(m,  - x15 - x27 == -25)

@constraint(m,  - x16 - x28 == -25)

@constraint(m,  - x17 - x29 == -25)

@constraint(m,  - x18 - x30 == -25)

@constraint(m,  - x19 - x31 == -25)

@constraint(m,  - x20 - x32 == -25)

@constraint(m,  - x21 - x33 == -25)

@constraint(m,  - x22 - x34 == -25)

@constraint(m,  - x23 - x35 == -25)

@constraint(m,  - x24 - x36 == -25)

@constraint(m,  - 150*x1 - 200*x3 - 375*x4 - 525*x5 - 140*x6 - 360*x7 + x9 == 0)

@constraint(m,  - 10*x1 - 5*x3 - 50*x4 - 80*x5 - 5*x6 - 50*x7 + x10 == 0)

@constraint(m, x11 - 4*x37 - 4*x38 - 4*x39 - 4*x40 - 4*x41 - 4*x42 - 4*x43 - 4*x44 - 4*x45 - 4*x46 - 4*x47 - 4*x48 == 0)

@constraint(m, x12 - 3*x25 - 3*x26 - 3*x27 - 3*x28 - 3*x29 - 3*x30 - 3*x31 - 3*x32 - 3*x33 - 3*x34 - 3*x35 - 3*x36 == 0)
