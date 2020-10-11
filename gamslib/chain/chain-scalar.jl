#  NLP written by GAMS Convert at 10/11/20 12:44:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         52       52        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        103      103        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        354      201      153        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= x1 <= 1, start=1)
@variable(m, x2, start=0.9616)
@variable(m, x3, start=0.9264)
@variable(m, x4, start=0.8944)
@variable(m, x5, start=0.8656)
@variable(m, x6, start=0.84)
@variable(m, x7, start=0.8176)
@variable(m, x8, start=0.7984)
@variable(m, x9, start=0.7824)
@variable(m, x10, start=0.7696)
@variable(m, x11, start=0.76)
@variable(m, x12, start=0.7536)
@variable(m, x13, start=0.7504)
@variable(m, x14, start=0.7504)
@variable(m, x15, start=0.7536)
@variable(m, x16, start=0.76)
@variable(m, x17, start=0.7696)
@variable(m, x18, start=0.7824)
@variable(m, x19, start=0.7984)
@variable(m, x20, start=0.8176)
@variable(m, x21, start=0.84)
@variable(m, x22, start=0.8656)
@variable(m, x23, start=0.8944)
@variable(m, x24, start=0.9264)
@variable(m, x25, start=0.9616)
@variable(m, x26, start=1)
@variable(m, x27, start=1.0416)
@variable(m, x28, start=1.0864)
@variable(m, x29, start=1.1344)
@variable(m, x30, start=1.1856)
@variable(m, x31, start=1.24)
@variable(m, x32, start=1.2976)
@variable(m, x33, start=1.3584)
@variable(m, x34, start=1.4224)
@variable(m, x35, start=1.4896)
@variable(m, x36, start=1.56)
@variable(m, x37, start=1.6336)
@variable(m, x38, start=1.7104)
@variable(m, x39, start=1.7904)
@variable(m, x40, start=1.8736)
@variable(m, x41, start=1.96)
@variable(m, x42, start=2.0496)
@variable(m, x43, start=2.1424)
@variable(m, x44, start=2.2384)
@variable(m, x45, start=2.3376)
@variable(m, x46, start=2.44)
@variable(m, x47, start=2.5456)
@variable(m, x48, start=2.6544)
@variable(m, x49, start=2.7664)
@variable(m, x50, start=2.8816)
@variable(m, 3 <= x51 <= 3, start=3)
@variable(m, x52, start=-2)
@variable(m, x53, start=-1.84)
@variable(m, x54, start=-1.68)
@variable(m, x55, start=-1.52)
@variable(m, x56, start=-1.36)
@variable(m, x57, start=-1.2)
@variable(m, x58, start=-1.04)
@variable(m, x59, start=-0.88)
@variable(m, x60, start=-0.72)
@variable(m, x61, start=-0.56)
@variable(m, x62, start=-0.4)
@variable(m, x63, start=-0.24)
@variable(m, x64, start=-0.0800000000000001)
@variable(m, x65, start=0.0800000000000001)
@variable(m, x66, start=0.24)
@variable(m, x67, start=0.4)
@variable(m, x68, start=0.56)
@variable(m, x69, start=0.72)
@variable(m, x70, start=0.88)
@variable(m, x71, start=1.04)
@variable(m, x72, start=1.2)
@variable(m, x73, start=1.36)
@variable(m, x74, start=1.52)
@variable(m, x75, start=1.68)
@variable(m, x76, start=1.84)
@variable(m, x77, start=2)
@variable(m, x78, start=2.16)
@variable(m, x79, start=2.32)
@variable(m, x80, start=2.48)
@variable(m, x81, start=2.64)
@variable(m, x82, start=2.8)
@variable(m, x83, start=2.96)
@variable(m, x84, start=3.12)
@variable(m, x85, start=3.28)
@variable(m, x86, start=3.44)
@variable(m, x87, start=3.6)
@variable(m, x88, start=3.76)
@variable(m, x89, start=3.92)
@variable(m, x90, start=4.08)
@variable(m, x91, start=4.24)
@variable(m, x92, start=4.4)
@variable(m, x93, start=4.56)
@variable(m, x94, start=4.72)
@variable(m, x95, start=4.88)
@variable(m, x96, start=5.04)
@variable(m, x97, start=5.2)
@variable(m, x98, start=5.36)
@variable(m, x99, start=5.52)
@variable(m, x100, start=5.68)
@variable(m, x101, start=5.84)
@variable(m, x102, start=6)

