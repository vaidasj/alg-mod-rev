#  LP written by GAMS Convert at 10/11/20 12:18:11
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         46        9       26       11        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         61       61        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        237      237        0        0
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
@variable(m, x59, start=0)
@variable(m, x60, start=0)
@variable(m, x61, start=0)

@objective(m, Max, x59 - x60 - x61)

@constraint(m, x18 - x20 - x21 >= 0)

@constraint(m, 0.236*x2 - x22 - x23 >= 0)

@constraint(m, 0.223*x2 - x3 - x24 - x25 - x26 >= 0)

@constraint(m, 0.087*x2 - x4 - x27 >= 0)

@constraint(m,  - x1 + 0.111*x2 - x28 - x29 >= 0)

@constraint(m, 0.315*x2 - x30 >= 0)

@constraint(m, 0.807*x3 - x31 - x32 >= 0)

@constraint(m, 0.31*x1 + 0.029*x2 + 0.129*x3 + 0.3*x4 - x33 >= 0)

@constraint(m, 0.59*x1 + 0.59*x4 - x34 - x35 >= 0)

@constraint(m, 0.22*x1 + 0.21*x4 - x36 - x37 >= 0)

@constraint(m,  - x38 >= 0)

@constraint(m, x19 - x39 - x40 >= 0)

@constraint(m, 0.18*x7 - x41 - x42 >= 0)

@constraint(m, 0.196*x7 - x8 - x43 - x44 - x45 >= 0)

@constraint(m, 0.073*x7 - x9 - x46 >= 0)

@constraint(m,  - x6 + 0.091*x7 - x47 - x48 >= 0)

@constraint(m, 0.443*x7 - x10 - x49 >= 0)

@constraint(m, 0.836*x8 - x50 - x51 >= 0)

@constraint(m, 0.38*x6 + 0.017*x7 + 0.099*x8 + 0.36*x9 - x52 >= 0)

@constraint(m, 0.6*x6 + 0.58*x9 - x53 - x54 >= 0)

@constraint(m, 0.15*x6 + 0.15*x9 - x55 - x56 >= 0)

@constraint(m, 0.97*x10 - x57 >= 0)

@constraint(m,  - x2 + x16 >= 0)

@constraint(m,  - x7 + x17 >= 0)

@constraint(m, x2 + x7 <= 100)

@constraint(m, x3 + x8 <= 20)

@constraint(m, x1 + x4 + x6 + x9 <= 30)

@constraint(m, x16 <= 200)

@constraint(m, x17 <= 200)

@constraint(m, x11 - x33 - x52 == 0)

@constraint(m, x12 - x20 - x22 - x24 - x31 - x34 - x39 - x41 - x43 - x50 - x53 == 0)

@constraint(m, x13 - x21 - x23 - x25 - x32 - x35 - x40 - x42 - x44 - x51 - x54 == 0)

@constraint(m, x14 - x26 - x27 - x28 - x36 - x45 - x46 - x47 - x55 == 0)

@constraint(m, x15 - x29 - x30 - x37 - x38 - x48 - x49 - x56 - x57 == 0)

@constraint(m,  - 90*x12 + 91.8*x20 + 78.5*x22 + 65*x24 + 104*x31 + 93.7*x34 + 91.8*x39 + 78.5*x41 + 65*x43 + 104*x50
     + 93.7*x53 >= 0)

@constraint(m,  - 86*x13 + 91.8*x21 + 78.5*x23 + 65*x25 + 104*x32 + 93.7*x35 + 91.8*x40 + 78.5*x42 + 65*x44 + 104*x51
     + 93.7*x54 >= 0)

@constraint(m,  - 12.7*x12 + 199.2*x20 + 18.4*x22 + 6.54*x24 + 2.57*x31 + 6.9*x34 + 199.2*x39 + 18.4*x41 + 6.54*x43
     + 2.57*x50 + 6.9*x53 <= 0)

@constraint(m,  - 12.7*x13 + 199.2*x21 + 18.4*x23 + 6.54*x25 + 2.57*x32 + 6.9*x35 + 199.2*x40 + 18.4*x42 + 6.54*x44
     + 2.57*x51 + 6.9*x54 <= 0)

@constraint(m,  - 306*x14 + 272*x26 + 292*x27 + 295*x28 + 294.4*x36 + 272*x45 + 297.6*x46 + 303.3*x47 + 299.1*x55 <= 0)

@constraint(m,  - 0.5*x14 + 0.283*x26 + 0.526*x27 + 0.98*x28 + 0.353*x36 + 1.48*x45 + 2.83*x46 + 5.05*x47 + 1.31*x55
     <= 0)

@constraint(m,  - 352*x15 + 295*x29 + 343*x30 + 294.4*x37 + 303.3*x48 + 365*x49 + 299.1*x56 + 365*x57 <= 0)

@constraint(m,  - 3.4*x15 + 0.98*x29 + 4.7*x30 + 0.353*x37 + 5.05*x48 + 11*x49 + 1.31*x56 + 6*x57 <= 0)

@constraint(m,  - 1.5*x11 - 10.5*x12 - 9.1*x13 - 7.7*x14 - 6.65*x15 + x59 == 0)

@constraint(m,  - 7.5*x16 - 6.5*x17 - 6.75*x18 - 6.75*x19 + x60 == 0)

@constraint(m,  - 0.08*x1 - 0.1*x2 - 0.15*x3 - 0.8*x4 - 0.1*x5 - 0.08*x6 - 0.1*x7 - 0.15*x8 - 0.8*x9 - 0.1*x10 + x61
     == 0)
