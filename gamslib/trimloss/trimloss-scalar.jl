#  MINLP written by GAMS Convert at 10/11/20 12:41:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         54        1       13       40        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         49        1        6       42        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        303      231       72        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= i1 <= 5, integer=true, start=0)
@variable(m, 0 <= i2 <= 5, integer=true, start=0)
@variable(m, 0 <= i3 <= 5, integer=true, start=0)
@variable(m, 0 <= i4 <= 5, integer=true, start=0)
@variable(m, 0 <= i5 <= 5, integer=true, start=0)
@variable(m, 0 <= i6 <= 5, integer=true, start=0)
@variable(m, 0 <= i7 <= 5, integer=true, start=0)
@variable(m, 0 <= i8 <= 5, integer=true, start=0)
@variable(m, 0 <= i9 <= 5, integer=true, start=0)
@variable(m, 0 <= i10 <= 5, integer=true, start=0)
@variable(m, 0 <= i11 <= 5, integer=true, start=0)
@variable(m, 0 <= i12 <= 5, integer=true, start=0)
@variable(m, 0 <= i13 <= 5, integer=true, start=0)
@variable(m, 0 <= i14 <= 5, integer=true, start=0)
@variable(m, 0 <= i15 <= 5, integer=true, start=0)
@variable(m, 0 <= i16 <= 5, integer=true, start=0)
@variable(m, 0 <= i17 <= 5, integer=true, start=0)
@variable(m, 0 <= i18 <= 5, integer=true, start=0)
@variable(m, 0 <= i19 <= 5, integer=true, start=0)
@variable(m, 0 <= i20 <= 5, integer=true, start=0)
@variable(m, 0 <= i21 <= 5, integer=true, start=0)
@variable(m, 0 <= i22 <= 5, integer=true, start=0)
@variable(m, 0 <= i23 <= 5, integer=true, start=0)
@variable(m, 0 <= i24 <= 5, integer=true, start=0)
@variable(m, 0 <= i25 <= 5, integer=true, start=0)
@variable(m, 0 <= i26 <= 5, integer=true, start=0)
@variable(m, 0 <= i27 <= 5, integer=true, start=0)
@variable(m, 0 <= i28 <= 5, integer=true, start=0)
@variable(m, 0 <= i29 <= 5, integer=true, start=0)
@variable(m, 0 <= i30 <= 5, integer=true, start=0)
@variable(m, 0 <= i31 <= 5, integer=true, start=0)
@variable(m, 0 <= i32 <= 5, integer=true, start=0)
@variable(m, 0 <= i33 <= 5, integer=true, start=0)
@variable(m, 0 <= i34 <= 5, integer=true, start=0)
@variable(m, 0 <= i35 <= 5, integer=true, start=0)
@variable(m, 0 <= i36 <= 5, integer=true, start=0)
@variable(m, 0 <= b37 <= 1, binary=true, start=0)
@variable(m, 0 <= b38 <= 1, binary=true, start=0)
@variable(m, 0 <= b39 <= 1, binary=true, start=0)
@variable(m, 0 <= b40 <= 1, binary=true, start=0)
@variable(m, 0 <= b41 <= 1, binary=true, start=0)
@variable(m, 0 <= b42 <= 1, binary=true, start=0)
@variable(m, 0 <= i43 <= 15, integer=true, start=0)
@variable(m, 0 <= i44 <= 12, integer=true, start=0)
@variable(m, 0 <= i45 <= 8, integer=true, start=0)
@variable(m, 0 <= i46 <= 7, integer=true, start=0)
@variable(m, 0 <= i47 <= 4, integer=true, start=0)
@variable(m, 0 <= i48 <= 2, integer=true, start=0)

@objective(m, Min, 0.1*b37 + 0.2*b38 + 0.3*b39 + 0.4*b40 + 0.5*b41 + 0.6*b42 + i43 + i44 + i45 + i46 + i47 + i48)

JuMP.add_NL_constraint(m, :($(i43)*$(i1) + $(i44)*$(i2) + $(i45)*$(i3) + $(i46)*$(i4) + $(i47)*$(i5) + $(i48)*$(i6)
     >= 8))

JuMP.add_NL_constraint(m, :($(i43)*$(i7) + $(i44)*$(i8) + $(i45)*$(i9) + $(i46)*$(i10) + $(i47)*$(i11) + $(i48)*$(i12)
     >= 16))

JuMP.add_NL_constraint(m, :($(i43)*$(i13) + $(i44)*$(i14) + $(i45)*$(i15) + $(i46)*$(i16) + $(i47)*$(i17) + $(i48)*
    $(i18) >= 12))

JuMP.add_NL_constraint(m, :($(i43)*$(i19) + $(i44)*$(i20) + $(i45)*$(i21) + $(i46)*$(i22) + $(i47)*$(i23) + $(i48)*
    $(i24) >= 7))

