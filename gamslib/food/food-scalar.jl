#  MIP written by GAMS Convert at 10/11/20 13:33:09
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        133       37       36       60        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        127       97       30        0        0        0        0        0
#  FX      5        5        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        493      493        0        0
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
@variable(m, 0 <= b37 <= 1, binary=true, start=0)
@variable(m, 0 <= b38 <= 1, binary=true, start=0)
@variable(m, 0 <= b39 <= 1, binary=true, start=0)
@variable(m, 0 <= b40 <= 1, binary=true, start=0)
@variable(m, 0 <= b41 <= 1, binary=true, start=0)
@variable(m, 0 <= b42 <= 1, binary=true, start=0)
@variable(m, 0 <= b43 <= 1, binary=true, start=0)
@variable(m, 0 <= b44 <= 1, binary=true, start=0)
@variable(m, 0 <= b45 <= 1, binary=true, start=0)
@variable(m, 0 <= b46 <= 1, binary=true, start=0)
@variable(m, 0 <= b47 <= 1, binary=true, start=0)
@variable(m, 0 <= b48 <= 1, binary=true, start=0)
@variable(m, 0 <= b49 <= 1, binary=true, start=0)
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
@variable(m, 0 <= x97 <= 1000, start=0)
@variable(m, 0 <= x98 <= 1000, start=0)
@variable(m, 0 <= x99 <= 1000, start=0)
@variable(m, 0 <= x100 <= 1000, start=0)
@variable(m, 0 <= x101 <= 1000, start=0)
@variable(m, 0 <= x102 <= 1000, start=0)
@variable(m, 0 <= x103 <= 1000, start=0)
@variable(m, 0 <= x104 <= 1000, start=0)
@variable(m, 0 <= x105 <= 1000, start=0)
@variable(m, 0 <= x106 <= 1000, start=0)
@variable(m, 0 <= x107 <= 1000, start=0)
@variable(m, 0 <= x108 <= 1000, start=0)
@variable(m, 0 <= x109 <= 1000, start=0)
@variable(m, 0 <= x110 <= 1000, start=0)
@variable(m, 0 <= x111 <= 1000, start=0)
@variable(m, 0 <= x112 <= 1000, start=0)
@variable(m, 0 <= x113 <= 1000, start=0)
@variable(m, 0 <= x114 <= 1000, start=0)
@variable(m, 0 <= x115 <= 1000, start=0)
@variable(m, 0 <= x116 <= 1000, start=0)
@variable(m, 0 <= x117 <= 1000, start=0)
@variable(m, 0 <= x118 <= 1000, start=0)
@variable(m, 0 <= x119 <= 1000, start=0)
@variable(m, 0 <= x120 <= 1000, start=0)
@variable(m, 0 <= x121 <= 1000, start=0)
@variable(m, 500 <= x122 <= 500, start=500)
@variable(m, 500 <= x123 <= 500, start=500)
@variable(m, 500 <= x124 <= 500, start=500)
@variable(m, 500 <= x125 <= 500, start=500)
@variable(m, 500 <= x126 <= 500, start=500)

@objective(m, Max, 150*x1 + 150*x2 + 150*x3 + 150*x4 + 150*x5 + 150*x6 - 110*x67 - 120*x68 - 130*x69 - 110*x70 - 115*x71
     - 130*x72 - 130*x73 - 110*x74 - 90*x75 - 115*x76 - 110*x77 - 140*x78 - 130*x79 - 100*x80 - 95*x81 - 120*x82
     - 110*x83 - 120*x84 - 120*x85 - 125*x86 - 100*x87 - 120*x88 - 150*x89 - 110*x90 - 105*x91 - 90*x92 - 100*x93
     - 140*x94 - 80*x95 - 135*x96 - 5*x97 - 5*x98 - 5*x99 - 5*x100 - 5*x101 - 5*x102 - 5*x103 - 5*x104 - 5*x105 - 5*x106
     - 5*x107 - 5*x108 - 5*x109 - 5*x110 - 5*x111 - 5*x112 - 5*x113 - 5*x114 - 5*x115 - 5*x116 - 5*x117 - 5*x118
     - 5*x119 - 5*x120 - 5*x121 - 5*x122 - 5*x123 - 5*x124 - 5*x125 - 5*x126)

@constraint(m, x7 + x8 <= 200)

@constraint(m, x12 + x13 <= 200)

@constraint(m, x17 + x18 <= 200)

@constraint(m, x22 + x23 <= 200)

@constraint(m, x27 + x28 <= 200)

@constraint(m, x32 + x33 <= 200)

@constraint(m, x9 + x10 + x11 <= 250)

