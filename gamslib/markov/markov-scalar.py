#  LP written by GAMS Convert at 12/13/18 10:24:44
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


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x50 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x51 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x52 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x53 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x54 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x55 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x56 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x57 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x58 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x59 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x60 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x61 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x62 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x63 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x64 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x65 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x66 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x67 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x68 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x69 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x70 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x71 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x72 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x73 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x74 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x75 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x76 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x77 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x78 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x79 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x80 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x81 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x82 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x83 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x84 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x85 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x86 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x87 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x88 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x89 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x90 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x91 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x92 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x93 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x94 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x95 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x96 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x97 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x98 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x99 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x100 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x101 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x102 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x109 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x110 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x111 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x112 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x113 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x114 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x115 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x116 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x117 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x118 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x119 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x120 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x121 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x122 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x123 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x124 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x125 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x126 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x127 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x128 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   0.0051972100316533*m.x1 + 243.920535537848*m.x2 + 534.514798394297*m.x3 + 880.92988842236*m.x4
                        + 1294.18624658457*m.x5 + 1787.59242676306*m.x6 + 2377.24983372932*m.x7 + 3082.67621887007*m.x8
                        + 537.563883329553*m.x9 + 917.029444878532*m.x10 + 1373.57497070527*m.x11
                        + 1923.15990588652*m.x12 + 2585.20825150147*m.x13 + 3383.40655429681*m.x14
                        + 4346.69782863704*m.x15 + 5510.52277164008*m.x16 - 203.867703077591*m.x17
                        + 0.965197210031653*m.x18 + 244.880535537848*m.x19 + 535.474798394297*m.x20
                        + 881.88988842236*m.x21 + 1295.14624658457*m.x22 + 1788.55242676306*m.x23
                        + 2378.20983372932*m.x24 + 223.001085139434*m.x25 + 538.523883329553*m.x26
                        + 917.989444878532*m.x27 + 1374.53497070527*m.x28 + 1924.11990588652*m.x29
                        + 2586.16825150147*m.x30 + 3384.36655429681*m.x31 + 4347.65782863704*m.x32
                        - 374.980784183892*m.x33 - 202.907703077591*m.x34 + 1.92519721003165*m.x35
                        + 245.840535537848*m.x36 + 536.434798394297*m.x37 + 882.84988842236*m.x38
                        + 1296.10624658457*m.x39 + 1789.51242676306*m.x40 - 38.4521851910214*m.x41
                        + 223.961085139434*m.x42 + 539.483883329553*m.x43 + 918.949444878532*m.x44
                        + 1375.49497070527*m.x45 + 1925.07990588652*m.x46 + 2587.12825150147*m.x47
                        + 3385.32655429681*m.x48 - 518.604635180737*m.x49 - 374.020784183892*m.x50
                        - 201.947703077591*m.x51 + 2.88519721003165*m.x52 + 246.800535537848*m.x53
                        + 537.394798394297*m.x54 + 883.80988842236*m.x55 + 1297.06624658457*m.x56
                        - 255.744392552829*m.x57 - 37.4921851910214*m.x58 + 224.921085139434*m.x59
                        + 540.443883329553*m.x60 + 919.909444878532*m.x61 + 1376.45497070527*m.x62
                        + 1926.03990588652*m.x63 + 2588.08825150147*m.x64 - 639.139425381511*m.x65
                        - 517.644635180737*m.x66 - 373.060784183892*m.x67 - 200.987703077591*m.x68
                        + 3.84519721003165*m.x69 + 247.760535537848*m.x70 + 538.354798394297*m.x71
                        + 884.76988842236*m.x72 - 436.279068296347*m.x73 - 254.784392552829*m.x74
                        - 36.5321851910214*m.x75 + 225.881085139434*m.x76 + 541.403883329553*m.x77
                        + 920.869444878532*m.x78 + 1377.41497070527*m.x79 + 1926.99990588652*m.x80
                        - 740.263885927205*m.x81 - 638.179425381511*m.x82 - 516.684635180737*m.x83
                        - 372.100784183892*m.x84 - 200.027703077591*m.x85 + 4.80519721003165*m.x86
                        + 248.720535537848*m.x87 + 539.314798394297*m.x88 - 586.190929186121*m.x89
                        - 435.319068296347*m.x90 - 253.824392552829*m.x91 - 35.5721851910214*m.x92
                        + 226.841085139434*m.x93 + 542.363883329553*m.x94 + 921.829444878532*m.x95
                        + 1378.37497070527*m.x96 - 825.0577678163*m.x97 - 739.303885927205*m.x98
                        - 637.219425381511*m.x99 - 515.724635180737*m.x100 - 371.140784183892*m.x101
                        - 199.067703077591*m.x102 + 5.76519721003165*m.x103 + 249.680535537848*m.x104
                        - 710.570711156529*m.x105 - 585.230929186121*m.x106 - 434.359068296347*m.x107
                        - 252.864392552829*m.x108 - 34.6121851910214*m.x109 + 227.801085139434*m.x110
                        + 543.323883329553*m.x111 + 922.789444878532*m.x112 - 896.102692369583*m.x113
                        - 824.0977678163*m.x114 - 738.343885927205*m.x115 - 636.259425381511*m.x116
                        - 514.764635180737*m.x117 - 370.180784183892*m.x118 - 198.107703077591*m.x119
                        + 6.72519721003165*m.x120 - 813.648627321247*m.x121 - 709.610711156529*m.x122
                        - 584.270929186121*m.x123 - 433.399068296347*m.x124 - 251.904392552829*m.x125
                        - 33.6521851910214*m.x126 + 228.761085139434*m.x127 + 544.283883329553*m.x128, sense=minimize)

