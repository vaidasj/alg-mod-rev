#  MIP written by GAMS Convert at 10/11/20 12:17:59
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         28        1       27        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        113      103       10        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        370      370        0        0
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
@variable(m, 0 <= b103 <= 1, binary=true, start=0)
@variable(m, 0 <= b104 <= 1, binary=true, start=0)
@variable(m, 0 <= b105 <= 1, binary=true, start=0)
@variable(m, 0 <= b106 <= 1, binary=true, start=0)
@variable(m, 0 <= b107 <= 1, binary=true, start=0)
@variable(m, 0 <= b108 <= 1, binary=true, start=0)
@variable(m, 0 <= b109 <= 1, binary=true, start=0)
@variable(m, 0 <= b110 <= 1, binary=true, start=0)
@variable(m, 0 <= b111 <= 1, binary=true, start=0)
@variable(m, 0 <= b112 <= 1, binary=true, start=0)

@objective(m, Min, 56*x1 + 47.4*x2 + 47.6*x3 + 54.4*x4 + 51*x5 + 20.4*x6 + 33.6*x7 + 34.5*x8 + 26.9*x9 + 29.5*x10
     + 33.4*x11 + 20.2*x12 + 26.7*x13 + 31.3*x14 + 28.1*x15 + 35.3*x16 + 27.7*x17 + 21.2*x18 + 35*x19 + 32.2*x20
     + 41.8*x21 + 46.4*x22 + 49.1*x23 + 35.3*x24 + 42.1*x25 + 43*x26 + 41.8*x27 + 44.9*x28 + 40.7*x29 + 33.9*x30
     + 86.1*x31 + 76.4*x32 + 76.8*x33 + 87*x34 + 83.6*x35 + 90.3*x36 + 75.4*x37 + 76.4*x38 + 81.2*x39 + 96.4*x40
     + 82.4*x41 + 86.4*x42 + 32.2*x43 + 44*x44 + 45.8*x45 + 31.5*x46 + 34.1*x47 + 42*x48 + 43*x49 + 40.3*x50 + 37.8*x51
     + 42.9*x52 + 36.6*x53 + 30.8*x54 + 36.6*x55 + 24.4*x56 + 29.2*x57 + 37.6*x58 + 34.2*x59 + 41*x60 + 26.1*x61
     + 24.2*x62 + 29.9*x63 + 48.9*x64 + 31.9*x65 + 37.6*x66 + 37*x67 + 27.9*x68 + 23.1*x69 + 41.3*x70 + 38.4*x71
     + 40.9*x72 + 24.7*x73 + 26.8*x74 + 29.6*x75 + 52.8*x76 + 32.6*x77 + 41.3*x78 + 38.5*x79 + 41.9*x80 + 48*x81
     + 23.2*x82 + 32.2*x83 + 48.5*x84 + 44.6*x85 + 44.1*x86 + 43.1*x87 + 34.5*x88 + 42.4*x89 + 28.9*x90 + 44*x91
     + 35.3*x92 + 41.1*x93 + 33.2*x94 + 29.8*x95 + 54.1*x96 + 37.7*x97 + 37.1*x98 + 42.8*x99 + 44.6*x100 + 44.4*x101
     + 32.6*x102 + 810*b103 + 951*b104 + 754*b105 + 856*b106 + 852*b107 + 1760*b108 + 1656*b109 + 1626*b110 + 1784*b111
     + 1782*b112)

@constraint(m, x31 + x43 + x55 + x67 + x79 + x91 >= 9.2)

@constraint(m, x32 + x44 + x56 + x68 + x80 + x92 >= 59.9)

@constraint(m, x33 + x45 + x57 + x69 + x81 + x93 >= 95.8)

@constraint(m, x34 + x46 + x58 + x70 + x82 + x94 >= 185.3)

@constraint(m, x35 + x47 + x59 + x71 + x83 + x95 >= 344.1)

@constraint(m, x36 + x48 + x60 + x72 + x84 + x96 >= 66.1)

@constraint(m, x37 + x49 + x61 + x73 + x85 + x97 >= 168.6)

@constraint(m, x38 + x50 + x62 + x74 + x86 + x98 >= 50)

@constraint(m, x39 + x51 + x63 + x75 + x87 + x99 >= 34)

@constraint(m, x40 + x52 + x64 + x76 + x88 + x100 >= 11.1)

@constraint(m, x41 + x53 + x65 + x77 + x89 + x101 >= 109.5)

@constraint(m, x42 + x54 + x66 + x78 + x90 + x102 >= 47)

@constraint(m, x1 + x6 + x11 + x16 + x21 + x26 - x43 - x44 - x45 - x46 - x47 - x48 - x49 - x50 - x51 - x52 - x53 - x54
     >= 0)

@constraint(m, x2 + x7 + x12 + x17 + x22 + x27 - x55 - x56 - x57 - x58 - x59 - x60 - x61 - x62 - x63 - x64 - x65 - x66
     >= 0)

@constraint(m, x3 + x8 + x13 + x18 + x23 + x28 - x67 - x68 - x69 - x70 - x71 - x72 - x73 - x74 - x75 - x76 - x77 - x78
     >= 0)

@constraint(m, x4 + x9 + x14 + x19 + x24 + x29 - x79 - x80 - x81 - x82 - x83 - x84 - x85 - x86 - x87 - x88 - x89 - x90
     >= 0)

@constraint(m, x5 + x10 + x15 + x20 + x25 + x30 - x91 - x92 - x93 - x94 - x95 - x96 - x97 - x98 - x99 - x100 - x101
     - x102 >= 0)

@constraint(m,  - x6 - x7 - x8 - x9 - x10 + 1180.6*b108 >= 0)

@constraint(m,  - x11 - x12 - x13 - x14 - x15 + 1180.6*b109 >= 0)

@constraint(m,  - x16 - x17 - x18 - x19 - x20 + 1180.6*b110 >= 0)

@constraint(m,  - x21 - x22 - x23 - x24 - x25 + 1180.6*b111 >= 0)

@constraint(m,  - x26 - x27 - x28 - x29 - x30 + 1180.6*b112 >= 0)

@constraint(m,  - x43 - x44 - x45 - x46 - x47 - x48 - x49 - x50 - x51 - x52 - x53 - x54 + 1180.6*b103 >= 0)

@constraint(m,  - x55 - x56 - x57 - x58 - x59 - x60 - x61 - x62 - x63 - x64 - x65 - x66 + 1180.6*b104 >= 0)

@constraint(m,  - x67 - x68 - x69 - x70 - x71 - x72 - x73 - x74 - x75 - x76 - x77 - x78 + 1180.6*b105 >= 0)

@constraint(m,  - x79 - x80 - x81 - x82 - x83 - x84 - x85 - x86 - x87 - x88 - x89 - x90 + 1180.6*b106 >= 0)

@constraint(m,  - x91 - x92 - x93 - x94 - x95 - x96 - x97 - x98 - x99 - x100 - x101 - x102 + 1180.6*b107 >= 0)