JuMP.set_NL_objective(m, MOI.MIN_SENSE, :(0.01*(sqrt(1 + $(x52)^2)*$(x1) + sqrt(1 + $(x53)^2)*$(x2) + sqrt(1 + $(x53)^2)
    *$(x2) + sqrt(1 + $(x54)^2)*$(x3) + sqrt(1 + $(x54)^2)*$(x3) + sqrt(1 + $(x55)^2)*$(x4) + sqrt(1 + $(x55)^2)*$(x4)
     + sqrt(1 + $(x56)^2)*$(x5) + sqrt(1 + $(x56)^2)*$(x5) + sqrt(1 + $(x57)^2)*$(x6) + sqrt(1 + $(x57)^2)*$(x6) + sqrt(
    1 + $(x58)^2)*$(x7) + sqrt(1 + $(x58)^2)*$(x7) + sqrt(1 + $(x59)^2)*$(x8) + sqrt(1 + $(x59)^2)*$(x8) + sqrt(1 + 
    $(x60)^2)*$(x9) + sqrt(1 + $(x60)^2)*$(x9) + sqrt(1 + $(x61)^2)*$(x10) + sqrt(1 + $(x61)^2)*$(x10) + sqrt(1 + $(x62)
    ^2)*$(x11) + sqrt(1 + $(x62)^2)*$(x11) + sqrt(1 + $(x63)^2)*$(x12) + sqrt(1 + $(x63)^2)*$(x12) + sqrt(1 + $(x64)^2)*
    $(x13) + sqrt(1 + $(x64)^2)*$(x13) + sqrt(1 + $(x65)^2)*$(x14) + sqrt(1 + $(x65)^2)*$(x14) + sqrt(1 + $(x66)^2)*
    $(x15) + sqrt(1 + $(x66)^2)*$(x15) + sqrt(1 + $(x67)^2)*$(x16) + sqrt(1 + $(x67)^2)*$(x16) + sqrt(1 + $(x68)^2)*
    $(x17) + sqrt(1 + $(x68)^2)*$(x17) + sqrt(1 + $(x69)^2)*$(x18) + sqrt(1 + $(x69)^2)*$(x18) + sqrt(1 + $(x70)^2)*
    $(x19) + sqrt(1 + $(x70)^2)*$(x19) + sqrt(1 + $(x71)^2)*$(x20) + sqrt(1 + $(x71)^2)*$(x20) + sqrt(1 + $(x72)^2)*
    $(x21) + sqrt(1 + $(x72)^2)*$(x21) + sqrt(1 + $(x73)^2)*$(x22) + sqrt(1 + $(x73)^2)*$(x22) + sqrt(1 + $(x74)^2)*
    $(x23) + sqrt(1 + $(x74)^2)*$(x23) + sqrt(1 + $(x75)^2)*$(x24) + sqrt(1 + $(x75)^2)*$(x24) + sqrt(1 + $(x76)^2)*
    $(x25) + sqrt(1 + $(x76)^2)*$(x25) + sqrt(1 + $(x77)^2)*$(x26) + sqrt(1 + $(x77)^2)*$(x26) + sqrt(1 + $(x78)^2)*
    $(x27) + sqrt(1 + $(x78)^2)*$(x27) + sqrt(1 + $(x79)^2)*$(x28) + sqrt(1 + $(x79)^2)*$(x28) + sqrt(1 + $(x80)^2)*
    $(x29) + sqrt(1 + $(x80)^2)*$(x29) + sqrt(1 + $(x81)^2)*$(x30) + sqrt(1 + $(x81)^2)*$(x30) + sqrt(1 + $(x82)^2)*
    $(x31) + sqrt(1 + $(x82)^2)*$(x31) + sqrt(1 + $(x83)^2)*$(x32) + sqrt(1 + $(x83)^2)*$(x32) + sqrt(1 + $(x84)^2)*
    $(x33) + sqrt(1 + $(x84)^2)*$(x33) + sqrt(1 + $(x85)^2)*$(x34) + sqrt(1 + $(x85)^2)*$(x34) + sqrt(1 + $(x86)^2)*
    $(x35) + sqrt(1 + $(x86)^2)*$(x35) + sqrt(1 + $(x87)^2)*$(x36) + sqrt(1 + $(x87)^2)*$(x36) + sqrt(1 + $(x88)^2)*
    $(x37) + sqrt(1 + $(x88)^2)*$(x37) + sqrt(1 + $(x89)^2)*$(x38) + sqrt(1 + $(x89)^2)*$(x38) + sqrt(1 + $(x90)^2)*
    $(x39) + sqrt(1 + $(x90)^2)*$(x39) + sqrt(1 + $(x91)^2)*$(x40) + sqrt(1 + $(x91)^2)*$(x40) + sqrt(1 + $(x92)^2)*
    $(x41) + sqrt(1 + $(x92)^2)*$(x41) + sqrt(1 + $(x93)^2)*$(x42) + sqrt(1 + $(x93)^2)*$(x42) + sqrt(1 + $(x94)^2)*
    $(x43) + sqrt(1 + $(x94)^2)*$(x43) + sqrt(1 + $(x95)^2)*$(x44) + sqrt(1 + $(x95)^2)*$(x44) + sqrt(1 + $(x96)^2)*
    $(x45) + sqrt(1 + $(x96)^2)*$(x45) + sqrt(1 + $(x97)^2)*$(x46) + sqrt(1 + $(x97)^2)*$(x46) + sqrt(1 + $(x98)^2)*
    $(x47) + sqrt(1 + $(x98)^2)*$(x47) + sqrt(1 + $(x99)^2)*$(x48) + sqrt(1 + $(x99)^2)*$(x48) + sqrt(1 + $(x100)^2)*
    $(x49) + sqrt(1 + $(x100)^2)*$(x49) + sqrt(1 + $(x101)^2)*$(x50) + sqrt(1 + $(x101)^2)*$(x50) + sqrt(1 + $(x102)^2)*
    $(x51))))