m.c1 = Constraint(expr=   0.24*m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 - 0.475*m.x9 - 0.76*m.x17
                        - 0.475*m.x25 - 0.76*m.x33 - 0.475*m.x41 - 0.76*m.x49 - 0.475*m.x57 - 0.76*m.x65 - 0.475*m.x73
                        - 0.76*m.x81 - 0.475*m.x89 - 0.76*m.x97 - 0.475*m.x105 - 0.76*m.x113 - 0.475*m.x121 == 0.0625)

m.c2 = Constraint(expr= - 0.19*m.x1 + 0.525*m.x9 + m.x10 + m.x11 + m.x12 + m.x13 + m.x14 + m.x15 + m.x16 - 0.19*m.x17
                        - 0.475*m.x25 - 0.19*m.x33 - 0.475*m.x41 - 0.19*m.x49 - 0.475*m.x57 - 0.19*m.x65 - 0.475*m.x73
                        - 0.19*m.x81 - 0.475*m.x89 - 0.19*m.x97 - 0.475*m.x105 - 0.19*m.x113 - 0.475*m.x121 == 0.0625)

m.c3 = Constraint(expr= - 0.76*m.x2 - 0.475*m.x10 + m.x17 + 0.24*m.x18 + m.x19 + m.x20 + m.x21 + m.x22 + m.x23 + m.x24
                        - 0.475*m.x26 - 0.76*m.x34 - 0.475*m.x42 - 0.76*m.x50 - 0.475*m.x58 - 0.76*m.x66 - 0.475*m.x74
                        - 0.76*m.x82 - 0.475*m.x90 - 0.76*m.x98 - 0.475*m.x106 - 0.76*m.x114 - 0.475*m.x122 == 0.0625)

m.c4 = Constraint(expr= - 0.19*m.x2 - 0.475*m.x10 - 0.19*m.x18 + m.x25 + 0.525*m.x26 + m.x27 + m.x28 + m.x29 + m.x30
                        + m.x31 + m.x32 - 0.19*m.x34 - 0.475*m.x42 - 0.19*m.x50 - 0.475*m.x58 - 0.19*m.x66 - 0.475*m.x74
                        - 0.19*m.x82 - 0.475*m.x90 - 0.19*m.x98 - 0.475*m.x106 - 0.19*m.x114 - 0.475*m.x122 == 0.0625)

