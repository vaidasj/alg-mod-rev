#  LP written by GAMS Convert at 10/11/20 12:16:08
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         69       69        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        134      134        0        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        396      396        0        0
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
@variable(m, 0 <= x69 <= 5000, start=0)
@variable(m, 0 <= x70 <= 5000, start=0)
@variable(m, 0 <= x71 <= 5000, start=0)
@variable(m, 0 <= x72 <= 5000, start=0)
@variable(m, 1200 <= x73 <= 3000, start=1200)
@variable(m, 1200 <= x74 <= 3000, start=1200)
@variable(m, 1200 <= x75 <= 3000, start=1200)
@variable(m, 1200 <= x76 <= 3000, start=1200)
@variable(m, 700 <= x77 <= 1500, start=700)
@variable(m, 700 <= x78 <= 1500, start=700)
@variable(m, 700 <= x79 <= 1500, start=700)
@variable(m, 700 <= x80 <= 1500, start=700)
@variable(m, 0 <= x81 <= 1000, start=0)
@variable(m, 0 <= x82 <= 1000, start=0)
@variable(m, 0 <= x83 <= 1000, start=0)
@variable(m, 0 <= x84 <= 1000, start=0)
@variable(m, 0 <= x85 <= 500, start=0)
@variable(m, 0 <= x86 <= 500, start=0)
@variable(m, 0 <= x87 <= 500, start=0)
@variable(m, 0 <= x88 <= 500, start=0)
@variable(m, 0 <= x89 <= 0, start=0)
@variable(m, 0 <= x90 <= 0, start=0)
@variable(m, 0 <= x91 <= 0, start=0)
@variable(m, 0 <= x92 <= 0, start=0)
@variable(m, 0 <= x93, start=0)
@variable(m, 0 <= x94, start=0)
@variable(m, 0 <= x95, start=0)
@variable(m, 200 <= x96, start=200)
@variable(m, 0 <= x97, start=0)
@variable(m, 0 <= x98, start=0)
@variable(m, 0 <= x99, start=0)
@variable(m, 200 <= x100, start=200)
@variable(m, 0 <= x101, start=0)
@variable(m, 0 <= x102, start=0)
@variable(m, 0 <= x103, start=0)
@variable(m, 200 <= x104, start=200)
@variable(m, 0 <= x105, start=0)
@variable(m, 0 <= x106, start=0)
@variable(m, 0 <= x107, start=0)
@variable(m, 200 <= x108, start=200)
@variable(m, 2000 <= x109 <= 2500, start=2000)
@variable(m, 0 <= x110 <= 2500, start=0)
@variable(m, 2000 <= x111 <= 3000, start=2000)
@variable(m, 1500 <= x112 <= 2000, start=1500)
@variable(m, 1500 <= x113 <= 3000, start=1500)
@variable(m, 0 <= x114 <= 3000, start=0)
@variable(m, 0 <= x115 <= 3000, start=0)
@variable(m, 0 <= x116 <= 3000, start=0)
@variable(m, 0 <= x117 <= 3000, start=0)
@variable(m, 0 <= x118 <= 2500, start=0)
@variable(m, 0 <= x119 <= 2500, start=0)
@variable(m, 0 <= x120 <= 2500, start=0)
@variable(m, 0 <= x121 <= 2500, start=0)
@variable(m, 0 <= x122 <= 4000, start=0)
@variable(m, 0 <= x123 <= 4000, start=0)
@variable(m, 0 <= x124 <= 4000, start=0)
@variable(m, 0 <= x125 <= 4000, start=0)
@variable(m, 0 <= x126 <= 2500, start=0)
@variable(m, 0 <= x127 <= 2500, start=0)
@variable(m, 0 <= x128 <= 2500, start=0)
@variable(m, 0 <= x129 <= 2500, start=0)
@variable(m, x131, start=0)
@variable(m, x132, start=0)
@variable(m, x133, start=0)
@variable(m, x134, start=0)

@objective(m, Max, x131 - x132 - x133 - x134 + 10)

@constraint(m,  - x1 + x114 == 0)

@constraint(m,  - x2 - x93 + x115 == 0)

@constraint(m,  - x3 - x94 + x116 == 0)

@constraint(m,  - x4 - x95 + x117 == 0)

@constraint(m,  - x5 - x9 + x118 == 0)

@constraint(m,  - x6 - x10 - x97 + x119 == 0)

@constraint(m,  - x7 - x11 - x98 + x120 == 0)

@constraint(m,  - x8 - x12 - x99 + x121 == 0)

@constraint(m,  - x13 - x21 + x122 == 0)

@constraint(m,  - x14 - x22 - x101 + x123 == 0)

@constraint(m,  - x15 - x23 - x102 + x124 == 0)

@constraint(m,  - x16 - x24 - x103 + x125 == 0)

@constraint(m,  - x17 - x25 + x126 == 0)

@constraint(m,  - x18 - x26 - x105 + x127 == 0)

@constraint(m,  - x19 - x27 - x106 + x128 == 0)

@constraint(m,  - x20 - x28 - x107 + x129 == 0)

@constraint(m,  - x1 - x5 + x69 + x81 == 0)

@constraint(m,  - x2 - x6 + x70 + x82 == 0)

@constraint(m,  - x3 - x7 + x71 + x83 == 0)

@constraint(m,  - x4 - x8 + x72 + x84 == 0)

@constraint(m,  - x9 - x13 - x17 + x73 + x85 == 0)

@constraint(m,  - x10 - x14 - x18 + x74 + x86 == 0)

