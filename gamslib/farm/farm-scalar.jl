#  LP written by GAMS Convert at 10/11/20 12:40:54
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        1        6        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         22       22        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         52       52        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0 <= x5, start=0)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11 <= 6000, start=0)
@variable(m, 0 <= x12 <= 6000, start=0)
@variable(m, 0 <= x13 <= 6000, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
@variable(m, 0 <= x22, start=0)

@objective(m, Max,  - 150*x1 - 230*x2 - 260*x3 + 56.6666666666667*x5 + 56.6666666666667*x6 + 56.6666666666667*x7 + 50*x8
     + 50*x9 + 50*x10 + 12*x11 + 12*x12 + 12*x13 + 3.33333333333333*x14 + 3.33333333333333*x15 + 3.33333333333333*x16
     - 79.3333333333333*x17 - 79.3333333333333*x18 - 79.3333333333333*x19 - 70*x20 - 70*x21 - 70*x22)

@constraint(m, x1 + x2 + x3 <= 500)

@constraint(m, 3*x1 - x5 + x17 >= 200)

@constraint(m, 2.5*x1 - x6 + x18 >= 200)

@constraint(m, 2*x1 - x7 + x19 >= 200)

@constraint(m, 3.6*x2 - x8 + x20 >= 240)

@constraint(m, 3*x2 - x9 + x21 >= 240)

@constraint(m, 2.4*x2 - x10 + x22 >= 240)

@constraint(m,  - 24*x3 + x11 + x14 <= 0)

@constraint(m,  - 20*x3 + x12 + x15 <= 0)

@constraint(m,  - 16*x3 + x13 + x16 <= 0)