m.c5 = Constraint(expr= - 0.76*m.x3 - 0.475*m.x11 - 0.76*m.x19 - 0.475*m.x27 + m.x33 + m.x34 + 0.24*m.x35 + m.x36
                        + m.x37 + m.x38 + m.x39 + m.x40 - 0.475*m.x43 - 0.76*m.x51 - 0.475*m.x59 - 0.76*m.x67
                        - 0.475*m.x75 - 0.76*m.x83 - 0.475*m.x91 - 0.76*m.x99 - 0.475*m.x107 - 0.76*m.x115
                        - 0.475*m.x123 == 0.0625)

m.c6 = Constraint(expr= - 0.19*m.x3 - 0.475*m.x11 - 0.19*m.x19 - 0.475*m.x27 - 0.19*m.x35 + m.x41 + m.x42 + 0.525*m.x43
                        + m.x44 + m.x45 + m.x46 + m.x47 + m.x48 - 0.19*m.x51 - 0.475*m.x59 - 0.19*m.x67 - 0.475*m.x75
                        - 0.19*m.x83 - 0.475*m.x91 - 0.19*m.x99 - 0.475*m.x107 - 0.19*m.x115 - 0.475*m.x123 == 0.0625)

m.c7 = Constraint(expr= - 0.76*m.x4 - 0.475*m.x12 - 0.76*m.x20 - 0.475*m.x28 - 0.76*m.x36 - 0.475*m.x44 + m.x49 + m.x50
                        + m.x51 + 0.24*m.x52 + m.x53 + m.x54 + m.x55 + m.x56 - 0.475*m.x60 - 0.76*m.x68 - 0.475*m.x76
                        - 0.76*m.x84 - 0.475*m.x92 - 0.76*m.x100 - 0.475*m.x108 - 0.76*m.x116 - 0.475*m.x124 == 0.0625)

m.c8 = Constraint(expr= - 0.19*m.x4 - 0.475*m.x12 - 0.19*m.x20 - 0.475*m.x28 - 0.19*m.x36 - 0.475*m.x44 - 0.19*m.x52
                        + m.x57 + m.x58 + m.x59 + 0.525*m.x60 + m.x61 + m.x62 + m.x63 + m.x64 - 0.19*m.x68 - 0.475*m.x76
                        - 0.19*m.x84 - 0.475*m.x92 - 0.19*m.x100 - 0.475*m.x108 - 0.19*m.x116 - 0.475*m.x124 == 0.0625)

m.c9 = Constraint(expr= - 0.76*m.x5 - 0.475*m.x13 - 0.76*m.x21 - 0.475*m.x29 - 0.76*m.x37 - 0.475*m.x45 - 0.76*m.x53
                        - 0.475*m.x61 + m.x65 + m.x66 + m.x67 + m.x68 + 0.24*m.x69 + m.x70 + m.x71 + m.x72 - 0.475*m.x77
                        - 0.76*m.x85 - 0.475*m.x93 - 0.76*m.x101 - 0.475*m.x109 - 0.76*m.x117 - 0.475*m.x125 == 0.0625)

m.c10 = Constraint(expr= - 0.19*m.x5 - 0.475*m.x13 - 0.19*m.x21 - 0.475*m.x29 - 0.19*m.x37 - 0.475*m.x45 - 0.19*m.x53
                         - 0.475*m.x61 - 0.19*m.x69 + m.x73 + m.x74 + m.x75 + m.x76 + 0.525*m.x77 + m.x78 + m.x79
                         + m.x80 - 0.19*m.x85 - 0.475*m.x93 - 0.19*m.x101 - 0.475*m.x109 - 0.19*m.x117 - 0.475*m.x125
                         == 0.0625)

