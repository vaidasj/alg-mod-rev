#  LP written by GAMS Convert at 10/11/20 12:22:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         73       17        0       56        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        129      129        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        553      553        0        0
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
@variable(m, 0 <= x69, start=0)
@variable(m, 0 <= x70, start=0)
@variable(m, 0 <= x71, start=0)
@variable(m, 0 <= x72, start=0)
@variable(m, 0 <= x73, start=0)
@variable(m, 0 <= x74, start=0)
@variable(m, 0 <= x75, start=0)
@variable(m, 0 <= x76, start=0)
@variable(m, 0 <= x77, start=0)
@variable(m, 0 <= x78, start=0)
@variable(m, 0 <= x79, start=0)
@variable(m, 0 <= x80, start=0)
@variable(m, 0 <= x81, start=0)
@variable(m, 0 <= x82, start=0)
@variable(m, 0 <= x83, start=0)
@variable(m, 0 <= x84, start=0)
@variable(m, 0 <= x85, start=0)
@variable(m, 0 <= x86, start=0)
@variable(m, 0 <= x87, start=0)
@variable(m, 0 <= x88, start=0)
@variable(m, 0 <= x89, start=0)
@variable(m, 0 <= x90, start=0)
@variable(m, 0 <= x91, start=0)
@variable(m, 0 <= x92, start=0)
@variable(m, 0 <= x93, start=0)
@variable(m, 0 <= x94, start=0)
@variable(m, 0 <= x95, start=0)
@variable(m, 0 <= x96, start=0)
@variable(m, 0 <= x97, start=0)
@variable(m, 0 <= x98, start=0)
@variable(m, 0 <= x99, start=0)
@variable(m, 0 <= x100, start=0)
@variable(m, 0 <= x101, start=0)
@variable(m, 0 <= x102, start=0)
@variable(m, 0 <= x103, start=0)
@variable(m, 0 <= x104, start=0)
@variable(m, 0 <= x105, start=0)
@variable(m, 0 <= x106, start=0)
@variable(m, 0 <= x107, start=0)
@variable(m, 0 <= x108, start=0)
@variable(m, 0 <= x109, start=0)
@variable(m, 0 <= x110, start=0)
@variable(m, 0 <= x111, start=0)
@variable(m, 0 <= x112, start=0)
@variable(m, 0 <= x113, start=0)
@variable(m, 0 <= x114, start=0)
@variable(m, 0 <= x115, start=0)
@variable(m, 0 <= x116, start=0)
@variable(m, 0 <= x117, start=0)
@variable(m, 0 <= x118, start=0)
@variable(m, 0 <= x119, start=0)
@variable(m, 0 <= x120, start=0)
@variable(m, 0 <= x121, start=0)
@variable(m, 0 <= x122, start=0)
@variable(m, 0 <= x123, start=0)
@variable(m, 0 <= x124, start=0)
@variable(m, 0 <= x125, start=0)
@variable(m, 0 <= x126, start=0)
@variable(m, 0 <= x127, start=0)
@variable(m, 0 <= x128, start=0)

