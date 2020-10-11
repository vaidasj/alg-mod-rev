#  MIP written by GAMS Convert at 10/11/20 12:24:03
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31        1        4       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         69       46        0       23        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        205      205        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= i1 <= 2, integer=true, start=0)
@variable(m, 0 <= i2 <= 3, integer=true, start=0)
@variable(m, 0 <= i3 <= 4, integer=true, start=0)
@variable(m, 0 <= i4 <= 3, integer=true, start=0)
@variable(m, 0 <= i5 <= 4, integer=true, start=0)
@variable(m, 0 <= i6 <= 3, integer=true, start=0)
@variable(m, 0 <= i7 <= 4, integer=true, start=0)
@variable(m, 0 <= i8 <= 4, integer=true, start=0)
@variable(m, 0 <= i9 <= 3, integer=true, start=0)
@variable(m, 0 <= i10 <= 4, integer=true, start=0)
@variable(m, 0 <= i11 <= 3, integer=true, start=0)
@variable(m, 0 <= i12 <= 4, integer=true, start=0)
@variable(m, 0 <= i13 <= 4, integer=true, start=0)
@variable(m, 0 <= i14 <= 3, integer=true, start=0)
@variable(m, 0 <= i15 <= 4, integer=true, start=0)
@variable(m, 0 <= i16 <= 4, integer=true, start=0)
@variable(m, 0 <= i17 <= 4, integer=true, start=0)
@variable(m, 0 <= i18 <= 3, integer=true, start=0)
@variable(m, 0 <= i19 <= 4, integer=true, start=0)
@variable(m, 0 <= i20 <= 4, integer=true, start=0)
@variable(m, 0 <= i21 <= 4, integer=true, start=0)
@variable(m, 0 <= i22 <= 4, integer=true, start=0)
@variable(m, 0 <= i23 <= 4, integer=true, start=0)
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
@variable(m, 0 <= x58, start=0)
@variable(m, 0 <= x59, start=0)
@variable(m, 0 <= x60, start=0)
@variable(m, 0 <= x61, start=0)
@variable(m, 0 <= x62, start=0)
@variable(m, 0 <= x63, start=0)
@variable(m, 0 <= x64, start=0)
@variable(m, 0 <= x65, start=0)
@variable(m, 0 <= x66, start=0)
@variable(m, 0 <= x67, start=0)
@variable(m, 0 <= x68, start=0)

@objective(m, Min, 4.7*i1 + 4.7*i2 + 4.7*i3 + 5.6*i4 + 5.6*i5 + 7*i6 + 7*i7 + 8.5*i8 + 6.15*i9 + 6.15*i10 + 7.4*i11
     + 7.4*i12 + 9.1*i13 + 7.65*i14 + 7.65*i15 + 7.65*i16 + 9*i17 + 8.2*i18 + 8.2*i19 + 9.6*i20 + 9.4*i21 + 9.65*i22
     + 10.2*i23 + 0.037*x24 + 0.037*x25 + 0.037*x26 + 0.046*x27 + 0.046*x28 + 0.06*x29 + 0.06*x30 + 0.075*x31
     + 0.0515*x32 + 0.0515*x33 + 0.0515*x34 + 0.0515*x35 + 0.064*x36 + 0.064*x37 + 0.064*x38 + 0.064*x39 + 0.081*x40
     + 0.081*x41 + 0.0665*x42 + 0.0665*x43 + 0.0665*x44 + 0.0665*x45 + 0.0665*x46 + 0.0665*x47 + 0.08*x48 + 0.08*x49
     + 0.072*x50 + 0.072*x51 + 0.072*x52 + 0.072*x53 + 0.072*x54 + 0.072*x55 + 0.086*x56 + 0.086*x57 + 0.086*x58
     + 0.084*x59 + 0.084*x60 + 0.084*x61 + 0.0865*x62 + 0.0865*x63 + 0.0865*x64 + 0.092*x65 + 0.092*x66 + 0.092*x67
     + 0.092*x68)

@constraint(m, x24 + x25 + x26 + x32 + x34 + x36 + x38 + x40 + x50 + x53 + x56 + x59 + x65 >= 475)

@constraint(m, x27 + x28 + x33 + x35 + x42 + x44 + x46 + x51 + x54 + x57 + x62 + x66 >= 659)

@constraint(m, x29 + x30 + x37 + x39 + x43 + x45 + x48 + x52 + x55 + x60 + x63 + x67 >= 672)

@constraint(m, x31 + x41 + x47 + x49 + x58 + x61 + x64 + x68 >= 1123)

@constraint(m,  - 100*i1 + x24 <= 0)

@constraint(m,  - 200*i2 + x25 <= 0)

@constraint(m,  - 600*i3 + x26 <= 0)

@constraint(m,  - 200*i4 + x27 <= 0)

@constraint(m,  - 600*i5 + x28 <= 0)

@constraint(m,  - 200*i6 + x29 <= 0)

@constraint(m,  - 600*i7 + x30 <= 0)

@constraint(m,  - 600*i8 + x31 <= 0)

@constraint(m,  - 200*i9 + x32 + x33 <= 0)

@constraint(m,  - 600*i10 + x34 + x35 <= 0)

@constraint(m,  - 200*i11 + x36 + x37 <= 0)

@constraint(m,  - 600*i12 + x38 + x39 <= 0)

@constraint(m,  - 600*i13 + x40 + x41 <= 0)

@constraint(m,  - 200*i14 + x42 + x43 <= 0)

@constraint(m,  - 600*i15 + x44 + x45 <= 0)

@constraint(m,  - 600*i16 + x46 + x47 <= 0)

@constraint(m,  - 600*i17 + x48 + x49 <= 0)

@constraint(m,  - 200*i18 + x50 + x51 + x52 <= 0)

@constraint(m,  - 600*i19 + x53 + x54 + x55 <= 0)

@constraint(m,  - 600*i20 + x56 + x57 + x58 <= 0)

@constraint(m,  - 600*i21 + x59 + x60 + x61 <= 0)

@constraint(m,  - 600*i22 + x62 + x63 + x64 <= 0)

@constraint(m,  - 600*i23 + x65 + x66 + x67 + x68 <= 0)

@constraint(m, i1 <= 2)

@constraint(m, i2 + i4 + i6 + i9 + i11 + i14 + i18 <= 3)

@constraint(m, i3 + i5 + i7 + i8 + i10 + i12 + i13 + i15 + i16 + i17 + i19 + i20 + i21 + i22 + i23 <= 4)
