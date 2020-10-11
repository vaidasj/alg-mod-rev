#  MIP written by GAMS Convert at 10/11/20 14:04:00
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         72       37        3       32        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        115       49       42        0       24        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        337      337        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=25)
@variable(m, 0 <= x3, start=275)
@variable(m, 0 <= x4, start=325)
@variable(m, 0 <= x5, start=275)
@variable(m, 0 <= x6, start=0)
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
@variable(m, 0 <= b50 <= 1, binary=true, start=0)
@variable(m, 0 <= b51 <= 1, binary=true, start=0)
@variable(m, 0 <= b52 <= 1, binary=true, start=0)
@variable(m, 0 <= b53 <= 1, binary=true, start=0)
@variable(m, 0 <= b54 <= 1, binary=true, start=0)
@variable(m, 0 <= b55 <= 1, binary=true, start=0)
@variable(m, 0 <= b56 <= 1, binary=true, start=0)
@variable(m, 0 <= b57 <= 1, binary=true, start=0)
@variable(m, 0 <= b58 <= 1, binary=true, start=0)
@variable(m, 0 <= b59 <= 1, binary=true, start=0)
@variable(m, 0 <= b60 <= 1, binary=true, start=0)
@variable(m, 0 <= b61 <= 1, binary=true, start=0)
@variable(m, 0 <= b62 <= 1, binary=true, start=0)
@variable(m, 0 <= b63 <= 1, binary=true, start=0)
@variable(m, 0 <= b64 <= 1, binary=true, start=0)
@variable(m, 0 <= b65 <= 1, binary=true, start=0)
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
@variable(m, 0 <= b86 <= 1, binary=true, start=0)
@variable(m, 0 <= b87 <= 1, binary=true, start=0)
@variable(m, 0 <= b88 <= 1, binary=true, start=0)
@variable(m, 0 <= b89 <= 1, binary=true, start=0)
@variable(m, 0 <= b90 <= 1, binary=true, start=0)
@variable(m, 0 <= b91 <= 1, binary=true, start=0)
@variable(m, 0 <= s1s92, start=0)
@variable(m, 0 <= s1s93, start=0)
@variable(m, 0 <= s1s94, start=0)
@variable(m, 0 <= s1s95, start=0)
@variable(m, 0 <= s1s96, start=0)
@variable(m, 0 <= s1s97, start=0)
@variable(m, 0 <= s1s98, start=0)
@variable(m, 0 <= s1s99, start=0)
@variable(m, 0 <= s1s100, start=0)
@variable(m, 0 <= s1s101, start=0)
@variable(m, 0 <= s1s102, start=0)
@variable(m, 0 <= s1s103, start=0)
@variable(m, 0 <= s1s104, start=0)
@variable(m, 0 <= s1s105, start=0)
@variable(m, 0 <= s1s106, start=0)
@variable(m, 0 <= s1s107, start=0)
@variable(m, 0 <= s1s108, start=0)
@variable(m, 0 <= s1s109, start=0)
@variable(m, 0 <= s1s110, start=0)
@variable(m, 0 <= s1s111, start=0)
@variable(m, 0 <= s1s112, start=0)
@variable(m, 0 <= s1s113, start=0)
@variable(m, 0 <= s1s114, start=0)
@variable(m, 0 <= s1s115, start=0)
@constraint(m, [s1s92, s1s93] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s94, s1s95] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s96, s1s97] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s98, s1s99] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s100, s1s101] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s102, s1s103] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s104, s1s105] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s106, s1s107] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s108, s1s109] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s110, s1s111] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s112, s1s113] in MOI.SOS1(collect(1:2)))
@constraint(m, [s1s114, s1s115] in MOI.SOS1(collect(1:2)))