m.c11 = Constraint(expr= - 0.76*m.x6 - 0.475*m.x14 - 0.76*m.x22 - 0.475*m.x30 - 0.76*m.x38 - 0.475*m.x46 - 0.76*m.x54
                         - 0.475*m.x62 - 0.76*m.x70 - 0.475*m.x78 + m.x81 + m.x82 + m.x83 + m.x84 + m.x85 + 0.24*m.x86
                         + m.x87 + m.x88 - 0.475*m.x94 - 0.76*m.x102 - 0.475*m.x110 - 0.76*m.x118 - 0.475*m.x126
                         == 0.0625)

m.c12 = Constraint(expr= - 0.19*m.x6 - 0.475*m.x14 - 0.19*m.x22 - 0.475*m.x30 - 0.19*m.x38 - 0.475*m.x46 - 0.19*m.x54
                         - 0.475*m.x62 - 0.19*m.x70 - 0.475*m.x78 - 0.19*m.x86 + m.x89 + m.x90 + m.x91 + m.x92 + m.x93
                         + 0.525*m.x94 + m.x95 + m.x96 - 0.19*m.x102 - 0.475*m.x110 - 0.19*m.x118 - 0.475*m.x126
                         == 0.0625)

m.c13 = Constraint(expr= - 0.76*m.x7 - 0.475*m.x15 - 0.76*m.x23 - 0.475*m.x31 - 0.76*m.x39 - 0.475*m.x47 - 0.76*m.x55
                         - 0.475*m.x63 - 0.76*m.x71 - 0.475*m.x79 - 0.76*m.x87 - 0.475*m.x95 + m.x97 + m.x98 + m.x99
                         + m.x100 + m.x101 + m.x102 + 0.24*m.x103 + m.x104 - 0.475*m.x111 - 0.76*m.x119 - 0.475*m.x127
                         == 0.0625)

m.c14 = Constraint(expr= - 0.19*m.x7 - 0.475*m.x15 - 0.19*m.x23 - 0.475*m.x31 - 0.19*m.x39 - 0.475*m.x47 - 0.19*m.x55
                         - 0.475*m.x63 - 0.19*m.x71 - 0.475*m.x79 - 0.19*m.x87 - 0.475*m.x95 - 0.19*m.x103 + m.x105
                         + m.x106 + m.x107 + m.x108 + m.x109 + m.x110 + 0.525*m.x111 + m.x112 - 0.19*m.x119
                         - 0.475*m.x127 == 0.0625)

m.c15 = Constraint(expr= - 0.76*m.x8 - 0.475*m.x16 - 0.76*m.x24 - 0.475*m.x32 - 0.76*m.x40 - 0.475*m.x48 - 0.76*m.x56
                         - 0.475*m.x64 - 0.76*m.x72 - 0.475*m.x80 - 0.76*m.x88 - 0.475*m.x96 - 0.76*m.x104
                         - 0.475*m.x112 + m.x113 + m.x114 + m.x115 + m.x116 + m.x117 + m.x118 + m.x119 + 0.24*m.x120
                         - 0.475*m.x128 == 0.0625)

m.c16 = Constraint(expr= - 0.19*m.x8 - 0.475*m.x16 - 0.19*m.x24 - 0.475*m.x32 - 0.19*m.x40 - 0.475*m.x48 - 0.19*m.x56
                         - 0.475*m.x64 - 0.19*m.x72 - 0.475*m.x80 - 0.19*m.x88 - 0.475*m.x96 - 0.19*m.x104
                         - 0.475*m.x112 - 0.19*m.x120 + m.x121 + m.x122 + m.x123 + m.x124 + m.x125 + m.x126 + m.x127
                         + 0.525*m.x128 == 0.0625)

m.c17 = Constraint(expr=   m.x10 <= 0)

