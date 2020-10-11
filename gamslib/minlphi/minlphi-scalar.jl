#  NLP written by GAMS Convert at 10/11/20 12:26:41
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         80       28        0       52        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         65       65        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        207      171       36        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x2, start=396)
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
@variable(m, 326 <= x30, start=390)
@variable(m, 0 <= x31 <= 304, start=0)
@variable(m, 326 <= x32, start=360)
@variable(m, 0 <= x33 <= 304, start=0)
@variable(m, 0 <= x34 <= 1000, start=410)
@variable(m, 0 <= x35 <= 1000, start=0)
@variable(m, 0 <= x36 <= 1000, start=380)
@variable(m, 0 <= x37 <= 1000, start=0)
@variable(m, 0 <= x38, start=76)
@variable(m, 0 <= x39, start=1)
@variable(m, 0 <= x40, start=26)
@variable(m, 0 <= x41, start=1)
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
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(0.4*((-1.15398 + 0.003375*$(x30))*$(x2) + (-0.30630793 + 0.000893*$(x31))*
    $(x3) + (-1.57608132 + 0.004458*$(x32))*$(x4) + (-1.08593792 + 0.003176*$(x33))*$(x5) + 31.8928571428571*$(x14)/(
    $(x30) - $(x36)) + 31.8928571428571*$(x15)/(1 + $(x31) - $(x37)) + 31.8928571428571*$(x16)/($(x32) - $(x34)) + 
    31.8928571428571*$(x17)/(1 + $(x33) - $(x35)) + 31.8928571428571*$(x26)/$(x38) + 31.8928571428571*$(x27)/(1 + $(x39)
    ) + 31.8928571428571*$(x28)/$(x40) + 31.8928571428571*$(x29)/(1 + $(x41)) + 31.8928571428571*$(x18)/(421 - $(x34))
     + 31.8928571428571*$(x19)/(421 - $(x35)) + 31.8928571428571*$(x20)/(421 - $(x36)) + 31.8928571428571*$(x21)/(421 - 
    $(x37)) + 31.8928571428571*$(x22)/(373 - $(x34)) + 31.8928571428571*$(x23)/(373 - $(x35)) + 31.8928571428571*$(x24)/
    (373 - $(x36)) + 31.8928571428571*$(x25)/(373 - $(x37))) + 12.95216*$(x18) + 12.95216*$(x19) + 12.95216*$(x20) + 
    12.95216*$(x21) + 4.75228*$(x22) + 4.75228*$(x23) + 4.75228*$(x24) + 4.75228*$(x25) + 2.418*$(x26) + 2.418*$(x27) + 
    2.418*$(x28) + 2.418*$(x29) + 67.56864))

JuMP.add_NL_constraint(m, :((-0.666666666666667*sqrt((-305 + $(x30))*(-325 + $(x30)))) - 0.333333333333333*$(x30)
     + $(x38) - $(x42) + $(x46) == -105))

JuMP.add_NL_constraint(m, :((-0.666666666666667*sqrt((-305 + $(x31))*(-325 + $(x31)))) - 0.333333333333333*$(x31)
     + $(x39) - $(x43) + $(x47) == -105))

JuMP.add_NL_constraint(m, :((-0.666666666666667*sqrt((-305 + $(x32))*(-325 + $(x32)))) - 0.333333333333333*$(x32)
     + $(x40) - $(x44) + $(x48) == -105))

JuMP.add_NL_constraint(m, :((-0.666666666666667*sqrt((-305 + $(x33))*(-325 + $(x33)))) - 0.333333333333333*$(x33)
     + $(x41) - $(x45) + $(x49) == -105))

@constraint(m, x42 + x50 + x54 <= 0)

@constraint(m, x43 + x51 + x55 <= 1500)

@constraint(m, x44 + x52 + x56 <= 0)

@constraint(m, x45 + x53 + x57 <= 1500)

