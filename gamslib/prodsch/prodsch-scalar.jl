#  MIP written by GAMS Convert at 10/11/20 12:16:01
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         89       53        4       32        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        118       77       41        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        384      384        0        0
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
@variable(m, 0 <= x86, start=0)
@variable(m, 0 <= x87, start=0)
@variable(m, 0 <= x88, start=0)
@variable(m, 0 <= x89, start=0)
@variable(m, 0 <= b90 <= 1, binary=true, start=0)
@variable(m, x91, start=0)
@variable(m, x92, start=0)
@variable(m, x93, start=0)
@variable(m, x94, start=0)
@variable(m, x95, start=0)
@variable(m, x96, start=0)
@variable(m, x97, start=0)
@variable(m, x98, start=0)
@variable(m, x99, start=0)
@variable(m, x100, start=0)
@variable(m, x101, start=0)
@variable(m, x102, start=0)
@variable(m, 0 <= b103 <= 1, binary=true, start=0)
@variable(m, 0 <= b104 <= 1, binary=true, start=0)
@variable(m, 0 <= b105 <= 1, binary=true, start=0)
@variable(m, 0 <= b106 <= 1, binary=true, start=0)
@variable(m, 0 <= b107 <= 1, binary=true, start=0)
@variable(m, 0 <= b108 <= 1, binary=true, start=0)
@variable(m, 0 <= b109 <= 1, binary=true, start=0)
@variable(m, 0 <= b110 <= 1, binary=true, start=0)
@variable(m, 0 <= x111, start=0)
@variable(m, 0 <= x112, start=0)
@variable(m, 0 <= x113, start=0)
@variable(m, 0 <= x114, start=0)
@variable(m, 0 <= x115, start=0)
@variable(m, 0 <= x116, start=0)
@variable(m, 0 <= x117, start=0)
@variable(m, 0 <= x118, start=0)

@objective(m, Min, x2 + 0.970873786407767*x3 + 0.942595909133754*x4 + 0.91514165935316*x5 + x6 + 0.970873786407767*x7
     + 0.942595909133754*x8 + 0.91514165935316*x9 + x10 + 0.970873786407767*x11 + 0.942595909133754*x12
     + 0.91514165935316*x13)

@constraint(m, x2 - 0.1*x18 - 3.5*x95 - 4.1*x96 - 10*b103 - 16*b104 == 0)

@constraint(m, x3 - 0.1*x19 - 3.5*x97 - 4.1*x98 - 10*b105 - 16*b106 == 0)

@constraint(m, x4 - 0.1*x20 - 3.5*x99 - 4.1*x100 - 10*b107 - 16*b108 == 0)

@constraint(m, x5 - 0.1*x21 - 3.5*x101 - 4.1*x102 - 10*b109 - 16*b110 == 0)

@constraint(m, x6 - 0.001*x14 - 15*b90 == 0)

@constraint(m, x7 - 0.001*x15 == 0)

@constraint(m, x8 - 0.001*x16 == 0)

@constraint(m, x9 - 0.001*x17 == 0)

@constraint(m, x10 - 0.9*x111 - 0.15*x115 == 0)

@constraint(m, x11 - 0.9*x112 - 0.15*x116 == 0)

@constraint(m, x12 - 0.9*x113 - 0.15*x117 == 0)

@constraint(m, x13 - 0.9*x114 - 0.15*x118 == 0)

@constraint(m, x18 - 1000*x22 - 1000*x23 - 3000*x30 - 3000*x31 - 4500*x38 - 4500*x39 - 5800*x46 - 5800*x47 == 0)

@constraint(m, x19 - 1000*x24 - 1000*x25 - 3000*x32 - 3000*x33 - 4500*x40 - 4500*x41 - 5800*x48 - 5800*x49 == 0)

@constraint(m, x20 - 1000*x26 - 1000*x27 - 3000*x34 - 3000*x35 - 4500*x42 - 4500*x43 - 5800*x50 - 5800*x51 == 0)

@constraint(m, x21 - 1000*x28 - 1000*x29 - 3000*x36 - 3000*x37 - 4500*x44 - 4500*x45 - 5800*x52 - 5800*x53 == 0)

@constraint(m,  - 20*x22 - 40*x30 - 50*x38 - 60*x46 + x95 == 0)

@constraint(m,  - 20*x23 - 40*x31 - 50*x39 - 60*x47 + x96 == 0)

@constraint(m,  - 20*x24 - 40*x32 - 50*x40 - 60*x48 + x97 == 0)

@constraint(m,  - 20*x25 - 40*x33 - 50*x41 - 60*x49 + x98 == 0)

@constraint(m,  - 20*x26 - 40*x34 - 50*x42 - 60*x50 + x99 == 0)