JuMP.add_NL_constraint(m, :($(i43)*$(i25) + $(i44)*$(i26) + $(i45)*$(i27) + $(i46)*$(i28) + $(i47)*$(i29) + $(i48)*
    $(i30) >= 14))

JuMP.add_NL_constraint(m, :($(i43)*$(i31) + $(i44)*$(i32) + $(i45)*$(i33) + $(i46)*$(i34) + $(i47)*$(i35) + $(i48)*
    $(i36) >= 16))

@constraint(m, 330*i1 + 360*i7 + 380*i13 + 430*i19 + 490*i25 + 530*i31 - 2100*b37 >= 0)

@constraint(m, 330*i2 + 360*i8 + 380*i14 + 430*i20 + 490*i26 + 530*i32 - 2100*b38 >= 0)

@constraint(m, 330*i3 + 360*i9 + 380*i15 + 430*i21 + 490*i27 + 530*i33 - 2100*b39 >= 0)

@constraint(m, 330*i4 + 360*i10 + 380*i16 + 430*i22 + 490*i28 + 530*i34 - 2100*b40 >= 0)

@constraint(m, 330*i5 + 360*i11 + 380*i17 + 430*i23 + 490*i29 + 530*i35 - 2100*b41 >= 0)

@constraint(m, 330*i6 + 360*i12 + 380*i18 + 430*i24 + 490*i30 + 530*i36 - 2100*b42 >= 0)

@constraint(m, 330*i1 + 360*i7 + 380*i13 + 430*i19 + 490*i25 + 530*i31 - 2200*b37 <= 0)

@constraint(m, 330*i2 + 360*i8 + 380*i14 + 430*i20 + 490*i26 + 530*i32 - 2200*b38 <= 0)

@constraint(m, 330*i3 + 360*i9 + 380*i15 + 430*i21 + 490*i27 + 530*i33 - 2200*b39 <= 0)

@constraint(m, 330*i4 + 360*i10 + 380*i16 + 430*i22 + 490*i28 + 530*i34 - 2200*b40 <= 0)

@constraint(m, 330*i5 + 360*i11 + 380*i17 + 430*i23 + 490*i29 + 530*i35 - 2200*b41 <= 0)

@constraint(m, 330*i6 + 360*i12 + 380*i18 + 430*i24 + 490*i30 + 530*i36 - 2200*b42 <= 0)

@constraint(m,  - i1 - i7 - i13 - i19 - i25 - i31 + b37 <= 0)

@constraint(m,  - i2 - i8 - i14 - i20 - i26 - i32 + b38 <= 0)

@constraint(m,  - i3 - i9 - i15 - i21 - i27 - i33 + b39 <= 0)

@constraint(m,  - i4 - i10 - i16 - i22 - i28 - i34 + b40 <= 0)

@constraint(m,  - i5 - i11 - i17 - i23 - i29 - i35 + b41 <= 0)

@constraint(m,  - i6 - i12 - i18 - i24 - i30 - i36 + b42 <= 0)

@constraint(m, i1 + i7 + i13 + i19 + i25 + i31 - 5*b37 <= 0)

@constraint(m, i2 + i8 + i14 + i20 + i26 + i32 - 5*b38 <= 0)

@constraint(m, i3 + i9 + i15 + i21 + i27 + i33 - 5*b39 <= 0)

@constraint(m, i4 + i10 + i16 + i22 + i28 + i34 - 5*b40 <= 0)

@constraint(m, i5 + i11 + i17 + i23 + i29 + i35 - 5*b41 <= 0)

@constraint(m, i6 + i12 + i18 + i24 + i30 + i36 - 5*b42 <= 0)

@constraint(m, b37 - i43 <= 0)

@constraint(m, b38 - i44 <= 0)

@constraint(m, b39 - i45 <= 0)

@constraint(m, b40 - i46 <= 0)

@constraint(m, b41 - i47 <= 0)

@constraint(m, b42 - i48 <= 0)

@constraint(m,  - 15*b37 + i43 <= 0)

@constraint(m,  - 12*b38 + i44 <= 0)

@constraint(m,  - 8*b39 + i45 <= 0)

@constraint(m,  - 7*b40 + i46 <= 0)

@constraint(m,  - 4*b41 + i47 <= 0)

@constraint(m,  - 2*b42 + i48 <= 0)

@constraint(m, i43 + i44 + i45 + i46 + i47 + i48 >= 16)

@constraint(m,  - b37 + b38 <= 0)

@constraint(m,  - b38 + b39 <= 0)

@constraint(m,  - b39 + b40 <= 0)

@constraint(m,  - b40 + b41 <= 0)

@constraint(m,  - b41 + b42 <= 0)

@constraint(m,  - i43 + i44 <= 0)

@constraint(m,  - i44 + i45 <= 0)

@constraint(m,  - i45 + i46 <= 0)

@constraint(m,  - i46 + i47 <= 0)

@constraint(m,  - i47 + i48 <= 0)
