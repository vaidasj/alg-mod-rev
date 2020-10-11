#  MIP written by GAMS Convert at 10/11/20 12:16:19
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         56        1       40       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         46       31        0       15        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        181      181        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, x2, start=0)
@variable(m, x3, start=0)
@variable(m, x4, start=0)
@variable(m, x5, start=0)
@variable(m, x6, start=0)
@variable(m, x7, start=0)
@variable(m, x8, start=0)
@variable(m, x9, start=0)
@variable(m, x10, start=0)
@variable(m, x11, start=0)
@variable(m, x12, start=0)
@variable(m, x13, start=0)
@variable(m, x14, start=0)
@variable(m, x15, start=0)
@variable(m, 0 <= i16 <= 12, integer=true, start=0)
@variable(m, 0 <= i17 <= 12, integer=true, start=0)
@variable(m, 0 <= i18 <= 12, integer=true, start=0)
@variable(m, 0 <= i19 <= 12, integer=true, start=0)
@variable(m, 0 <= i20 <= 12, integer=true, start=0)
@variable(m, 0 <= i21 <= 10, integer=true, start=0)
@variable(m, 0 <= i22 <= 10, integer=true, start=0)
@variable(m, 0 <= i23 <= 10, integer=true, start=0)
@variable(m, 0 <= i24 <= 10, integer=true, start=0)
@variable(m, 0 <= i25 <= 10, integer=true, start=0)
@variable(m, 0 <= i26 <= 5, integer=true, start=0)
@variable(m, 0 <= i27 <= 5, integer=true, start=0)
@variable(m, 0 <= i28 <= 5, integer=true, start=0)
@variable(m, 0 <= i29 <= 5, integer=true, start=0)
@variable(m, 0 <= i30 <= 5, integer=true, start=0)
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

@objective(m, Min, 12000*x1 + 6000*x2 + 12000*x3 + 6000*x4 + 12000*x5 + 7800*x6 + 3900*x7 + 7800*x8 + 3900*x9 + 7800*x10
     + 18000*x11 + 9000*x12 + 18000*x13 + 9000*x14 + 18000*x15 - 4200*i16 - 2100*i17 - 4200*i18 - 2100*i19 - 4200*i20
     + 5850*i21 + 2925*i22 + 5850*i23 + 2925*i24 + 5850*i25 - 9000*i26 - 4500*i27 - 9000*i28 - 4500*i29 - 9000*i30
     + 2000*x31 + 2000*x32 + 2000*x33 + 2000*x34 + 2000*x35 + 1000*x36 + 1000*x37 + 1000*x38 + 1000*x39 + 1000*x40
     + 500*x41 + 500*x42 + 500*x43 + 500*x44 + 500*x45)

@constraint(m, x1 + x6 + x11 >= 15)

@constraint(m, x2 + x7 + x12 >= 30)

@constraint(m, x3 + x8 + x13 >= 25)

@constraint(m, x4 + x9 + x14 >= 40)

@constraint(m, x5 + x10 + x15 >= 27)

@constraint(m, 2*i16 + 1.75*i21 + 4*i26 >= 17.25)

@constraint(m, 2*i17 + 1.75*i22 + 4*i27 >= 34.5)

@constraint(m, 2*i18 + 1.75*i23 + 4*i28 >= 28.75)

@constraint(m, 2*i19 + 1.75*i24 + 4*i29 >= 46)

@constraint(m, 2*i20 + 1.75*i25 + 4*i30 >= 31.05)

@constraint(m,  - i16 + i20 + x31 >= 0)

@constraint(m, i16 - i17 + x32 >= 0)

@constraint(m, i17 - i18 + x33 >= 0)

@constraint(m, i18 - i19 + x34 >= 0)

@constraint(m, i19 - i20 + x35 >= 0)

@constraint(m,  - i21 + i25 + x36 >= 0)

@constraint(m, i21 - i22 + x37 >= 0)

@constraint(m, i22 - i23 + x38 >= 0)

@constraint(m, i23 - i24 + x39 >= 0)

@constraint(m, i24 - i25 + x40 >= 0)

@constraint(m,  - i26 + i30 + x41 >= 0)

@constraint(m, i26 - i27 + x42 >= 0)

@constraint(m, i27 - i28 + x43 >= 0)

@constraint(m, i28 - i29 + x44 >= 0)

@constraint(m, i29 - i30 + x45 >= 0)

@constraint(m, x1 - 0.85*i16 >= 0)

@constraint(m, x2 - 0.85*i17 >= 0)

@constraint(m, x3 - 0.85*i18 >= 0)

@constraint(m, x4 - 0.85*i19 >= 0)

@constraint(m, x5 - 0.85*i20 >= 0)

@constraint(m, x6 - 1.25*i21 >= 0)

@constraint(m, x7 - 1.25*i22 >= 0)

@constraint(m, x8 - 1.25*i23 >= 0)

@constraint(m, x9 - 1.25*i24 >= 0)

@constraint(m, x10 - 1.25*i25 >= 0)

@constraint(m, x11 - 1.5*i26 >= 0)

@constraint(m, x12 - 1.5*i27 >= 0)

@constraint(m, x13 - 1.5*i28 >= 0)

@constraint(m, x14 - 1.5*i29 >= 0)

@constraint(m, x15 - 1.5*i30 >= 0)

@constraint(m, x1 - 2*i16 <= 0)

@constraint(m, x2 - 2*i17 <= 0)

@constraint(m, x3 - 2*i18 <= 0)

@constraint(m, x4 - 2*i19 <= 0)

@constraint(m, x5 - 2*i20 <= 0)

@constraint(m, x6 - 1.75*i21 <= 0)

@constraint(m, x7 - 1.75*i22 <= 0)

@constraint(m, x8 - 1.75*i23 <= 0)

@constraint(m, x9 - 1.75*i24 <= 0)

@constraint(m, x10 - 1.75*i25 <= 0)

@constraint(m, x11 - 4*i26 <= 0)

@constraint(m, x12 - 4*i27 <= 0)

@constraint(m, x13 - 4*i28 <= 0)

@constraint(m, x14 - 4*i29 <= 0)

@constraint(m, x15 - 4*i30 <= 0)