@constraint(m,  - x1 + x2 - 0.01*x52 - 0.01*x53 == 0)

@constraint(m,  - x2 + x3 - 0.01*x53 - 0.01*x54 == 0)

@constraint(m,  - x3 + x4 - 0.01*x54 - 0.01*x55 == 0)

@constraint(m,  - x4 + x5 - 0.01*x55 - 0.01*x56 == 0)

@constraint(m,  - x5 + x6 - 0.01*x56 - 0.01*x57 == 0)

@constraint(m,  - x6 + x7 - 0.01*x57 - 0.01*x58 == 0)

@constraint(m,  - x7 + x8 - 0.01*x58 - 0.01*x59 == 0)

@constraint(m,  - x8 + x9 - 0.01*x59 - 0.01*x60 == 0)

@constraint(m,  - x9 + x10 - 0.01*x60 - 0.01*x61 == 0)

@constraint(m,  - x10 + x11 - 0.01*x61 - 0.01*x62 == 0)

@constraint(m,  - x11 + x12 - 0.01*x62 - 0.01*x63 == 0)

@constraint(m,  - x12 + x13 - 0.01*x63 - 0.01*x64 == 0)

@constraint(m,  - x13 + x14 - 0.01*x64 - 0.01*x65 == 0)

@constraint(m,  - x14 + x15 - 0.01*x65 - 0.01*x66 == 0)

@constraint(m,  - x15 + x16 - 0.01*x66 - 0.01*x67 == 0)