@constraint(m, x14 + x15 + x16 <= 250)

@constraint(m, x19 + x20 + x21 <= 250)

@constraint(m, x24 + x25 + x26 <= 250)

@constraint(m, x29 + x30 + x31 <= 250)

@constraint(m, x34 + x35 + x36 <= 250)

@constraint(m, x1 - x7 - x8 - x9 - x10 - x11 == 0)

@constraint(m, x2 - x12 - x13 - x14 - x15 - x16 == 0)

@constraint(m, x3 - x17 - x18 - x19 - x20 - x21 == 0)

@constraint(m, x4 - x22 - x23 - x24 - x25 - x26 == 0)

@constraint(m, x5 - x27 - x28 - x29 - x30 - x31 == 0)

@constraint(m, x6 - x32 - x33 - x34 - x35 - x36 == 0)

@constraint(m,  - 3*x1 + 8.8*x7 + 6.1*x8 + 2*x9 + 4.2*x10 + 5*x11 >= 0)

@constraint(m,  - 3*x2 + 8.8*x12 + 6.1*x13 + 2*x14 + 4.2*x15 + 5*x16 >= 0)

@constraint(m,  - 3*x3 + 8.8*x17 + 6.1*x18 + 2*x19 + 4.2*x20 + 5*x21 >= 0)

@constraint(m,  - 3*x4 + 8.8*x22 + 6.1*x23 + 2*x24 + 4.2*x25 + 5*x26 >= 0)

@constraint(m,  - 3*x5 + 8.8*x27 + 6.1*x28 + 2*x29 + 4.2*x30 + 5*x31 >= 0)

@constraint(m,  - 3*x6 + 8.8*x32 + 6.1*x33 + 2*x34 + 4.2*x35 + 5*x36 >= 0)

@constraint(m,  - 6*x1 + 8.8*x7 + 6.1*x8 + 2*x9 + 4.2*x10 + 5*x11 <= 0)

@constraint(m,  - 6*x2 + 8.8*x12 + 6.1*x13 + 2*x14 + 4.2*x15 + 5*x16 <= 0)

@constraint(m,  - 6*x3 + 8.8*x17 + 6.1*x18 + 2*x19 + 4.2*x20 + 5*x21 <= 0)

@constraint(m,  - 6*x4 + 8.8*x22 + 6.1*x23 + 2*x24 + 4.2*x25 + 5*x26 <= 0)

@constraint(m,  - 6*x5 + 8.8*x27 + 6.1*x28 + 2*x29 + 4.2*x30 + 5*x31 <= 0)

@constraint(m,  - 6*x6 + 8.8*x32 + 6.1*x33 + 2*x34 + 4.2*x35 + 5*x36 <= 0)

@constraint(m,  - x7 + x67 - x97 + x122 == 0)

@constraint(m,  - x8 + x68 - x98 + x123 == 0)

@constraint(m,  - x9 + x69 - x99 + x124 == 0)

@constraint(m,  - x10 + x70 - x100 + x125 == 0)

@constraint(m,  - x11 + x71 - x101 + x126 == 0)

@constraint(m,  - x12 + x72 + x97 - x102 == 0)

@constraint(m,  - x13 + x73 + x98 - x103 == 0)

@constraint(m,  - x14 + x74 + x99 - x104 == 0)

@constraint(m,  - x15 + x75 + x100 - x105 == 0)

@constraint(m,  - x16 + x76 + x101 - x106 == 0)

@constraint(m,  - x17 + x77 + x102 - x107 == 0)

@constraint(m,  - x18 + x78 + x103 - x108 == 0)

@constraint(m,  - x19 + x79 + x104 - x109 == 0)

@constraint(m,  - x20 + x80 + x105 - x110 == 0)

@constraint(m,  - x21 + x81 + x106 - x111 == 0)

@constraint(m,  - x22 + x82 + x107 - x112 == 0)

@constraint(m,  - x23 + x83 + x108 - x113 == 0)

@constraint(m,  - x24 + x84 + x109 - x114 == 0)

@constraint(m,  - x25 + x85 + x110 - x115 == 0)

@constraint(m,  - x26 + x86 + x111 - x116 == 0)

@constraint(m,  - x27 + x87 + x112 - x117 == 0)

@constraint(m,  - x28 + x88 + x113 - x118 == 0)

@constraint(m,  - x29 + x89 + x114 - x119 == 0)

@constraint(m,  - x30 + x90 + x115 - x120 == 0)

@constraint(m,  - x31 + x91 + x116 - x121 == 0)

@constraint(m,  - x32 + x92 + x117 - x122 == 0)

