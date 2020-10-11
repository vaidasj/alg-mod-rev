#  MIP written by GAMS Convert at 10/11/20 12:25:20
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         49       45        4        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         86       45        9        0        0       32        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        225      225        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

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
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21 <= 9280, start=0)
@variable(m, 0 <= s2s22, start=0)
@variable(m, 0 <= s2s23, start=0)
@variable(m, 0 <= s2s24, start=0)
@variable(m, 0 <= s2s25, start=0)
@variable(m, 0 <= s2s26, start=0)
@variable(m, 0 <= s2s27, start=0)
@variable(m, 0 <= s2s28, start=0)
@variable(m, 0 <= s2s29, start=0)
@variable(m, 0 <= s2s30, start=0)
@variable(m, 0 <= s2s31, start=0)
@variable(m, 0 <= s2s32, start=0)
@variable(m, 0 <= s2s33, start=0)
@variable(m, 0 <= s2s34, start=0)
@variable(m, 0 <= s2s35, start=0)
@variable(m, 0 <= s2s36, start=0)
@variable(m, 0 <= s2s37, start=0)
@variable(m, 0 <= s2s38, start=0)
@variable(m, 0 <= s2s39, start=0)
@variable(m, 0 <= s2s40, start=0)
@variable(m, 0 <= s2s41, start=0)
@variable(m, 0 <= s2s42, start=0)
@variable(m, 0 <= s2s43, start=0)
@variable(m, 0 <= s2s44, start=0)
@variable(m, 0 <= s2s45, start=0)
@variable(m, 0 <= s2s46, start=0)
@variable(m, 0 <= s2s47, start=0)
@variable(m, 0 <= s2s48, start=0)
@variable(m, 0 <= s2s49, start=0)
@variable(m, 0 <= s2s50, start=0)
@variable(m, 0 <= s2s51, start=0)
@variable(m, 0 <= s2s52, start=0)
@variable(m, 0 <= s2s53, start=0)
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=0)
@variable(m, 0 <= x56, start=0)
@variable(m, 0 <= x57, start=0)
@variable(m, 0 <= b58 <= 1, binary=true, start=0)
@variable(m, x59, start=0)
@variable(m, x60, start=0)
@variable(m, x61, start=0)
@variable(m, x62, start=0)
@variable(m, x63, start=0)
@variable(m, x64, start=0)
@variable(m, x65, start=0)
@variable(m, x66, start=0)
@variable(m, x67, start=0)
@variable(m, x68, start=0)
@variable(m, x69, start=0)
@variable(m, x70, start=0)
@variable(m, 0 <= b71 <= 1, binary=true, start=0)
@variable(m, 0 <= b72 <= 1, binary=true, start=0)
@variable(m, 0 <= b73 <= 1, binary=true, start=0)
@variable(m, 0 <= b74 <= 1, binary=true, start=0)
@variable(m, 0 <= b75 <= 1, binary=true, start=0)
@variable(m, 0 <= b76 <= 1, binary=true, start=0)
@variable(m, 0 <= b77 <= 1, binary=true, start=0)
@variable(m, 0 <= b78 <= 1, binary=true, start=0)
@variable(m, 0 <= x79, start=0)
@variable(m, 0 <= x80, start=0)
@variable(m, 0 <= x81, start=0)
@variable(m, 0 <= x82, start=0)
@variable(m, 0 <= x83, start=0)
@variable(m, 0 <= x84, start=0)
@variable(m, 0 <= x85, start=0)
@variable(m, 0 <= x86, start=0)
@constraint(m, [s2s22, s2s23, s2s24, s2s25] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s26, s2s27, s2s28, s2s29] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s30, s2s31, s2s32, s2s33] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s34, s2s35, s2s36, s2s37] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s38, s2s39, s2s40, s2s41] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s42, s2s43, s2s44, s2s45] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s46, s2s47, s2s48, s2s49] in MOI.SOS2(collect(1:4)))
@constraint(m, [s2s50, s2s51, s2s52, s2s53] in MOI.SOS2(collect(1:4)))

@objective(m, Min, x2 + 0.970873786407767*x3 + 0.942595909133754*x4 + 0.91514165935316*x5 + x6 + 0.970873786407767*x7
     + 0.942595909133754*x8 + 0.91514165935316*x9 + x10 + 0.970873786407767*x11 + 0.942595909133754*x12
     + 0.91514165935316*x13)

@constraint(m, x2 - 0.1*x18 - 3.5*x63 - 4.1*x64 - 10*b71 - 16*b72 == 0)

@constraint(m, x3 - 0.1*x19 - 3.5*x65 - 4.1*x66 - 10*b73 - 16*b74 == 0)