@objective(m, Min, 0.0051972100316533*x1 + 243.920535537848*x2 + 534.514798394297*x3 + 880.92988842236*x4
     + 1294.18624658457*x5 + 1787.59242676306*x6 + 2377.24983372932*x7 + 3082.67621887007*x8 + 537.563883329553*x9
     + 917.029444878532*x10 + 1373.57497070527*x11 + 1923.15990588652*x12 + 2585.20825150147*x13 + 3383.40655429681*x14
     + 4346.69782863704*x15 + 5510.52277164008*x16 - 203.867703077591*x17 + 0.965197210031653*x18 + 244.880535537848*x19
     + 535.474798394297*x20 + 881.88988842236*x21 + 1295.14624658457*x22 + 1788.55242676306*x23 + 2378.20983372932*x24
     + 223.001085139434*x25 + 538.523883329553*x26 + 917.989444878532*x27 + 1374.53497070527*x28 + 1924.11990588652*x29
     + 2586.16825150147*x30 + 3384.36655429681*x31 + 4347.65782863704*x32 - 374.980784183892*x33 - 202.907703077591*x34
     + 1.92519721003165*x35 + 245.840535537848*x36 + 536.434798394297*x37 + 882.84988842236*x38 + 1296.10624658457*x39
     + 1789.51242676306*x40 - 38.4521851910214*x41 + 223.961085139434*x42 + 539.483883329553*x43 + 918.949444878532*x44
     + 1375.49497070527*x45 + 1925.07990588652*x46 + 2587.12825150147*x47 + 3385.32655429681*x48 - 518.604635180737*x49
     - 374.020784183892*x50 - 201.947703077591*x51 + 2.88519721003165*x52 + 246.800535537848*x53 + 537.394798394297*x54
     + 883.80988842236*x55 + 1297.06624658457*x56 - 255.744392552829*x57 - 37.4921851910214*x58 + 224.921085139434*x59
     + 540.443883329553*x60 + 919.909444878532*x61 + 1376.45497070527*x62 + 1926.03990588652*x63 + 2588.08825150147*x64
     - 639.139425381511*x65 - 517.644635180737*x66 - 373.060784183892*x67 - 200.987703077591*x68 + 3.84519721003165*x69
     + 247.760535537848*x70 + 538.354798394297*x71 + 884.76988842236*x72 - 436.279068296347*x73 - 254.784392552829*x74
     - 36.5321851910214*x75 + 225.881085139434*x76 + 541.403883329553*x77 + 920.869444878532*x78 + 1377.41497070527*x79
     + 1926.99990588652*x80 - 740.263885927205*x81 - 638.179425381511*x82 - 516.684635180737*x83 - 372.100784183892*x84
     - 200.027703077591*x85 + 4.80519721003165*x86 + 248.720535537848*x87 + 539.314798394297*x88 - 586.190929186121*x89
     - 435.319068296347*x90 - 253.824392552829*x91 - 35.5721851910214*x92 + 226.841085139434*x93 + 542.363883329553*x94
     + 921.829444878532*x95 + 1378.37497070527*x96 - 825.0577678163*x97 - 739.303885927205*x98 - 637.219425381511*x99
     - 515.724635180737*x100 - 371.140784183892*x101 - 199.067703077591*x102 + 5.76519721003165*x103
     + 249.680535537848*x104 - 710.570711156529*x105 - 585.230929186121*x106 - 434.359068296347*x107
     - 252.864392552829*x108 - 34.6121851910214*x109 + 227.801085139434*x110 + 543.323883329553*x111
     + 922.789444878532*x112 - 896.102692369583*x113 - 824.0977678163*x114 - 738.343885927205*x115
     - 636.259425381511*x116 - 514.764635180737*x117 - 370.180784183892*x118 - 198.107703077591*x119
     + 6.72519721003165*x120 - 813.648627321247*x121 - 709.610711156529*x122 - 584.270929186121*x123
     - 433.399068296347*x124 - 251.904392552829*x125 - 33.6521851910214*x126 + 228.761085139434*x127
     + 544.283883329553*x128)

@constraint(m, 0.24*x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 - 0.475*x9 - 0.76*x17 - 0.475*x25 - 0.76*x33 - 0.475*x41
     - 0.76*x49 - 0.475*x57 - 0.76*x65 - 0.475*x73 - 0.76*x81 - 0.475*x89 - 0.76*x97 - 0.475*x105 - 0.76*x113
     - 0.475*x121 == 0.0625)

@constraint(m,  - 0.19*x1 + 0.525*x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 - 0.19*x17 - 0.475*x25 - 0.19*x33
     - 0.475*x41 - 0.19*x49 - 0.475*x57 - 0.19*x65 - 0.475*x73 - 0.19*x81 - 0.475*x89 - 0.19*x97 - 0.475*x105
     - 0.19*x113 - 0.475*x121 == 0.0625)

@constraint(m,  - 0.76*x2 - 0.475*x10 + x17 + 0.24*x18 + x19 + x20 + x21 + x22 + x23 + x24 - 0.475*x26 - 0.76*x34
     - 0.475*x42 - 0.76*x50 - 0.475*x58 - 0.76*x66 - 0.475*x74 - 0.76*x82 - 0.475*x90 - 0.76*x98 - 0.475*x106
     - 0.76*x114 - 0.475*x122 == 0.0625)

@constraint(m,  - 0.19*x2 - 0.475*x10 - 0.19*x18 + x25 + 0.525*x26 + x27 + x28 + x29 + x30 + x31 + x32 - 0.19*x34
     - 0.475*x42 - 0.19*x50 - 0.475*x58 - 0.19*x66 - 0.475*x74 - 0.19*x82 - 0.475*x90 - 0.19*x98 - 0.475*x106
     - 0.19*x114 - 0.475*x122 == 0.0625)

