#  LP written by GAMS Convert at 10/11/20 12:16:14
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21        9        0       12        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       43        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        116      116        0        0
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
@variable(m, 0 <= x29 <= 20, start=0)
@variable(m, 0 <= x30 <= 20, start=0)
@variable(m, 0 <= x31 <= 0, start=0)
@variable(m, 0 <= x32 <= 20, start=0)
@variable(m, 0 <= x33 <= 20, start=0)
@variable(m, 0 <= x34 <= 0, start=0)
@variable(m, 25 <= x35, start=25)
@variable(m, 30 <= x36, start=30)
@variable(m, 30 <= x37, start=30)
@variable(m, 30 <= x38, start=30)
@variable(m, 25 <= x39, start=25)
@variable(m, 25 <= x40, start=25)
@variable(m, x41, start=0)
@variable(m, x42, start=0)

@objective(m, Max,  - x41 + x42)

@constraint(m,  - 2*x1 - 4*x2 - x3 - 3*x4 - 3*x5 - 4*x6 - 2*x7 - 3*x8 - 5*x9 - 2*x10 - 4*x11 - 4*x12 - 5*x13 - 3*x14
     - 3*x15 - 5*x16 - 2*x17 - 4*x18 - 4*x19 - 5*x20 - 3*x21 - 4*x22 - 6*x23 - 3*x24 - 5*x25 - 5*x26 - 6*x27 - 4*x28
     - x29 - x30 - x31 - x32 - x33 - x34 + x41 == 0)

@constraint(m,  - 10*x35 - 10*x36 - 9*x37 - 11*x38 - 11*x39 - 10*x40 + x42 == 0)

@constraint(m, 4*x1 + 4*x4 + 6*x6 <= 100)

@constraint(m, 7*x2 + 6*x5 + 6*x7 <= 100)

@constraint(m, 3*x3 <= 40)

@constraint(m, 3*x8 + 3*x11 + 5*x13 <= 80)

@constraint(m, 6*x9 + 5*x12 + 5*x14 <= 90)

@constraint(m, 2*x10 <= 30)

@constraint(m, 5*x15 + 5*x18 + 7*x20 <= 110)

@constraint(m, 8*x16 + 7*x19 + 7*x21 <= 110)

@constraint(m, 4*x17 <= 50)

@constraint(m, 4*x22 + 4*x25 + 5*x27 <= 90)

@constraint(m, 7*x23 + 6*x26 + 6*x28 <= 100)

@constraint(m, 3*x24 <= 40)

@constraint(m, x1 + x2 + x3 + x8 + x9 + x10 - x29 - x35 == 0)

@constraint(m, x4 + x5 + x11 + x12 - x30 - x36 == 0)

@constraint(m, x6 + x7 + x13 + x14 - x31 - x37 == 0)

@constraint(m, x15 + x16 + x17 + x22 + x23 + x24 + x29 - x32 - x38 == 0)

@constraint(m, x18 + x19 + x25 + x26 + x30 - x33 - x39 == 0)

@constraint(m, x20 + x21 + x27 + x28 + x31 - x34 - x40 == 0)