@constraint(m,  - 20*x27 - 40*x35 - 50*x43 - 60*x51 + x100 == 0)

@constraint(m,  - 20*x28 - 40*x36 - 50*x44 - 60*x52 + x101 == 0)

@constraint(m,  - 20*x29 - 40*x37 - 50*x45 - 60*x53 + x102 == 0)

@constraint(m, x22 + x30 + x38 + x46 - b103 == 0)

@constraint(m, x23 + x31 + x39 + x47 - b104 == 0)

@constraint(m, x24 + x32 + x40 + x48 - b105 == 0)

@constraint(m, x25 + x33 + x41 + x49 - b106 == 0)

@constraint(m, x26 + x34 + x42 + x50 - b107 == 0)

@constraint(m, x27 + x35 + x43 + x51 - b108 == 0)

@constraint(m, x28 + x36 + x44 + x52 - b109 == 0)

@constraint(m, x29 + x37 + x45 + x53 - b110 == 0)

@constraint(m,  - x18 + x86 == 0)

@constraint(m,  - x19 - x86 + x87 == 0)

@constraint(m,  - x20 - x87 + x88 == 0)

@constraint(m,  - x21 - x88 + x89 == -24000)

@constraint(m, x14 - 2*x86 + 48000*b90 >= 0)

@constraint(m, x15 - 2*x87 + 48000*b90 >= 0)

@constraint(m, x16 - 2*x88 + 48000*b90 >= 0)

@constraint(m, x17 - 2*x89 + 48000*b90 >= 0)

@constraint(m, x91 - x95 - x96 == 0)

@constraint(m, x92 - x97 - x98 == 0)

@constraint(m, x93 - x99 - x100 == 0)

@constraint(m, x94 - x101 - x102 == 0)

@constraint(m, x91 - x111 + x115 == 84)

@constraint(m,  - x91 + x92 - x112 + x116 == 0)

@constraint(m,  - x92 + x93 - x113 + x117 == 0)

@constraint(m,  - x93 + x94 - x114 + x118 == 0)

@constraint(m, b54 + b62 + b70 + b78 == 1)

@constraint(m, b55 + b63 + b71 + b79 == 1)

@constraint(m, b56 + b64 + b72 + b80 == 1)

@constraint(m, b57 + b65 + b73 + b81 == 1)

@constraint(m, b58 + b66 + b74 + b82 == 1)

@constraint(m, b59 + b67 + b75 + b83 == 1)

@constraint(m, b60 + b68 + b76 + b84 == 1)

@constraint(m, b61 + b69 + b77 + b85 == 1)

@constraint(m, x22 - b54 <= 0)

@constraint(m, x23 - b55 <= 0)

@constraint(m, x24 - b56 <= 0)

@constraint(m, x25 - b57 <= 0)

@constraint(m, x26 - b58 <= 0)

@constraint(m, x27 - b59 <= 0)

@constraint(m, x28 - b60 <= 0)

@constraint(m, x29 - b61 <= 0)

@constraint(m, x22 + x30 - b54 - b62 <= 0)

@constraint(m, x23 + x31 - b55 - b63 <= 0)

@constraint(m, x24 + x32 - b56 - b64 <= 0)

@constraint(m, x25 + x33 - b57 - b65 <= 0)

@constraint(m, x26 + x34 - b58 - b66 <= 0)

@constraint(m, x27 + x35 - b59 - b67 <= 0)

@constraint(m, x28 + x36 - b60 - b68 <= 0)

@constraint(m, x29 + x37 - b61 - b69 <= 0)

@constraint(m, x30 + x38 - b54 - b62 - b70 <= 0)

@constraint(m, x31 + x39 - b55 - b63 - b71 <= 0)

@constraint(m, x32 + x40 - b56 - b64 - b72 <= 0)

@constraint(m, x33 + x41 - b57 - b65 - b73 <= 0)

@constraint(m, x34 + x42 - b58 - b66 - b74 <= 0)

@constraint(m, x35 + x43 - b59 - b67 - b75 <= 0)

@constraint(m, x36 + x44 - b60 - b68 - b76 <= 0)

@constraint(m, x37 + x45 - b61 - b69 - b77 <= 0)

@constraint(m, x38 + x46 - b62 - b70 - b78 <= 0)

@constraint(m, x39 + x47 - b63 - b71 - b79 <= 0)

@constraint(m, x40 + x48 - b64 - b72 - b80 <= 0)

@constraint(m, x41 + x49 - b65 - b73 - b81 <= 0)

@constraint(m, x42 + x50 - b66 - b74 - b82 <= 0)

@constraint(m, x43 + x51 - b67 - b75 - b83 <= 0)

@constraint(m, x44 + x52 - b68 - b76 - b84 <= 0)

@constraint(m, x45 + x53 - b69 - b77 - b85 <= 0)
