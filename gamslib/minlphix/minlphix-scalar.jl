#  MINLP written by GAMS Convert at 10/11/20 12:44:05
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        101       31        8       62        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         85       65       20        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        337      297       40        0
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
@variable(m, 0 <= x23, start=0)
@variable(m, 0 <= x24, start=0)
@variable(m, 0 <= x25, start=0)
@variable(m, 0 <= x26, start=0)
@variable(m, 0 <= x27, start=0)
@variable(m, 0 <= x28, start=0)
@variable(m, 0 <= x29, start=0)
@variable(m, 326 <= x30, start=326)
@variable(m, 0 <= x31 <= 304, start=0)
@variable(m, 326 <= x32, start=326)
@variable(m, 0 <= x33 <= 304, start=0)
@variable(m, 0 <= x34 <= 1000, start=0)
@variable(m, 0 <= x35 <= 1000, start=0)
@variable(m, 0 <= x36 <= 1000, start=0)
@variable(m, 0 <= x37 <= 1000, start=0)
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
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= b66 <= 1, binary=true, start=0)
@variable(m, 0 <= b67 <= 1, binary=true, start=0)
@variable(m, 0 <= b68 <= 1, binary=true, start=0)
@variable(m, 0 <= b69 <= 1, binary=true, start=0)
@variable(m, 0 <= b70 <= 1, binary=true, start=0)
@variable(m, 0 <= b71 <= 1, binary=true, start=0)
@variable(m, 0 <= b72 <= 1, binary=true, start=0)
@variable(m, 0 <= b73 <= 1, binary=true, start=0)
@variable(m, 0 <= b74 <= 1, binary=true, start=0)
@variable(m, 0 <= b75 <= 1, binary=true, start=0)
@variable(m, 0 <= b76 <= 1, binary=true, start=0)
@variable(m, 0 <= b77 <= 1, binary=true, start=0)
@variable(m, 0 <= b78 <= 1, binary=true, start=0)
@variable(m, 0 <= b79 <= 1, binary=true, start=0)
@variable(m, 0 <= b80 <= 1, binary=true, start=0)
@variable(m, 0 <= b81 <= 1, binary=true, start=0)
@variable(m, 0 <= b82 <= 1, binary=true, start=0)
@variable(m, 0 <= b83 <= 1, binary=true, start=0)
@variable(m, 0 <= b84 <= 1, binary=true, start=0)
@variable(m, 0 <= b85 <= 1, binary=true, start=0)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(0.4*((-1.15398 + 0.003375*$(x30))*$(x2) + (-0.30630793 + 0.000893*$(x31))*
    $(x3) + (-1.57608132 + 0.004458*$(x32))*$(x4) + (-1.08593792 + 0.003176*$(x33))*$(x5) + 31.8928571428571*$(x14)/(1
     + $(x30) - $(x36) - $(b82)) + 31.8928571428571*$(x15)/(1 + $(x31) - $(x37) - $(b83)) + 31.8928571428571*$(x16)/(1
     + $(x32) - $(x34) - $(b84)) + 31.8928571428571*$(x17)/(1 + $(x33) - $(x35) - $(b85)) + 151.125*$(b82) + 180.003*
    $(b83) + 4.2286*$(b84) + 213.42*$(b85) + 31.8928571428571*$(x26)/(1 + $(x38) - $(b82)) + 31.8928571428571*$(x27)/(1
     + $(x39) - $(b83)) + 31.8928571428571*$(x28)/(1 + $(x40) - $(b84)) + 31.8928571428571*$(x29)/(1 + $(x41) - $(b85))
     + 31.8928571428571*$(x18)/(421 - $(x34)) + 31.8928571428571*$(x19)/(421 - $(x35)) + 31.8928571428571*$(x20)/(421 - 
    $(x36)) + 31.8928571428571*$(x21)/(421 - $(x37)) + 31.8928571428571*$(x22)/(373 - $(x34)) + 31.8928571428571*$(x23)/
    (373 - $(x35)) + 31.8928571428571*$(x24)/(373 - $(x36)) + 31.8928571428571*$(x25)/(373 - $(x37))) + 12.95216*$(x18)
     + 12.95216*$(x19) + 12.95216*$(x20) + 12.95216*$(x21) + 4.75228*$(x22) + 4.75228*$(x23) + 4.75228*$(x24) + 4.75228*
    $(x25) + 2.418*$(x26) + 2.418*$(x27) + 2.418*$(x28) + 2.418*$(x29) + 1.3568*$(b66) + 1.3568*$(b67) + 1.3568*$(b68)
     + 1.3568*$(b69) + 1.3568*$(b70) + 1.3568*$(b71) + 1.3568*$(b72) + 1.3568*$(b73) + 1.3568*$(b74) + 1.3568*$(b75)
     + 1.3568*$(b76) + 1.3568*$(b77) + 1.3568*$(b78) + 1.3568*$(b79) + 1.3568*$(b80) + 1.3568*$(b81)))

@constraint(m, x30 - x36 - b82 >= 0)

@constraint(m, x31 - x37 - b83 >= 0)

@constraint(m, x32 - x34 - b84 >= 0)

@constraint(m, x33 - x35 - b85 >= 0)

@constraint(m, x38 - 2*b82 >= 0)

@constraint(m, x39 - 2*b83 >= 0)

@constraint(m, x40 - 2*b84 >= 0)

@constraint(m, x41 - 2*b85 >= 0)

JuMP.add_NL_constraint(m, :(-(0.666666666666667*sqrt((-305 + $(x30))*(-325 + $(x30))) + 0.333333333333333*$(x30))
     + $(x38) - $(x42) + $(x46) == -105))