@constraint(m,  - x16 + x17 - 0.01*x67 - 0.01*x68 == 0)

@constraint(m,  - x17 + x18 - 0.01*x68 - 0.01*x69 == 0)

@constraint(m,  - x18 + x19 - 0.01*x69 - 0.01*x70 == 0)

@constraint(m,  - x19 + x20 - 0.01*x70 - 0.01*x71 == 0)

@constraint(m,  - x20 + x21 - 0.01*x71 - 0.01*x72 == 0)

@constraint(m,  - x21 + x22 - 0.01*x72 - 0.01*x73 == 0)

@constraint(m,  - x22 + x23 - 0.01*x73 - 0.01*x74 == 0)

@constraint(m,  - x23 + x24 - 0.01*x74 - 0.01*x75 == 0)

@constraint(m,  - x24 + x25 - 0.01*x75 - 0.01*x76 == 0)

@constraint(m,  - x25 + x26 - 0.01*x76 - 0.01*x77 == 0)

@constraint(m,  - x26 + x27 - 0.01*x77 - 0.01*x78 == 0)

@constraint(m,  - x27 + x28 - 0.01*x78 - 0.01*x79 == 0)

@constraint(m,  - x28 + x29 - 0.01*x79 - 0.01*x80 == 0)

@constraint(m,  - x29 + x30 - 0.01*x80 - 0.01*x81 == 0)

@constraint(m,  - x30 + x31 - 0.01*x81 - 0.01*x82 == 0)

@constraint(m,  - x31 + x32 - 0.01*x82 - 0.01*x83 == 0)

@constraint(m,  - x32 + x33 - 0.01*x83 - 0.01*x84 == 0)

@constraint(m,  - x33 + x34 - 0.01*x84 - 0.01*x85 == 0)

@constraint(m,  - x34 + x35 - 0.01*x85 - 0.01*x86 == 0)

@constraint(m,  - x35 + x36 - 0.01*x86 - 0.01*x87 == 0)

@constraint(m,  - x36 + x37 - 0.01*x87 - 0.01*x88 == 0)

@constraint(m,  - x37 + x38 - 0.01*x88 - 0.01*x89 == 0)

@constraint(m,  - x38 + x39 - 0.01*x89 - 0.01*x90 == 0)

@constraint(m,  - x39 + x40 - 0.01*x90 - 0.01*x91 == 0)

@constraint(m,  - x40 + x41 - 0.01*x91 - 0.01*x92 == 0)

@constraint(m,  - x41 + x42 - 0.01*x92 - 0.01*x93 == 0)

@constraint(m,  - x42 + x43 - 0.01*x93 - 0.01*x94 == 0)

@constraint(m,  - x43 + x44 - 0.01*x94 - 0.01*x95 == 0)

@constraint(m,  - x44 + x45 - 0.01*x95 - 0.01*x96 == 0)

@constraint(m,  - x45 + x46 - 0.01*x96 - 0.01*x97 == 0)

@constraint(m,  - x46 + x47 - 0.01*x97 - 0.01*x98 == 0)

@constraint(m,  - x47 + x48 - 0.01*x98 - 0.01*x99 == 0)

@constraint(m,  - x48 + x49 - 0.01*x99 - 0.01*x100 == 0)

@constraint(m,  - x49 + x50 - 0.01*x100 - 0.01*x101 == 0)

@constraint(m,  - x50 + x51 - 0.01*x101 - 0.01*x102 == 0)