@constraint(m,  - 0.76*x3 - 0.475*x11 - 0.76*x19 - 0.475*x27 + x33 + x34 + 0.24*x35 + x36 + x37 + x38 + x39 + x40
     - 0.475*x43 - 0.76*x51 - 0.475*x59 - 0.76*x67 - 0.475*x75 - 0.76*x83 - 0.475*x91 - 0.76*x99 - 0.475*x107
     - 0.76*x115 - 0.475*x123 == 0.0625)

@constraint(m,  - 0.19*x3 - 0.475*x11 - 0.19*x19 - 0.475*x27 - 0.19*x35 + x41 + x42 + 0.525*x43 + x44 + x45 + x46 + x47
     + x48 - 0.19*x51 - 0.475*x59 - 0.19*x67 - 0.475*x75 - 0.19*x83 - 0.475*x91 - 0.19*x99 - 0.475*x107 - 0.19*x115
     - 0.475*x123 == 0.0625)

@constraint(m,  - 0.76*x4 - 0.475*x12 - 0.76*x20 - 0.475*x28 - 0.76*x36 - 0.475*x44 + x49 + x50 + x51 + 0.24*x52 + x53
     + x54 + x55 + x56 - 0.475*x60 - 0.76*x68 - 0.475*x76 - 0.76*x84 - 0.475*x92 - 0.76*x100 - 0.475*x108 - 0.76*x116
     - 0.475*x124 == 0.0625)

@constraint(m,  - 0.19*x4 - 0.475*x12 - 0.19*x20 - 0.475*x28 - 0.19*x36 - 0.475*x44 - 0.19*x52 + x57 + x58 + x59
     + 0.525*x60 + x61 + x62 + x63 + x64 - 0.19*x68 - 0.475*x76 - 0.19*x84 - 0.475*x92 - 0.19*x100 - 0.475*x108
     - 0.19*x116 - 0.475*x124 == 0.0625)

@constraint(m,  - 0.76*x5 - 0.475*x13 - 0.76*x21 - 0.475*x29 - 0.76*x37 - 0.475*x45 - 0.76*x53 - 0.475*x61 + x65 + x66
     + x67 + x68 + 0.24*x69 + x70 + x71 + x72 - 0.475*x77 - 0.76*x85 - 0.475*x93 - 0.76*x101 - 0.475*x109 - 0.76*x117
     - 0.475*x125 == 0.0625)

@constraint(m,  - 0.19*x5 - 0.475*x13 - 0.19*x21 - 0.475*x29 - 0.19*x37 - 0.475*x45 - 0.19*x53 - 0.475*x61 - 0.19*x69
     + x73 + x74 + x75 + x76 + 0.525*x77 + x78 + x79 + x80 - 0.19*x85 - 0.475*x93 - 0.19*x101 - 0.475*x109 - 0.19*x117
     - 0.475*x125 == 0.0625)

@constraint(m,  - 0.76*x6 - 0.475*x14 - 0.76*x22 - 0.475*x30 - 0.76*x38 - 0.475*x46 - 0.76*x54 - 0.475*x62 - 0.76*x70
     - 0.475*x78 + x81 + x82 + x83 + x84 + x85 + 0.24*x86 + x87 + x88 - 0.475*x94 - 0.76*x102 - 0.475*x110 - 0.76*x118
     - 0.475*x126 == 0.0625)

@constraint(m,  - 0.19*x6 - 0.475*x14 - 0.19*x22 - 0.475*x30 - 0.19*x38 - 0.475*x46 - 0.19*x54 - 0.475*x62 - 0.19*x70
     - 0.475*x78 - 0.19*x86 + x89 + x90 + x91 + x92 + x93 + 0.525*x94 + x95 + x96 - 0.19*x102 - 0.475*x110 - 0.19*x118
     - 0.475*x126 == 0.0625)

@constraint(m,  - 0.76*x7 - 0.475*x15 - 0.76*x23 - 0.475*x31 - 0.76*x39 - 0.475*x47 - 0.76*x55 - 0.475*x63 - 0.76*x71
     - 0.475*x79 - 0.76*x87 - 0.475*x95 + x97 + x98 + x99 + x100 + x101 + x102 + 0.24*x103 + x104 - 0.475*x111
     - 0.76*x119 - 0.475*x127 == 0.0625)