m.c18 = Constraint(expr=   2*m.x11 <= 0)

m.c19 = Constraint(expr=   3*m.x12 <= 0)

m.c20 = Constraint(expr=   4*m.x13 <= 0)

m.c21 = Constraint(expr=   5*m.x14 <= 0)

m.c22 = Constraint(expr=   6*m.x15 <= 0)

m.c23 = Constraint(expr=   7*m.x16 <= 0)

m.c24 = Constraint(expr= - m.x25 <= 0)

m.c25 = Constraint(expr=   m.x27 <= 0)

m.c26 = Constraint(expr=   2*m.x28 <= 0)

m.c27 = Constraint(expr=   3*m.x29 <= 0)

m.c28 = Constraint(expr=   4*m.x30 <= 0)

m.c29 = Constraint(expr=   5*m.x31 <= 0)

m.c30 = Constraint(expr=   6*m.x32 <= 0)

m.c31 = Constraint(expr= - 2*m.x41 <= 0)

m.c32 = Constraint(expr= - m.x42 <= 0)

m.c33 = Constraint(expr=   m.x44 <= 0)

m.c34 = Constraint(expr=   2*m.x45 <= 0)

m.c35 = Constraint(expr=   3*m.x46 <= 0)

m.c36 = Constraint(expr=   4*m.x47 <= 0)

m.c37 = Constraint(expr=   5*m.x48 <= 0)

m.c38 = Constraint(expr= - 3*m.x57 <= 0)

m.c39 = Constraint(expr= - 2*m.x58 <= 0)

m.c40 = Constraint(expr= - m.x59 <= 0)

m.c41 = Constraint(expr=   m.x61 <= 0)

m.c42 = Constraint(expr=   2*m.x62 <= 0)

m.c43 = Constraint(expr=   3*m.x63 <= 0)

m.c44 = Constraint(expr=   4*m.x64 <= 0)

m.c45 = Constraint(expr= - 4*m.x73 <= 0)

m.c46 = Constraint(expr= - 3*m.x74 <= 0)

m.c47 = Constraint(expr= - 2*m.x75 <= 0)

m.c48 = Constraint(expr= - m.x76 <= 0)

m.c49 = Constraint(expr=   m.x78 <= 0)

m.c50 = Constraint(expr=   2*m.x79 <= 0)

m.c51 = Constraint(expr=   3*m.x80 <= 0)

m.c52 = Constraint(expr= - 5*m.x89 <= 0)

m.c53 = Constraint(expr= - 4*m.x90 <= 0)

m.c54 = Constraint(expr= - 3*m.x91 <= 0)

m.c55 = Constraint(expr= - 2*m.x92 <= 0)

m.c56 = Constraint(expr= - m.x93 <= 0)

m.c57 = Constraint(expr=   m.x95 <= 0)

m.c58 = Constraint(expr=   2*m.x96 <= 0)

m.c59 = Constraint(expr= - 6*m.x105 <= 0)

m.c60 = Constraint(expr= - 5*m.x106 <= 0)

m.c61 = Constraint(expr= - 4*m.x107 <= 0)

m.c62 = Constraint(expr= - 3*m.x108 <= 0)

m.c63 = Constraint(expr= - 2*m.x109 <= 0)

m.c64 = Constraint(expr= - m.x110 <= 0)

m.c65 = Constraint(expr=   m.x112 <= 0)

m.c66 = Constraint(expr= - 7*m.x121 <= 0)

m.c67 = Constraint(expr= - 6*m.x122 <= 0)

m.c68 = Constraint(expr= - 5*m.x123 <= 0)

m.c69 = Constraint(expr= - 4*m.x124 <= 0)

m.c70 = Constraint(expr= - 3*m.x125 <= 0)

m.c71 = Constraint(expr= - 2*m.x126 <= 0)

m.c72 = Constraint(expr= - m.x127 <= 0)