@constraint(m,  - x33 + x93 + x118 - x123 == 0)

@constraint(m,  - x34 + x94 + x119 - x124 == 0)

@constraint(m,  - x35 + x95 + x120 - x125 == 0)

@constraint(m,  - x36 + x96 + x121 - x126 == 0)

@constraint(m, x7 - 20*b37 >= 0)

@constraint(m, x8 - 20*b38 >= 0)

@constraint(m, x9 - 20*b39 >= 0)

@constraint(m, x10 - 20*b40 >= 0)

@constraint(m, x11 - 20*b41 >= 0)

@constraint(m, x12 - 20*b42 >= 0)

@constraint(m, x13 - 20*b43 >= 0)

@constraint(m, x14 - 20*b44 >= 0)

@constraint(m, x15 - 20*b45 >= 0)

@constraint(m, x16 - 20*b46 >= 0)

@constraint(m, x17 - 20*b47 >= 0)

@constraint(m, x18 - 20*b48 >= 0)

@constraint(m, x19 - 20*b49 >= 0)

@constraint(m, x20 - 20*b50 >= 0)

@constraint(m, x21 - 20*b51 >= 0)

@constraint(m, x22 - 20*b52 >= 0)

@constraint(m, x23 - 20*b53 >= 0)

@constraint(m, x24 - 20*b54 >= 0)

@constraint(m, x25 - 20*b55 >= 0)

@constraint(m, x26 - 20*b56 >= 0)

@constraint(m, x27 - 20*b57 >= 0)

@constraint(m, x28 - 20*b58 >= 0)

@constraint(m, x29 - 20*b59 >= 0)

@constraint(m, x30 - 20*b60 >= 0)

@constraint(m, x31 - 20*b61 >= 0)

@constraint(m, x32 - 20*b62 >= 0)

@constraint(m, x33 - 20*b63 >= 0)

@constraint(m, x34 - 20*b64 >= 0)

@constraint(m, x35 - 20*b65 >= 0)

@constraint(m, x36 - 20*b66 >= 0)

@constraint(m, x7 - 200*b37 <= 0)

@constraint(m, x8 - 200*b38 <= 0)

@constraint(m, x9 - 250*b39 <= 0)

@constraint(m, x10 - 250*b40 <= 0)

@constraint(m, x11 - 250*b41 <= 0)

@constraint(m, x12 - 200*b42 <= 0)

@constraint(m, x13 - 200*b43 <= 0)

@constraint(m, x14 - 250*b44 <= 0)

@constraint(m, x15 - 250*b45 <= 0)

@constraint(m, x16 - 250*b46 <= 0)

@constraint(m, x17 - 200*b47 <= 0)

@constraint(m, x18 - 200*b48 <= 0)

@constraint(m, x19 - 250*b49 <= 0)

@constraint(m, x20 - 250*b50 <= 0)

@constraint(m, x21 - 250*b51 <= 0)

@constraint(m, x22 - 200*b52 <= 0)

@constraint(m, x23 - 200*b53 <= 0)

@constraint(m, x24 - 250*b54 <= 0)

@constraint(m, x25 - 250*b55 <= 0)

@constraint(m, x26 - 250*b56 <= 0)

@constraint(m, x27 - 200*b57 <= 0)

@constraint(m, x28 - 200*b58 <= 0)

@constraint(m, x29 - 250*b59 <= 0)

@constraint(m, x30 - 250*b60 <= 0)

@constraint(m, x31 - 250*b61 <= 0)

@constraint(m, x32 - 200*b62 <= 0)

@constraint(m, x33 - 200*b63 <= 0)

@constraint(m, x34 - 250*b64 <= 0)

@constraint(m, x35 - 250*b65 <= 0)

@constraint(m, x36 - 250*b66 <= 0)

@constraint(m, b37 + b38 + b39 + b40 + b41 <= 3)

@constraint(m, b42 + b43 + b44 + b45 + b46 <= 3)

@constraint(m, b47 + b48 + b49 + b50 + b51 <= 3)

@constraint(m, b52 + b53 + b54 + b55 + b56 <= 3)

@constraint(m, b57 + b58 + b59 + b60 + b61 <= 3)

@constraint(m, b62 + b63 + b64 + b65 + b66 <= 3)

@constraint(m, b37 + b38 - 2*b41 <= 0)

@constraint(m, b42 + b43 - 2*b46 <= 0)

@constraint(m, b47 + b48 - 2*b51 <= 0)

@constraint(m, b52 + b53 - 2*b56 <= 0)

@constraint(m, b57 + b58 - 2*b61 <= 0)

@constraint(m, b62 + b63 - 2*b66 <= 0)
