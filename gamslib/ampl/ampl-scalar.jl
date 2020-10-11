#  LP written by GAMS Convert at 10/11/20 12:21:45
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13        9        0        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         23       23        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         75       75        0        0
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
@variable(m, 0 <= x13 <= 35.8, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18 <= 7.32, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)

@objective(m, Max, 1.73*x1 + 1.8*x2 + 1.6*x3 + 2.2*x4 + 1.82*x5 + 1.9*x6 + 1.7*x7 + 0.95*x8 + 1.05*x9 + 1.1*x10
     + 0.95*x11 + 1.33*x12 - 0.03*x13 - 0.03*x14 - 0.03*x15 - 0.03*x16 + 0.02*x17 - 0.025*x18 - 0.025*x19 - 0.025*x20
     - 0.025*x21 - 0.01*x22)

@constraint(m, x1 + x5 + x9 <= 123)

@constraint(m, x2 + x6 + x10 <= 123)

@constraint(m, x3 + x7 + x11 <= 123)

@constraint(m, x4 + x8 + x12 <= 123)

@constraint(m, 0.79*x1 + 0.83*x5 + 0.92*x9 - x13 + x14 == 0)

@constraint(m, 0.79*x2 + 0.83*x6 + 0.92*x10 - x14 + x15 == 0)

@constraint(m, 0.79*x3 + 0.83*x7 + 0.92*x11 - x15 + x16 == 0)

@constraint(m, 0.79*x4 + 0.83*x8 + 0.92*x12 - x16 + x17 == 0)

@constraint(m, 0.21*x1 + 0.17*x5 + 0.08*x9 - x18 + x19 == 0)

@constraint(m, 0.21*x2 + 0.17*x6 + 0.08*x10 - x19 + x20 == 0)

@constraint(m, 0.21*x3 + 0.17*x7 + 0.08*x11 - x20 + x21 == 0)

@constraint(m, 0.21*x4 + 0.17*x8 + 0.08*x12 - x21 + x22 == 0)