@constraint(m, x46 + x58 + x62 <= 0)

@constraint(m, x47 + x59 + x63 <= 1500)

@constraint(m, x48 + x60 + x64 <= 0)

@constraint(m, x49 + x61 + x65 <= 1500)

@constraint(m, x30 + x34 + x38 <= 1500)

@constraint(m, x31 + x35 + x39 <= 0)

@constraint(m, x32 + x36 + x40 <= 1500)

@constraint(m, x33 + x37 + x41 <= 0)

@constraint(m, 0.9*x3 - x5 == 0)

@constraint(m, 0.2*x2 - x4 == 0)

@constraint(m, x2 + x3 == 396)

@constraint(m, x2 <= 1500)

@constraint(m, x3 <= 0)

@constraint(m, x4 <= 1500)

@constraint(m, x5 <= 0)

@constraint(m, x10 - 0.0225*x30 - x58 + x62 == 24.7068)

@constraint(m, x11 - 0.013*x31 - x59 + x63 == 20.54087)

@constraint(m, x12 - 0.0043*x32 - x60 + x64 == 2.239778)

@constraint(m, x13 - 0.0156*x33 - x61 + x65 == 29.766048)

@constraint(m, x6 - x10 == 0)

@constraint(m, x7 - x11 == 0)

@constraint(m, x8 - x12 == 0)

@constraint(m, x9 - x13 == 0)

@constraint(m, x10 - x14 - x26 == 0)

@constraint(m, x11 - x15 - x27 == 0)

@constraint(m, x12 - x16 - x28 == 0)

@constraint(m, x13 - x17 - x29 == 0)

@constraint(m, x6 - x16 - x18 - x22 == 0)

@constraint(m, x7 - x17 - x19 - x23 == 0)

@constraint(m, x8 - x14 - x20 - x24 == 0)

@constraint(m, x9 - x15 - x21 - x25 == 0)

@constraint(m,  - x30 <= -341.92)

@constraint(m,  - x31 <= 1156.99)

@constraint(m,  - x32 <= -353.54)

@constraint(m,  - x33 <= 1158.08)

@constraint(m, x34 <= 411)

@constraint(m, x35 <= 411)

@constraint(m, x36 <= 411)

@constraint(m, x37 <= 411)

@constraint(m,  - 1.028*x30 + x34 - x50 + x54 == -341.95276)

@constraint(m,  - 1.05*x31 + x35 - x51 + x55 == -347.9205)

@constraint(m,  - 1.029*x32 + x36 - x52 + x56 == -355.03666)

@constraint(m,  - 1.005*x33 + x37 - x53 + x57 == -334.4486)

@constraint(m,  - x30 + x36 <= -10)

@constraint(m,  - x31 + x37 <= 1490)

@constraint(m,  - x32 + x34 <= 1490)

@constraint(m,  - x33 + x35 <= 1490)

@constraint(m, x34 <= 1863)

@constraint(m, x35 <= 1863)

@constraint(m, x36 <= 1863)

@constraint(m, x37 <= 1863)

@constraint(m, x14 <= 1500)

@constraint(m, x15 <= 0)

@constraint(m, x16 <= 0)

@constraint(m, x17 <= 0)

@constraint(m, x18 <= 1500)

@constraint(m, x19 <= 0)

@constraint(m, x20 <= 0)

@constraint(m, x21 <= 0)

@constraint(m, x22 <= 0)

@constraint(m, x23 <= 0)

@constraint(m, x24 <= 0)

@constraint(m, x25 <= 0)

@constraint(m, x26 <= 1500)

@constraint(m, x27 <= 0)

@constraint(m, x28 <= 1500)

@constraint(m, x29 <= 0)

@constraint(m, x6 + x10 <= 1500)

@constraint(m, x7 + x11 <= 0)

@constraint(m, x8 + x12 <= 1500)

@constraint(m, x9 + x13 <= 0)
