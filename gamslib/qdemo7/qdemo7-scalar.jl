#  QCP written by GAMS Convert at 10/11/20 12:52:56
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         47       19        2       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         60       60        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        245      239        6        0
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
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, 0 <= x13 <= 25000, start=0)
@variable(m, 0 <= x14 <= 25000, start=0)
@variable(m, 0 <= x15 <= 25000, start=0)
@variable(m, 0 <= x16 <= 25000, start=0)
@variable(m, 0 <= x17 <= 25000, start=0)
@variable(m, 0 <= x18 <= 25000, start=0)
@variable(m, 0 <= x19 <= 25000, start=0)
@variable(m, 0 <= x20 <= 25000, start=0)
@variable(m, 0 <= x21 <= 25000, start=0)
@variable(m, 0 <= x22 <= 25000, start=0)
@variable(m, 0 <= x23 <= 25000, start=0)
@variable(m, 0 <= x24 <= 25000, start=0)
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
@variable(m, 0 <= x58, start=0)
@variable(m, 0 <= x59, start=0)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :(225*$(x48) - 0.0231481481481481*$(x48)^2 + 700*$(x49) - 0.277777777777778*
    $(x49)^2 + 250*$(x50) - 0.0892857142857143*$(x50)^2 + 700*$(x51) - 0.0833333333333333*$(x51)^2 + 210*$(x52) - 
    0.0184210526315789*$(x52)^2 + 220*$(x53) - 0.1*$(x53)^2 - $(x12) + 40*$(x54) + 300*$(x55) + 60*$(x56) - 140*$(x57)
     - 270*$(x58) - 85*$(x59)))

@constraint(m, x1 + x2 + x3 + x4 <= 4000)

@constraint(m, x1 + x2 + x3 + x4 <= 4000)

@constraint(m, x1 + 0.5*x2 + x3 + x4 + 0.5*x5 <= 4000)

@constraint(m, x1 + x3 + x4 + x5 <= 4000)

@constraint(m, x1 + 0.25*x4 + x5 + 0.25*x6 <= 4000)

@constraint(m, x5 + x6 <= 4000)

@constraint(m, x5 + x6 + 0.75*x7 <= 4000)

@constraint(m, x5 + x6 + x7 <= 4000)

@constraint(m, x5 + x6 + x7 <= 4000)

@constraint(m, x5 + 0.5*x6 + x7 <= 4000)

@constraint(m, 0.5*x1 + 0.25*x2 + 0.25*x3 + 0.5*x4 + 0.75*x5 + 0.75*x7 <= 4000)

@constraint(m, x1 + x2 + x3 + x4 <= 4000)

@constraint(m, 1.72*x1 + 4.5*x2 + 0.75*x3 + 5.16*x4 - x13 - x25 + 2*x37 + 2*x38 <= 0)

@constraint(m, 0.5*x1 + x2 + 0.75*x3 + 5*x4 - x14 - x26 + 2*x37 + 2*x38 <= 0)

@constraint(m, x1 + 8*x2 + 0.75*x3 + 5*x4 + 5*x5 - x15 - x27 + 2*x37 + 2*x38 <= 0)

@constraint(m, x1 + 16*x3 + 19.58*x4 + 5*x5 - x16 - x28 + 2*x37 + 2*x38 <= 0)

@constraint(m, 17.16*x1 + 2.42*x4 + 9*x5 + 4.3*x6 - x17 - x29 + 2*x37 + 2*x38 <= 0)

@constraint(m, 2.34*x1 + 2*x5 + 5.04*x6 - x18 - x30 + 2*x37 + 2*x38 <= 0)

@constraint(m, 1.5*x5 + 7.16*x6 + 17*x7 - x19 - x31 + 2*x37 + 2*x38 <= 0)

@constraint(m, 2*x5 + 7.97*x6 + 15*x7 - x20 - x32 + 2*x37 + 2*x38 <= 0)

@constraint(m, x5 + 4.41*x6 + 12*x7 - x21 - x33 + 2*x37 + 2*x38 <= 0)

@constraint(m, 26*x5 + 1.12*x6 + 7*x7 - x22 - x34 + 2*x37 + 2*x38 <= 0)

@constraint(m, 2.43*x1 + 2.5*x2 + 7.5*x3 + 11.16*x4 + 12*x5 + 6*x7 - x23 - x35 + 2*x37 + 2*x38 <= 0)

@constraint(m, 1.35*x1 + 7.5*x2 + 0.75*x3 + 4.68*x4 - x24 - x36 + 2*x37 + 2*x38 <= 0)

@constraint(m, x5 + x6 + x7 - 2*x37 - 2*x38 - x46 <= 0)

@constraint(m, x1 + x2 + x3 + x4 - 2*x37 - 2*x38 - x47 <= 0)

@constraint(m, x11 - 3*x13 - 3*x14 - 3*x15 - 3*x16 - 3*x17 - 3*x18 - 3*x19 - 3*x20 - 3*x21 - 3*x22 - 3*x23 - 3*x24 == 0)

@constraint(m, x10 - 4*x25 - 4*x26 - 4*x27 - 4*x28 - 4*x29 - 4*x30 - 4*x31 - 4*x32 - 4*x33 - 4*x34 - 4*x35 - 4*x36 == 0)

@constraint(m,  - x8 - x9 - x10 - x11 + x12 == 0)

@constraint(m,  - x39 + x48 - x57 == 0)

@constraint(m,  - x41 + x49 - x58 == 0)

@constraint(m,  - x42 + x50 + x54 == 0)

@constraint(m,  - x43 + x51 + x55 == 0)

@constraint(m,  - x44 + x52 - x59 == 0)

@constraint(m,  - x45 + x53 + x56 == 0)

@constraint(m,  - 1.5*x1 + x39 == 0)

@constraint(m,  - 6*x2 + x40 == 0)

@constraint(m,  - x3 + x41 == 0)

@constraint(m,  - 3*x4 + x42 == 0)

@constraint(m,  - 1.5*x5 + x43 == 0)

@constraint(m,  - 2*x6 + x44 == 0)

@constraint(m,  - 3*x7 + x45 == 0)

@constraint(m,  - 10*x1 - 5*x3 - 50*x4 - 80*x5 - 5*x6 - 50*x7 + x8 == 0)

@constraint(m, x9 - 40*x46 - 40*x47 == 0)

@constraint(m, 6*x2 - 1.3*x37 - 2*x38 >= 0)

@constraint(m, 1.75*x1 - 1.6*x37 - 0.8*x38 >= 0)