JuMP.add_NL_constraint(m, :(0.01*(sqrt(1 + $(x52)^2) + sqrt(1 + $(x53)^2) + sqrt(1 + $(x53)^2) + sqrt(1 + $(x54)^2) + 
    sqrt(1 + $(x54)^2) + sqrt(1 + $(x55)^2) + sqrt(1 + $(x55)^2) + sqrt(1 + $(x56)^2) + sqrt(1 + $(x56)^2) + sqrt(1 + 
    $(x57)^2) + sqrt(1 + $(x57)^2) + sqrt(1 + $(x58)^2) + sqrt(1 + $(x58)^2) + sqrt(1 + $(x59)^2) + sqrt(1 + $(x59)^2)
     + sqrt(1 + $(x60)^2) + sqrt(1 + $(x60)^2) + sqrt(1 + $(x61)^2) + sqrt(1 + $(x61)^2) + sqrt(1 + $(x62)^2) + sqrt(1
     + $(x62)^2) + sqrt(1 + $(x63)^2) + sqrt(1 + $(x63)^2) + sqrt(1 + $(x64)^2) + sqrt(1 + $(x64)^2) + sqrt(1 + $(x65)^2
    ) + sqrt(1 + $(x65)^2) + sqrt(1 + $(x66)^2) + sqrt(1 + $(x66)^2) + sqrt(1 + $(x67)^2) + sqrt(1 + $(x67)^2) + sqrt(1
     + $(x68)^2) + sqrt(1 + $(x68)^2) + sqrt(1 + $(x69)^2) + sqrt(1 + $(x69)^2) + sqrt(1 + $(x70)^2) + sqrt(1 + $(x70)^2
    ) + sqrt(1 + $(x71)^2) + sqrt(1 + $(x71)^2) + sqrt(1 + $(x72)^2) + sqrt(1 + $(x72)^2) + sqrt(1 + $(x73)^2) + sqrt(1
     + $(x73)^2) + sqrt(1 + $(x74)^2) + sqrt(1 + $(x74)^2) + sqrt(1 + $(x75)^2) + sqrt(1 + $(x75)^2) + sqrt(1 + $(x76)^2
    ) + sqrt(1 + $(x76)^2) + sqrt(1 + $(x77)^2) + sqrt(1 + $(x77)^2) + sqrt(1 + $(x78)^2) + sqrt(1 + $(x78)^2) + sqrt(1
     + $(x79)^2) + sqrt(1 + $(x79)^2) + sqrt(1 + $(x80)^2) + sqrt(1 + $(x80)^2) + sqrt(1 + $(x81)^2) + sqrt(1 + $(x81)^2
    ) + sqrt(1 + $(x82)^2) + sqrt(1 + $(x82)^2) + sqrt(1 + $(x83)^2) + sqrt(1 + $(x83)^2) + sqrt(1 + $(x84)^2) + sqrt(1
     + $(x84)^2) + sqrt(1 + $(x85)^2) + sqrt(1 + $(x85)^2) + sqrt(1 + $(x86)^2) + sqrt(1 + $(x86)^2) + sqrt(1 + $(x87)^2
    ) + sqrt(1 + $(x87)^2) + sqrt(1 + $(x88)^2) + sqrt(1 + $(x88)^2) + sqrt(1 + $(x89)^2) + sqrt(1 + $(x89)^2) + sqrt(1
     + $(x90)^2) + sqrt(1 + $(x90)^2) + sqrt(1 + $(x91)^2) + sqrt(1 + $(x91)^2) + sqrt(1 + $(x92)^2) + sqrt(1 + $(x92)^2
    ) + sqrt(1 + $(x93)^2) + sqrt(1 + $(x93)^2) + sqrt(1 + $(x94)^2) + sqrt(1 + $(x94)^2) + sqrt(1 + $(x95)^2) + sqrt(1
     + $(x95)^2) + sqrt(1 + $(x96)^2) + sqrt(1 + $(x96)^2) + sqrt(1 + $(x97)^2) + sqrt(1 + $(x97)^2) + sqrt(1 + $(x98)^2
    ) + sqrt(1 + $(x98)^2) + sqrt(1 + $(x99)^2) + sqrt(1 + $(x99)^2) + sqrt(1 + $(x100)^2) + sqrt(1 + $(x100)^2) + sqrt(
    1 + $(x101)^2) + sqrt(1 + $(x101)^2) + sqrt(1 + $(x102)^2)) == 4))