@constraint(m,  - x11 - x15 - x19 + x75 + x87 == 0)

@constraint(m,  - x12 - x16 - x20 + x76 + x88 == 0)

@constraint(m,  - x21 - x25 + x77 + x89 == 0)

@constraint(m,  - x22 - x26 + x78 + x90 == 0)

@constraint(m,  - x23 - x27 + x79 + x91 == 0)

@constraint(m,  - x24 - x28 + x80 + x92 == 0)

@constraint(m, x29 + x33 + x93 - x114 == 0)

@constraint(m, x30 + x34 + x94 - x115 == 0)

@constraint(m, x31 + x35 + x95 - x116 == 0)

@constraint(m, x32 + x36 + x96 - x117 == 0)

@constraint(m, x37 + x41 + x45 + x97 - x118 == 0)

@constraint(m, x38 + x42 + x46 + x98 - x119 == 0)

@constraint(m, x39 + x43 + x47 + x99 - x120 == 0)

@constraint(m, x40 + x44 + x48 + x100 - x121 == 0)

@constraint(m, x49 + x53 + x57 + x101 - x122 == 0)

@constraint(m, x50 + x54 + x58 + x102 - x123 == 0)

@constraint(m, x51 + x55 + x59 + x103 - x124 == 0)

@constraint(m, x52 + x56 + x60 + x104 - x125 == 0)

@constraint(m, x61 + x65 + x105 - x126 == 0)

@constraint(m, x62 + x66 + x106 - x127 == 0)

@constraint(m, x63 + x67 + x107 - x128 == 0)

@constraint(m, x64 + x68 + x108 - x129 == 0)

@constraint(m, x29 - x109 == 0)

@constraint(m, x30 - x109 == 0)

@constraint(m, x31 - x109 == 0)

@constraint(m, x32 - x109 == 0)

@constraint(m, x33 + x37 + x49 - x110 == 0)

@constraint(m, x34 + x38 + x50 - x110 == 0)

@constraint(m, x35 + x39 + x51 - x110 == 0)

@constraint(m, x36 + x40 + x52 - x110 == 0)

@constraint(m, x41 - x111 == 0)

@constraint(m, x42 - x111 == 0)

@constraint(m, x43 - x111 == 0)

@constraint(m, x44 - x111 == 0)

@constraint(m, x45 + x53 + x61 - x112 == 0)

@constraint(m, x46 + x54 + x62 - x112 == 0)

@constraint(m, x47 + x55 + x63 - x112 == 0)

@constraint(m, x48 + x56 + x64 - x112 == 0)

@constraint(m, x57 + x65 - x113 == 0)

@constraint(m, x58 + x66 - x113 == 0)

@constraint(m, x59 + x67 - x113 == 0)

@constraint(m, x60 + x68 - x113 == 0)

@constraint(m,  - 70*x29 - 70*x30 - 77*x31 - 77*x32 - 68*x33 - 68*x34 - 74.8*x35 - 74.8*x36 - 68*x37 - 68*x38 - 74.8*x39
     - 74.8*x40 - 65*x41 - 65*x42 - 71.5*x43 - 71.5*x44 - 72*x45 - 72*x46 - 79.2*x47 - 79.2*x48 - 68*x49 - 68*x50
     - 74.8*x51 - 74.8*x52 - 72*x53 - 72*x54 - 79.2*x55 - 79.2*x56 - 71*x57 - 71*x58 - 78.1*x59 - 78.1*x60 - 72*x61
     - 72*x62 - 79.2*x63 - 79.2*x64 - 71*x65 - 71*x66 - 78.1*x67 - 78.1*x68 + x131 == 0)

@constraint(m,  - 10*x1 - 10*x2 - 10*x3 - 10*x4 - 12*x5 - 12*x6 - 12*x7 - 12*x8 - 8*x9 - 8*x10 - 8*x11 - 8*x12 - 4*x13
     - 4*x14 - 4*x15 - 4*x16 - 5*x17 - 5*x18 - 5*x19 - 5*x20 - 6*x21 - 6*x22 - 6*x23 - 6*x24 - 8*x25 - 8*x26 - 8*x27
     - 8*x28 - 15*x29 - 15*x30 - 15*x31 - 15*x32 - 19*x33 - 19*x34 - 19*x35 - 19*x36 - 20*x37 - 20*x38 - 20*x39 - 20*x40
     - 22*x41 - 22*x42 - 22*x43 - 22*x44 - 18*x45 - 18*x46 - 18*x47 - 18*x48 - 16*x49 - 16*x50 - 16*x51 - 16*x52
     - 18*x53 - 18*x54 - 18*x55 - 18*x56 - 19*x57 - 19*x58 - 19*x59 - 19*x60 - 15*x61 - 15*x62 - 15*x63 - 15*x64
     - 21*x65 - 21*x66 - 21*x67 - 21*x68 + x132 == 0)

@constraint(m,  - 35*x69 - 36*x70 - 37*x71 - 38*x72 - 40*x73 - 41*x74 - 42*x75 - 43*x76 - 38*x77 - 39*x78 - 40*x79
     - 41*x80 - 45*x81 - 46*x82 - 47*x83 - 49*x84 - 43*x85 - 44*x86 - 45*x87 - 47*x88 - x90 - 2*x91 - 4*x92 + x133 == 0)

@constraint(m,  - 2*x93 - 2*x94 - 2*x95 - 2*x96 - 2*x97 - 2*x98 - 2*x99 - 2*x100 - x101 - x102 - x103 - x104 - 3*x105
     - 3*x106 - 3*x107 - 3*x108 + x134 == 0)
