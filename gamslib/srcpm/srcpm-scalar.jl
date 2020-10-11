#  NLP written by GAMS Convert at 10/11/20 12:20:05
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         28        2       14       12        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         40       40        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        163      158        5        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=3.1)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=13.6)
@variable(m, 0 <= x4, start=0)
@variable(m, 0 <= x5, start=1.1)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x7, start=1)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=16.4244058299284)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=8.9)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=4.4)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=7.1)
@variable(m, 0 <= x16, start=0.8)
@variable(m, 0 <= x17, start=5.56103683518173)
@variable(m, 0 <= x18, start=0.312071787775986)
@variable(m, 0 <= x19, start=1.73896316481827)
@variable(m, 0 <= x20, start=2.5)
@variable(m, 0 <= x21, start=2.7)
@variable(m, 0 <= x22, start=0)
@variable(m, 0 <= x23 <= 13.6, start=13.6)
@variable(m, 0 <= x24 <= 1.1, start=1.1)
@variable(m, 0 <= x25 <= 1, start=1)
@variable(m, 0 <= x26 <= 16.2, start=15.7244058299284)
@variable(m, 0 <= x27 <= 8.9, start=8.9)
@variable(m, 0 <= x28 <= 4.4, start=4.4)
@variable(m, 0 <= x29 <= 3.1, start=3.1)
@variable(m, 0 <= x30 <= 1.7, start=0.928008053710258)
@variable(m, 0 <= x31 <= 1.9, start=0.268195340806017)
@variable(m, 0 <= x32, start=2.78989137704229)
@variable(m, 0 <= x33, start=6.47831105055452)
@variable(m, 2 <= x34, start=12.8)
@variable(m, 2 <= x35, start=13.8)
@variable(m, 2 <= x36, start=8.3)
@variable(m, 2 <= x37, start=4.2)
@variable(m, 2 <= x38, start=8.6)
@variable(m, x39, start=1560.6691675193)

JuMP.set_NL_objective(m, MOI.MAX_SENSE, :((-3865470.5664*$(x34)^(-4)) - 5130022.82472*$(x35)^(-4) - 423446.869122501*
    $(x36)^(-4) - 1808.40439881057*$(x37)^(-2.33333333333333) - 17313.2956782741*$(x38)^(-2.33333333333333) - $(x39)))

@constraint(m,  - x3 - x4 + x23 >= 0)

@constraint(m,  - x5 - x6 + x24 >= 0)

@constraint(m,  - x7 - x8 + x25 >= 0)

@constraint(m,  - x9 - x10 + x26 >= -0.7)

@constraint(m,  - x11 - x12 + x27 >= 0)

@constraint(m,  - x13 - x14 + x28 >= 0)

@constraint(m,  - x1 - x2 + x29 >= 0)

@constraint(m, 0.35*x3 + 0.34*x4 + 0.5*x5 + 0.49*x6 + 0.68*x7 + 0.67*x8 - x17 - x18 + 0.99*x21 + 0.99*x22 - x32 >= 0)

@constraint(m, 0.38*x9 + 0.38*x10 + 0.48*x11 + 0.47*x12 + 0.66*x13 + 0.65*x14 - x19 - x20 - x21 - x22 - x33 >= 0)

@constraint(m, 0.2*x1 + 0.2*x2 + 0.96*x15 + 0.96*x16 + 0.67*x17 + 0.36*x18 + 0.61*x19 + 0.25*x20 - x30 - x34 >= 0)

@constraint(m, 0.28*x3 + 0.28*x4 + 0.25*x5 + 0.25*x6 + 0.2*x7 + 0.2*x8 + 0.26*x9 + 0.26*x10 + 0.23*x11 + 0.23*x12
     + 0.18*x13 + 0.18*x14 + 0.07*x17 + 0.18*x18 + 0.02*x19 + 0.1*x20 + x30 + 0.93*x31 - x35 >= -0.5)

@constraint(m, 0.8*x1 + 0.8*x2 + 0.35*x3 + 0.35*x4 + 0.23*x5 + 0.23*x6 + 0.1*x7 + 0.1*x8 + 0.33*x9 + 0.33*x10 + 0.27*x11
     + 0.27*x12 + 0.14*x13 + 0.14*x14 - x15 - x16 + 0.04*x17 + 0.03*x18 + 0.06*x19 + 0.04*x20 - x31 - x36 >= 0)

@constraint(m, 0.23*x17 + 0.42*x18 + x32 - x37 >= 0)

@constraint(m, 0.3*x19 + 0.6*x20 + x33 - x38 >= -0.1)

@constraint(m, x1 <= 3.4)

@constraint(m, x2 <= 0)

@constraint(m, x21 <= 2.7)

@constraint(m, x22 <= 0.3)

@constraint(m, x3 + x5 + x7 + x9 + x11 + x13 <= 50.5)

@constraint(m, x4 + x6 + x8 + x10 + x12 + x14 <= 7.5)

@constraint(m, x15 <= 7.1)

@constraint(m, x16 <= 0.8)

@constraint(m, x17 + x19 <= 7.3)

@constraint(m, x18 + x20 <= 2.9)

@constraint(m,  - 0.83*x17 + x19 <= 3.9)

@constraint(m, x20 <= 2.5)

@constraint(m,  - 0.45*x3 - 0.5*x4 - 0.45*x5 - 0.5*x6 - 0.45*x7 - 0.5*x8 - 0.5*x9 - 0.55*x10 - 0.5*x11 - 0.55*x12
     - 0.5*x13 - 0.55*x14 - 0.41*x15 - 0.5*x16 - 0.27*x17 - 0.45*x18 - 0.32*x19 - 0.28*x20 - 0.9*x21 - x22 - 32*x23
     - 32*x24 - 32*x25 - 32*x26 - 32*x27 - 32*x28 - 32*x29 + 0.3*x30 + x39 == 0)
