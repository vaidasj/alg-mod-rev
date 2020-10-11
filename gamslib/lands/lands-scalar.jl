#  LP written by GAMS Convert at 10/11/20 12:39:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24        1       10       13        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         41       41        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        133      133        0        0
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

@objective(m, Min, 10*x1 + 7*x2 + 16*x3 + 6*x4 + 12*x6 + 16*x7 + 12*x8 + 7.2*x9 + 9.6*x10 + 7.2*x11 + 1.2*x12 + 1.6*x13
     + 1.2*x14 + 13.5*x15 + 18*x16 + 13.5*x17 + 8.1*x18 + 10.8*x19 + 8.1*x20 + 1.35*x21 + 1.8*x22 + 1.35*x23 + 9.6*x24
     + 12.8*x25 + 9.6*x26 + 5.76*x27 + 7.68*x28 + 5.76*x29 + 0.96*x30 + 1.28*x31 + 0.96*x32 + 16.5*x33 + 22*x34
     + 16.5*x35 + 9.9*x36 + 13.2*x37 + 9.9*x38 + 1.65*x39 + 2.2*x40 + 1.65*x41)

@constraint(m, x1 + x2 + x3 + x4 >= 12)

@constraint(m, 10*x1 + 7*x2 + 16*x3 + 6*x4 <= 120)

@constraint(m,  - x1 + x6 + x9 + x12 <= 0)

@constraint(m,  - x1 + x7 + x10 + x13 <= 0)

@constraint(m,  - x1 + x8 + x11 + x14 <= 0)

@constraint(m,  - x2 + x15 + x18 + x21 <= 0)

@constraint(m,  - x2 + x16 + x19 + x22 <= 0)

@constraint(m,  - x2 + x17 + x20 + x23 <= 0)

@constraint(m,  - x3 + x24 + x27 + x30 <= 0)

@constraint(m,  - x3 + x25 + x28 + x31 <= 0)

@constraint(m,  - x3 + x26 + x29 + x32 <= 0)

@constraint(m,  - x4 + x33 + x36 + x39 <= 0)

@constraint(m,  - x4 + x34 + x37 + x40 <= 0)

@constraint(m,  - x4 + x35 + x38 + x41 <= 0)

@constraint(m, x6 + x15 + x24 + x33 >= 3)

@constraint(m, x7 + x16 + x25 + x34 >= 5)

@constraint(m, x8 + x17 + x26 + x35 >= 7)

@constraint(m, x9 + x18 + x27 + x36 >= 3)

@constraint(m, x10 + x19 + x28 + x37 >= 3)

@constraint(m, x11 + x20 + x29 + x38 >= 3)

@constraint(m, x12 + x21 + x30 + x39 >= 2)

@constraint(m, x13 + x22 + x31 + x40 >= 2)

@constraint(m, x14 + x23 + x32 + x41 >= 2)
