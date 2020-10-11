#  MINLP written by GAMS Convert at 10/11/20 12:25:57
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         52       16       14       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       29       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        153      139       14        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

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
@variable(m, x23, start=0)
@variable(m, x24, start=0)
@variable(m, x25, start=0)
@variable(m, x26, start=0)
@variable(m, x27, start=0)
@variable(m, x28, start=0)
@variable(m, x29, start=0)
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
@variable(m, 0 <= b41 <= 1, binary=true, start=0)
@variable(m, 0 <= b42 <= 1, binary=true, start=0)
@variable(m, 0 <= b43 <= 1, binary=true, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :($(x2)*$(x23) + $(x3)*$(x24) + $(x4)*$(x25) + $(x5)*$(x26) + $(x6)*$(x27) + 
    $(x7)*$(x28) + $(x8)*$(x29) - 0.06435*$(x2) - 0.0548*$(x3) - 0.02505*$(x4) - 0.0762*$(x5) - 0.03815*$(x6) - 0.0927*
    $(x7) - 0.031*$(x8)))

@constraint(m, x2 + x3 + x4 + x5 + x6 + x7 + x8 == 1)

@constraint(m, x9 + x10 + x11 + x12 + x13 + x14 + x15 <= 0.3)

@constraint(m, x9 - 0.11*b30 <= 0)

@constraint(m, x10 - 0.1*b31 <= 0)

@constraint(m, x11 - 0.07*b32 <= 0)

@constraint(m, x12 - 0.11*b33 <= 0)

@constraint(m, x13 - 0.2*b34 <= 0)

@constraint(m, x14 - 0.1*b35 <= 0)

@constraint(m, x15 - 0.1*b36 <= 0)

@constraint(m, x9 - 0.03*b30 >= 0)

@constraint(m, x10 - 0.04*b31 >= 0)

@constraint(m, x11 - 0.04*b32 >= 0)

@constraint(m, x12 - 0.03*b33 >= 0)

@constraint(m, x13 - 0.03*b34 >= 0)

@constraint(m, x14 - 0.03*b35 >= 0)

@constraint(m, x15 - 0.03*b36 >= 0)

@constraint(m, x16 - 0.2*b37 <= 0)

@constraint(m, x17 - 0.15*b38 <= 0)

@constraint(m, x18 <= 0)

@constraint(m, x19 <= 0)

@constraint(m, x20 - 0.1*b41 <= 0)

@constraint(m, x21 - 0.15*b42 <= 0)

@constraint(m, x22 - 0.2*b43 <= 0)

@constraint(m, x16 - 0.02*b37 >= 0)

@constraint(m, x17 - 0.02*b38 >= 0)

@constraint(m, x18 - 0.04*b39 >= 0)

@constraint(m, x19 - 0.04*b40 >= 0)

@constraint(m, x20 - 0.04*b41 >= 0)

@constraint(m, x21 - 0.04*b42 >= 0)

@constraint(m, x22 - 0.04*b43 >= 0)

@constraint(m, b30 + b37 <= 1)

@constraint(m, b31 + b38 <= 1)

@constraint(m, b32 + b39 <= 1)

@constraint(m, b33 + b40 <= 1)

@constraint(m, b34 + b41 <= 1)

@constraint(m, b35 + b42 <= 1)

@constraint(m, b36 + b43 <= 1)

@constraint(m, x2 - x9 + x16 == 0.2)

@constraint(m, x3 - x10 + x17 == 0.2)

@constraint(m, x4 - x11 + x18 == 0)

@constraint(m, x5 - x12 + x19 == 0)

@constraint(m, x6 - x13 + x20 == 0.2)

@constraint(m, x7 - x14 + x21 == 0.2)

@constraint(m, x8 - x15 + x22 == 0.2)

@constraint(m,  - 42.18*x2 - 40.36*x3 - 21.76*x4 - 10.6*x5 - 24.64*x6 - 47.68*x7 - 34.82*x8 + x23 == 0)

@constraint(m,  - 70.89*x3 - 43.16*x4 - 30.82*x5 - 46.48*x6 - 47.6*x7 - 25.24*x8 + x24 == 0)

@constraint(m,  - 25.51*x4 - 19.2*x5 - 45.26*x6 - 26.44*x7 - 9.4*x8 + x25 == 0)

@constraint(m,  - 22.33*x5 - 20.64*x6 - 20.92*x7 - 2*x8 + x26 == 0)

@constraint(m,  - 30.01*x6 - 32.72*x7 - 14.4*x8 + x27 == 0)

@constraint(m,  - 42.23*x7 - 19.8*x8 + x28 == 0)

@constraint(m,  - 16.42*x8 + x29 == 0)