@constraint(m,  - 0.19*x7 - 0.475*x15 - 0.19*x23 - 0.475*x31 - 0.19*x39 - 0.475*x47 - 0.19*x55 - 0.475*x63 - 0.19*x71
     - 0.475*x79 - 0.19*x87 - 0.475*x95 - 0.19*x103 + x105 + x106 + x107 + x108 + x109 + x110 + 0.525*x111 + x112
     - 0.19*x119 - 0.475*x127 == 0.0625)

@constraint(m,  - 0.76*x8 - 0.475*x16 - 0.76*x24 - 0.475*x32 - 0.76*x40 - 0.475*x48 - 0.76*x56 - 0.475*x64 - 0.76*x72
     - 0.475*x80 - 0.76*x88 - 0.475*x96 - 0.76*x104 - 0.475*x112 + x113 + x114 + x115 + x116 + x117 + x118 + x119
     + 0.24*x120 - 0.475*x128 == 0.0625)

@constraint(m,  - 0.19*x8 - 0.475*x16 - 0.19*x24 - 0.475*x32 - 0.19*x40 - 0.475*x48 - 0.19*x56 - 0.475*x64 - 0.19*x72
     - 0.475*x80 - 0.19*x88 - 0.475*x96 - 0.19*x104 - 0.475*x112 - 0.19*x120 + x121 + x122 + x123 + x124 + x125 + x126
     + x127 + 0.525*x128 == 0.0625)

@constraint(m, x10 <= 0)

@constraint(m, 2*x11 <= 0)

@constraint(m, 3*x12 <= 0)

@constraint(m, 4*x13 <= 0)

@constraint(m, 5*x14 <= 0)

@constraint(m, 6*x15 <= 0)

@constraint(m, 7*x16 <= 0)

@constraint(m,  - x25 <= 0)

@constraint(m, x27 <= 0)

@constraint(m, 2*x28 <= 0)

@constraint(m, 3*x29 <= 0)

@constraint(m, 4*x30 <= 0)

@constraint(m, 5*x31 <= 0)

@constraint(m, 6*x32 <= 0)

@constraint(m,  - 2*x41 <= 0)

@constraint(m,  - x42 <= 0)

@constraint(m, x44 <= 0)

@constraint(m, 2*x45 <= 0)

@constraint(m, 3*x46 <= 0)

@constraint(m, 4*x47 <= 0)

@constraint(m, 5*x48 <= 0)

@constraint(m,  - 3*x57 <= 0)

@constraint(m,  - 2*x58 <= 0)

@constraint(m,  - x59 <= 0)

@constraint(m, x61 <= 0)

@constraint(m, 2*x62 <= 0)

@constraint(m, 3*x63 <= 0)

@constraint(m, 4*x64 <= 0)

@constraint(m,  - 4*x73 <= 0)

@constraint(m,  - 3*x74 <= 0)

@constraint(m,  - 2*x75 <= 0)

@constraint(m,  - x76 <= 0)

@constraint(m, x78 <= 0)

@constraint(m, 2*x79 <= 0)

@constraint(m, 3*x80 <= 0)

@constraint(m,  - 5*x89 <= 0)

@constraint(m,  - 4*x90 <= 0)

@constraint(m,  - 3*x91 <= 0)

@constraint(m,  - 2*x92 <= 0)

@constraint(m,  - x93 <= 0)

@constraint(m, x95 <= 0)

@constraint(m, 2*x96 <= 0)

@constraint(m,  - 6*x105 <= 0)

@constraint(m,  - 5*x106 <= 0)

@constraint(m,  - 4*x107 <= 0)

@constraint(m,  - 3*x108 <= 0)

@constraint(m,  - 2*x109 <= 0)

@constraint(m,  - x110 <= 0)

@constraint(m, x112 <= 0)

@constraint(m,  - 7*x121 <= 0)

@constraint(m,  - 6*x122 <= 0)

@constraint(m,  - 5*x123 <= 0)

@constraint(m,  - 4*x124 <= 0)

@constraint(m,  - 3*x125 <= 0)

@constraint(m,  - 2*x126 <= 0)

@constraint(m,  - x127 <= 0)
