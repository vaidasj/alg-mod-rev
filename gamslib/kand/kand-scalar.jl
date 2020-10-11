#  LP written by GAMS Convert at 10/11/20 12:39:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         26        1       24        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         29       29        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        123      123        0        0
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

@objective(m, Min, 2*x1 + 2*x2 + 3*x3 + 3*x4 + 2.1*x5 + 2.8*x6 + 2.1*x7 + 0.6*x8 + 1.5*x9 + 0.9*x10 + 1.2*x11 + 1.6*x12
     + 1.2*x13 + 1.2*x14 + 1.2*x15 + 0.6*x16 + 3.6*x17 + 4.8*x18 + 3.6*x19 + 0.9*x20 + 2.25*x21 + 1.35*x22 + 1.8*x23
     + 2.4*x24 + 1.8*x25 + 1.8*x26 + 1.8*x27 + 0.9*x28)

@constraint(m, x1 + x2 + x3 + x4 <= 50)

@constraint(m, 2*x1 + 6*x3 + x5 >= 200)

@constraint(m, 2*x1 + 6*x3 + x6 >= 180)

@constraint(m, 2*x1 + 6*x3 + x7 >= 160)

@constraint(m, 2*x2 + 6*x4 + 0*x5 + x8 >= 200)

@constraint(m, 2*x2 + 6*x4 + 0*x5 + x9 >= 180)

@constraint(m, 2*x2 + 6*x4 + 0*x5 + x10 >= 160)

@constraint(m, 2*x2 + 6*x4 + 0*x6 + x11 >= 200)

@constraint(m, 2*x2 + 6*x4 + 0*x6 + x12 >= 180)

@constraint(m, 2*x2 + 6*x4 + 0*x6 + x13 >= 160)

@constraint(m, 2*x2 + 6*x4 + 0*x7 + x14 >= 200)

@constraint(m, 2*x2 + 6*x4 + 0*x7 + x15 >= 180)

@constraint(m, 2*x2 + 6*x4 + 0*x7 + x16 >= 160)

@constraint(m, 3*x1 + 3.4*x3 + x17 >= 180)

@constraint(m, 3*x1 + 3.4*x3 + x18 >= 160)

@constraint(m, 3*x1 + 3.4*x3 + x19 >= 140)

@constraint(m, 3*x2 + 3.4*x4 + 0*x17 + x20 >= 180)

@constraint(m, 3*x2 + 3.4*x4 + 0*x17 + x21 >= 160)

@constraint(m, 3*x2 + 3.4*x4 + 0*x17 + x22 >= 140)

@constraint(m, 3*x2 + 3.4*x4 + 0*x18 + x23 >= 180)

@constraint(m, 3*x2 + 3.4*x4 + 0*x18 + x24 >= 160)

@constraint(m, 3*x2 + 3.4*x4 + 0*x18 + x25 >= 140)

@constraint(m, 3*x2 + 3.4*x4 + 0*x19 + x26 >= 180)

@constraint(m, 3*x2 + 3.4*x4 + 0*x19 + x27 >= 160)

@constraint(m, 3*x2 + 3.4*x4 + 0*x19 + x28 >= 140)