JuMP.add_NL_constraint(m, :(-(0.666666666666667*sqrt((-305 + $(x31))*(-325 + $(x31))) + 0.333333333333333*$(x31))
     + $(x39) - $(x43) + $(x47) == -105))

JuMP.add_NL_constraint(m, :(-(0.666666666666667*sqrt((-305 + $(x32))*(-325 + $(x32))) + 0.333333333333333*$(x32))
     + $(x40) - $(x44) + $(x48) == -105))

JuMP.add_NL_constraint(m, :(-(0.666666666666667*sqrt((-305 + $(x33))*(-325 + $(x33))) + 0.333333333333333*$(x33))
     + $(x41) - $(x45) + $(x49) == -105))

@constraint(m, x30 + x34 + x38 - 1500*b82 <= 0)

@constraint(m, x31 + x35 + x39 - 1500*b83 <= 0)

@constraint(m, x32 + x36 + x40 - 1500*b84 <= 0)

@constraint(m, x33 + x37 + x41 - 1500*b85 <= 0)

@constraint(m, x42 + x50 + x54 + 1500*b82 <= 1500)

@constraint(m, x43 + x51 + x55 + 1500*b83 <= 1500)

@constraint(m, x44 + x52 + x56 + 1500*b84 <= 1500)

@constraint(m, x45 + x53 + x57 + 1500*b85 <= 1500)

@constraint(m, x46 + x58 + x62 + 1500*b82 <= 1500)

@constraint(m, x47 + x59 + x63 + 1500*b83 <= 1500)

@constraint(m, x48 + x60 + x64 + 1500*b84 <= 1500)

@constraint(m, x49 + x61 + x65 + 1500*b85 <= 1500)

@constraint(m, 0.9*x3 - x5 == 0)

@constraint(m, 0.2*x2 - x4 == 0)

@constraint(m, x2 + x3 == 396)

@constraint(m, x2 - 1500*b82 <= 0)

@constraint(m, x3 - 1500*b83 <= 0)

@constraint(m, x4 - 1500*b84 <= 0)

@constraint(m, x5 - 1500*b85 <= 0)

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

@constraint(m, x34 <= 411)

@constraint(m, x35 <= 411)

@constraint(m, x36 <= 411)

@constraint(m, x37 <= 411)

@constraint(m,  - x30 + 1500*b82 <= 1158.08)

@constraint(m,  - x31 + 1500*b83 <= 1156.99)

@constraint(m,  - x32 + 1500*b84 <= 1146.46)

@constraint(m,  - x33 + 1500*b85 <= 1158.08)

@constraint(m,  - 1.028*x30 + x34 - x50 + x54 == -341.95276)

@constraint(m,  - 1.05*x31 + x35 - x51 + x55 == -347.9205)

@constraint(m,  - 1.029*x32 + x36 - x52 + x56 == -355.03666)

@constraint(m,  - 1.005*x33 + x37 - x53 + x57 == -334.4486)

@constraint(m,  - x30 + x36 + 1500*b66 <= 1490)

@constraint(m,  - x31 + x37 + 1500*b67 <= 1490)

@constraint(m,  - x32 + x34 + 1500*b68 <= 1490)

@constraint(m,  - x33 + x35 + 1500*b69 <= 1490)

@constraint(m, x34 + 1500*b74 <= 1863)

@constraint(m, x35 + 1500*b75 <= 1863)

@constraint(m, x36 + 1500*b76 <= 1863)

@constraint(m, x37 + 1500*b77 <= 1863)

@constraint(m, x14 - 1500*b66 <= 0)

@constraint(m, x15 - 1500*b67 <= 0)

@constraint(m, x16 - 1500*b68 <= 0)

@constraint(m, x17 - 1500*b69 <= 0)

@constraint(m, x18 - 1500*b70 <= 0)

@constraint(m, x19 - 1500*b71 <= 0)

@constraint(m, x20 - 1500*b72 <= 0)

@constraint(m, x21 - 1500*b73 <= 0)

@constraint(m, x22 - 1500*b74 <= 0)

@constraint(m, x23 - 1500*b75 <= 0)

@constraint(m, x24 - 1500*b76 <= 0)

@constraint(m, x25 - 1500*b77 <= 0)

@constraint(m, x26 - 1500*b78 <= 0)

@constraint(m, x27 - 1500*b79 <= 0)

@constraint(m, x28 - 1500*b80 <= 0)

@constraint(m, x29 - 1500*b81 <= 0)

@constraint(m, x6 + x10 - 1500*b82 <= 0)

@constraint(m, x7 + x11 - 1500*b83 <= 0)

@constraint(m, x8 + x12 - 1500*b84 <= 0)

@constraint(m, x9 + x13 - 1500*b85 <= 0)

@constraint(m, b83 - b85 == 0)

@constraint(m, b82 - b84 == 0)

@constraint(m, b82 + b83 == 1)

@constraint(m, b70 + b74 <= 1)

@constraint(m, b71 + b75 <= 1)

@constraint(m, b72 + b76 <= 1)

@constraint(m, b73 + b77 <= 1)

@constraint(m, b66 + b68 <= 1)

@constraint(m, b67 + b69 <= 1)

@constraint(m, b66 + b68 + b70 + b74 + b78 - 20*b82 <= 0)

@constraint(m, b67 + b69 + b71 + b75 + b79 - 20*b83 <= 0)

@constraint(m, b66 + b68 + b72 + b76 + b80 - 20*b84 <= 0)

@constraint(m, b67 + b69 + b73 + b77 + b81 - 20*b85 <= 0)