@objective(m, Min,  - 0.0318198051533946*x8 - 0.0216374675043084*x9 - 0.0229102597104441*x10 - 0.0318198051533946*x11
     - 0.0229102597104441*x12 - 0.017819090885901*x13 + 0.0124823035871931*x14 + 0.00848796643929129*x15
     + 0.00898725858277902*x16 + 0.0124823035871931*x17 + 0.00898725858277902*x18 + 0.00699009000882812*x19
     + 0.0090951351492436*x20 + 0.00618469190148565*x21 + 0.00654849730745539*x22 + 0.0090951351492436*x23
     + 0.00654849730745539*x24 + 0.00509327568357642*x25 + 0.00752292882162925*x26 + 0.00511559159870789*x27
     + 0.00541650875157306*x28 + 0.00752292882162925*x29 + 0.00541650875157306*x30 + 0.00421284014011238*x31
     + 0.00656159987567524*x32 + 0.00446188791545916*x33 + 0.00472435191048617*x34 + 0.00656159987567524*x35
     + 0.00472435191048617*x36 + 0.00367449593037813*x37 + 0.00589531459954838*x38 + 0.0040088139276929*x39
     + 0.00424462651167483*x40 + 0.00589531459954838*x41 + 0.00424462651167483*x42 + 0.00330137617574709*x43
     + 0.005625*x44 + 0.003825*x45 + 0.00405*x46 + 0.005625*x47 + 0.00405*x48 + 0.00315*x49 + 1.59099025766973*b50
     + 1.08187337521542*b51 + 1.14551298552221*b52 + 1.59099025766973*b53 + 1.14551298552221*b54 + 0.89095454429505*b55
     + 1.59099025766973*b56 + 1.08187337521542*b57 + 1.14551298552221*b58 + 1.59099025766973*b59 + 1.14551298552221*b60
     + 0.89095454429505*b61 + 2.46475150877325*b62 + 1.67603102596581*b63 + 1.77462108631674*b64 + 2.46475150877325*b65
     + 1.77462108631674*b66 + 1.38026084491302*b67 + 3.1014109692203*b68 + 2.1089594590698*b69 + 2.23301589783862*b70
     + 3.1014109692203*b71 + 2.23301589783862*b72 + 1.73679014276337*b73 + 3.62801598673435*b74 + 2.46705087097936*b75
     + 2.61217151044873*b76 + 3.62801598673435*b77 + 2.61217151044873*b78 + 2.03168895257123*b79 + 4.08732797803161*b80
     + 2.7793830250615*b81 + 2.94287614418276*b82 + 4.08732797803161*b83 + 2.94287614418276*b84 + 2.2889036676977*b85
     + 4.5*b86 + 3.06*b87 + 3.24*b88 + 4.5*b89 + 3.24*b90 + 2.52*b91)

@constraint(m, x1 + x2 + x3 <= 350)

@constraint(m, x4 + x5 + x6 <= 600)

@constraint(m, x1 + x4 >= 325)

@constraint(m, x2 + x5 >= 300)

@constraint(m, x3 + x6 >= 275)

@constraint(m, x1 + x8 - x14 - x20 - x26 - x32 - x38 - x44 - 50*b50 - 50*b56 - 120*b62 - 190*b68 - 260*b74 - 330*b80
     - 400*b86 == 0)

@constraint(m, x2 + x9 - x15 - x21 - x27 - x33 - x39 - x45 - 50*b51 - 50*b57 - 120*b63 - 190*b69 - 260*b75 - 330*b81
     - 400*b87 == 0)

@constraint(m, x3 + x10 - x16 - x22 - x28 - x34 - x40 - x46 - 50*b52 - 50*b58 - 120*b64 - 190*b70 - 260*b76 - 330*b82
     - 400*b88 == 0)

@constraint(m, x4 + x11 - x17 - x23 - x29 - x35 - x41 - x47 - 50*b53 - 50*b59 - 120*b65 - 190*b71 - 260*b77 - 330*b83
     - 400*b89 == 0)

@constraint(m, x5 + x12 - x18 - x24 - x30 - x36 - x42 - x48 - 50*b54 - 50*b60 - 120*b66 - 190*b72 - 260*b78 - 330*b84
     - 400*b90 == 0)