@constraint(m, x4 - 0.1*x20 - 3.5*x67 - 4.1*x68 - 10*b75 - 16*b76 == 0)

@constraint(m, x5 - 0.1*x21 - 3.5*x69 - 4.1*x70 - 10*b77 - 16*b78 == 0)

@constraint(m, x18 - 1000*s2s22 - 3000*s2s23 - 4500*s2s24 - 5800*s2s25 - 1000*s2s26 - 3000*s2s27 - 4500*s2s28
     - 5800*s2s29 == 0)

@constraint(m, x19 - 1000*s2s30 - 3000*s2s31 - 4500*s2s32 - 5800*s2s33 - 1000*s2s34 - 3000*s2s35 - 4500*s2s36
     - 5800*s2s37 == 0)

@constraint(m, x20 - 1000*s2s38 - 3000*s2s39 - 4500*s2s40 - 5800*s2s41 - 1000*s2s42 - 3000*s2s43 - 4500*s2s44
     - 5800*s2s45 == 0)

@constraint(m, x21 - 1000*s2s46 - 3000*s2s47 - 4500*s2s48 - 5800*s2s49 - 1000*s2s50 - 3000*s2s51 - 4500*s2s52
     - 5800*s2s53 == 0)

@constraint(m,  - 20*s2s22 - 40*s2s23 - 50*s2s24 - 60*s2s25 + x63 == 0)

@constraint(m,  - 20*s2s26 - 40*s2s27 - 50*s2s28 - 60*s2s29 + x64 == 0)

@constraint(m,  - 20*s2s30 - 40*s2s31 - 50*s2s32 - 60*s2s33 + x65 == 0)

@constraint(m,  - 20*s2s34 - 40*s2s35 - 50*s2s36 - 60*s2s37 + x66 == 0)

@constraint(m,  - 20*s2s38 - 40*s2s39 - 50*s2s40 - 60*s2s41 + x67 == 0)

@constraint(m,  - 20*s2s42 - 40*s2s43 - 50*s2s44 - 60*s2s45 + x68 == 0)

@constraint(m,  - 20*s2s46 - 40*s2s47 - 50*s2s48 - 60*s2s49 + x69 == 0)

@constraint(m,  - 20*s2s50 - 40*s2s51 - 50*s2s52 - 60*s2s53 + x70 == 0)

@constraint(m, s2s22 + s2s23 + s2s24 + s2s25 - b71 == 0)

@constraint(m, s2s26 + s2s27 + s2s28 + s2s29 - b72 == 0)

@constraint(m, s2s30 + s2s31 + s2s32 + s2s33 - b73 == 0)

@constraint(m, s2s34 + s2s35 + s2s36 + s2s37 - b74 == 0)

@constraint(m, s2s38 + s2s39 + s2s40 + s2s41 - b75 == 0)

@constraint(m, s2s42 + s2s43 + s2s44 + s2s45 - b76 == 0)

@constraint(m, s2s46 + s2s47 + s2s48 + s2s49 - b77 == 0)

@constraint(m, s2s50 + s2s51 + s2s52 + s2s53 - b78 == 0)

@constraint(m, x6 - 0.001*x14 - 15*b58 == 0)

@constraint(m, x7 - 0.001*x15 == 0)

@constraint(m, x8 - 0.001*x16 == 0)

@constraint(m, x9 - 0.001*x17 == 0)

@constraint(m,  - x18 + x54 == 0)

@constraint(m,  - x19 - x54 + x55 == 0)

@constraint(m,  - x20 - x55 + x56 == 0)

@constraint(m,  - x21 - x56 + x57 == -24000)

@constraint(m, x14 - 2*x54 + 48000*b58 >= 0)

@constraint(m, x15 - 2*x55 + 48000*b58 >= 0)

@constraint(m, x16 - 2*x56 + 48000*b58 >= 0)

@constraint(m, x17 - 2*x57 + 48000*b58 >= 0)

@constraint(m, x10 - 0.9*x79 - 0.15*x83 == 0)

@constraint(m, x11 - 0.9*x80 - 0.15*x84 == 0)

@constraint(m, x12 - 0.9*x81 - 0.15*x85 == 0)

@constraint(m, x13 - 0.9*x82 - 0.15*x86 == 0)

@constraint(m, x59 - x63 - x64 == 0)

@constraint(m, x60 - x65 - x66 == 0)

@constraint(m, x61 - x67 - x68 == 0)

@constraint(m, x62 - x69 - x70 == 0)

@constraint(m, x59 - x62 - x79 + x83 == 0)

@constraint(m,  - x59 + x60 - x80 + x84 == 0)

@constraint(m,  - x60 + x61 - x81 + x85 == 0)

@constraint(m,  - x61 + x62 - x82 + x86 == 0)
