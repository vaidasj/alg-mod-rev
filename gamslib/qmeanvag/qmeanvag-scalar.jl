#  MIQCP written by GAMS Convert at 10/11/20 13:04:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         46       10       14       22        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         37       23       14        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        119      112        7        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x2 <= 0, start=0)
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
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 0 <= b31 <= 1, binary=true, start=0)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 0 <= b33 <= 1, binary=true, start=0)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)
@variable(m, 0 <= b35 <= 1, binary=true, start=0)
@variable(m, 0 <= b36 <= 1, binary=true, start=0)
@variable(m, 0 <= b37 <= 1, binary=true, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(42.18*$(x3)*$(x3) + 40.36*$(x3)*$(x4) + 21.76*$(x3)*$(x5) + 10.6*$(x3)*$(x6)
     + 24.64*$(x3)*$(x7) + 47.68*$(x3)*$(x8) + 34.82*$(x3)*$(x9) + 70.89*$(x4)*$(x4) + 43.16*$(x4)*$(x5) + 30.82*$(x4)*
    $(x6) + 46.48*$(x4)*$(x7) + 47.6*$(x4)*$(x8) + 25.24*$(x4)*$(x9) + 25.51*$(x5)*$(x5) + 19.2*$(x5)*$(x6) + 45.26*
    $(x5)*$(x7) + 26.44*$(x5)*$(x8) + 9.4*$(x5)*$(x9) + 22.33*$(x6)*$(x6) + 20.64*$(x6)*$(x7) + 20.92*$(x6)*$(x8) + 2*
    $(x6)*$(x9) + 30.01*$(x7)*$(x7) + 32.72*$(x7)*$(x8) + 14.4*$(x7)*$(x9) + 42.23*$(x8)*$(x8) + 19.8*$(x8)*$(x9) + 
    16.42*$(x9)*$(x9)))

@constraint(m, x3 + x4 + x5 + x6 + x7 + x8 + x9 == 1)

@constraint(m, x3 - x10 + x17 == 0.2)

@constraint(m, x4 - x11 + x18 == 0.2)

@constraint(m, x5 - x12 + x19 == 0)

@constraint(m, x6 - x13 + x20 == 0)

@constraint(m, x7 - x14 + x21 == 0.2)

@constraint(m, x8 - x15 + x22 == 0.2)

@constraint(m, x9 - x16 + x23 == 0.2)

@constraint(m, x10 + x11 + x12 + x13 + x14 + x15 + x16 <= 0.3)

@constraint(m, x10 - 0.11*b24 <= 0)

@constraint(m, x11 - 0.1*b25 <= 0)

@constraint(m, x12 - 0.07*b26 <= 0)

@constraint(m, x13 - 0.11*b27 <= 0)

@constraint(m, x14 - 0.2*b28 <= 0)

@constraint(m, x15 - 0.1*b29 <= 0)

@constraint(m, x16 - 0.1*b30 <= 0)

@constraint(m, x10 - 0.03*b24 >= 0)

@constraint(m, x11 - 0.04*b25 >= 0)

@constraint(m, x12 - 0.04*b26 >= 0)

@constraint(m, x13 - 0.03*b27 >= 0)

@constraint(m, x14 - 0.03*b28 >= 0)

@constraint(m, x15 - 0.03*b29 >= 0)

@constraint(m, x16 - 0.03*b30 >= 0)

@constraint(m, x17 - 0.2*b31 <= 0)

@constraint(m, x18 - 0.15*b32 <= 0)

@constraint(m, x19 <= 0)

@constraint(m, x20 <= 0)

@constraint(m, x21 - 0.1*b35 <= 0)

@constraint(m, x22 - 0.15*b36 <= 0)

@constraint(m, x23 - 0.2*b37 <= 0)

@constraint(m, x17 - 0.02*b31 >= 0)

@constraint(m, x18 - 0.02*b32 >= 0)

@constraint(m, x19 - 0.04*b33 >= 0)

@constraint(m, x20 - 0.04*b34 >= 0)

@constraint(m, x21 - 0.04*b35 >= 0)

@constraint(m, x22 - 0.04*b36 >= 0)

@constraint(m, x23 - 0.04*b37 >= 0)

@constraint(m, b24 + b31 <= 1)

@constraint(m, b25 + b32 <= 1)

@constraint(m, b26 + b33 <= 1)

@constraint(m, b27 + b34 <= 1)

@constraint(m, b28 + b35 <= 1)

@constraint(m, b29 + b36 <= 1)

@constraint(m, b30 + b37 <= 1)

@constraint(m, x2 - 0.1287*x3 - 0.1096*x4 - 0.0501*x5 - 0.1524*x6 - 0.0763*x7 - 0.1854*x8 - 0.062*x9 == 0)