@constraint(m, x6 + x13 - x19 - x25 - x31 - x37 - x43 - x49 - 50*b55 - 50*b61 - 120*b67 - 190*b73 - 260*b79 - 330*b85
     - 400*b91 == 0)

@constraint(m, x14 - 70*b56 <= 0)

@constraint(m, x15 - 70*b57 <= 0)

@constraint(m, x16 - 70*b58 <= 0)

@constraint(m, x17 - 70*b59 <= 0)

@constraint(m, x18 - 70*b60 <= 0)

@constraint(m, x19 - 70*b61 <= 0)

@constraint(m, x20 - 70*b62 <= 0)

@constraint(m, x21 - 70*b63 <= 0)

@constraint(m, x22 - 70*b64 <= 0)

@constraint(m, x23 - 70*b65 <= 0)

@constraint(m, x24 - 70*b66 <= 0)

@constraint(m, x25 - 70*b67 <= 0)

@constraint(m, x26 - 70*b68 <= 0)

@constraint(m, x27 - 70*b69 <= 0)

@constraint(m, x28 - 70*b70 <= 0)

@constraint(m, x29 - 70*b71 <= 0)

@constraint(m, x30 - 70*b72 <= 0)

@constraint(m, x31 - 70*b73 <= 0)

@constraint(m, x32 - 70*b74 <= 0)

@constraint(m, x33 - 70*b75 <= 0)

@constraint(m, x34 - 70*b76 <= 0)

@constraint(m, x35 - 70*b77 <= 0)

@constraint(m, x36 - 70*b78 <= 0)

@constraint(m, x37 - 70*b79 <= 0)

@constraint(m, x38 - 70*b80 <= 0)

@constraint(m, x39 - 70*b81 <= 0)

@constraint(m, x40 - 70*b82 <= 0)

@constraint(m, x41 - 70*b83 <= 0)

@constraint(m, x42 - 70*b84 <= 0)

@constraint(m, x43 - 70*b85 <= 0)

@constraint(m, b50 + b56 + b62 + b68 + b74 + b80 + b86 == 1)

@constraint(m, b51 + b57 + b63 + b69 + b75 + b81 + b87 == 1)

@constraint(m, b52 + b58 + b64 + b70 + b76 + b82 + b88 == 1)

@constraint(m, b53 + b59 + b65 + b71 + b77 + b83 + b89 == 1)

@constraint(m, b54 + b60 + b66 + b72 + b78 + b84 + b90 == 1)

@constraint(m, b55 + b61 + b67 + b73 + b79 + b85 + b91 == 1)

@constraint(m,  - b50 - s1s92 == -1)

@constraint(m,  - b51 - s1s94 == -1)

@constraint(m,  - b52 - s1s96 == -1)

@constraint(m,  - b53 - s1s98 == -1)

@constraint(m,  - b54 - s1s100 == -1)

@constraint(m,  - b55 - s1s102 == -1)

@constraint(m,  - b86 - s1s104 == -1)

@constraint(m,  - b87 - s1s106 == -1)

@constraint(m,  - b88 - s1s108 == -1)

@constraint(m,  - b89 - s1s110 == -1)

@constraint(m,  - b90 - s1s112 == -1)

@constraint(m,  - b91 - s1s114 == -1)

@constraint(m, x8 - s1s93 == 0)

@constraint(m, x9 - s1s95 == 0)

@constraint(m, x10 - s1s97 == 0)

@constraint(m, x11 - s1s99 == 0)

@constraint(m, x12 - s1s101 == 0)

@constraint(m, x13 - s1s103 == 0)

@constraint(m, x44 - s1s105 == 0)

@constraint(m, x45 - s1s107 == 0)

@constraint(m, x46 - s1s109 == 0)

@constraint(m, x47 - s1s111 == 0)

@constraint(m, x48 - s1s113 == 0)

@constraint(m, x49 - s1s115 == 0)
