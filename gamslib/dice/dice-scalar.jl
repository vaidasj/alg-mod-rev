#  MIP written by GAMS Convert at 10/11/20 12:32:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        126        3      108       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        127       19      108        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        465      465        0        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, x1, start=0)
@variable(m, 1 <= x2 <= 1, start=1)
@variable(m, 1 <= x3 <= 18, start=1)
@variable(m, 1 <= x4 <= 18, start=1)
@variable(m, 1 <= x5 <= 18, start=1)
@variable(m, 1 <= x6 <= 18, start=1)
@variable(m, 1 <= x7 <= 18, start=1)
@variable(m, 1 <= x8 <= 18, start=1)
@variable(m, 1 <= x9 <= 18, start=1)
@variable(m, 1 <= x10 <= 18, start=1)
@variable(m, 1 <= x11 <= 18, start=1)
@variable(m, 1 <= x12 <= 18, start=1)
@variable(m, 1 <= x13 <= 18, start=1)
@variable(m, 1 <= x14 <= 18, start=1)
@variable(m, 1 <= x15 <= 18, start=1)
@variable(m, 1 <= x16 <= 18, start=1)
@variable(m, 1 <= x17 <= 18, start=1)
@variable(m, 1 <= x18 <= 18, start=1)
@variable(m, 1 <= x19 <= 18, start=1)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 0 <= b22 <= 1, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 1, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 0 <= b31 <= 1, binary=true, start=0)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 0 <= b33 <= 1, binary=true, start=0)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)
@variable(m, 0 <= b35 <= 1, binary=true, start=0)
@variable(m, 0 <= b36 <= 1, binary=true, start=0)
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
@variable(m, 0 <= b92 <= 1, binary=true, start=0)
@variable(m, 0 <= b93 <= 1, binary=true, start=0)
@variable(m, 0 <= b94 <= 1, binary=true, start=0)
@variable(m, 0 <= b95 <= 1, binary=true, start=0)
@variable(m, 0 <= b96 <= 1, binary=true, start=0)
@variable(m, 0 <= b97 <= 1, binary=true, start=0)
@variable(m, 0 <= b98 <= 1, binary=true, start=0)
@variable(m, 0 <= b99 <= 1, binary=true, start=0)
@variable(m, 0 <= b100 <= 1, binary=true, start=0)
@variable(m, 0 <= b101 <= 1, binary=true, start=0)
@variable(m, 0 <= b102 <= 1, binary=true, start=0)
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
@variable(m, 0 <= b113 <= 1, binary=true, start=0)
@variable(m, 0 <= b114 <= 1, binary=true, start=0)
@variable(m, 0 <= b115 <= 1, binary=true, start=0)
@variable(m, 0 <= b116 <= 1, binary=true, start=0)
@variable(m, 0 <= b117 <= 1, binary=true, start=0)
@variable(m, 0 <= b118 <= 1, binary=true, start=0)
@variable(m, 0 <= b119 <= 1, binary=true, start=0)
@variable(m, 0 <= b120 <= 1, binary=true, start=0)
@variable(m, 0 <= b121 <= 1, binary=true, start=0)
@variable(m, 0 <= b122 <= 1, binary=true, start=0)
@variable(m, 0 <= b123 <= 1, binary=true, start=0)
@variable(m, 0 <= b124 <= 1, binary=true, start=0)
@variable(m, 0 <= b125 <= 1, binary=true, start=0)
@variable(m, 0 <= b126 <= 1, binary=true, start=0)
@variable(m, 0 <= b127 <= 1, binary=true, start=0)

@objective(m, Max, x1)

@constraint(m,  - x1 + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35
     + b36 + b37 + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54
     + b55 == 0)

@constraint(m,  - x1 + b56 + b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71
     + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90
     + b91 == 0)

@constraint(m,  - x1 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106
     + b107 + b108 + b109 + b110 + b111 + b112 + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 + b121 + b122
     + b123 + b124 + b125 + b126 + b127 == 0)

@constraint(m, x2 - x8 - 17*b20 >= -16)

@constraint(m, x2 - x9 - 17*b21 >= -16)

@constraint(m, x2 - x10 - 17*b22 >= -16)

@constraint(m, x2 - x11 - 17*b23 >= -16)

@constraint(m, x2 - x12 - 17*b24 >= -16)

@constraint(m, x2 - x13 - 17*b25 >= -16)

@constraint(m, x3 - x8 - 17*b26 >= -16)

@constraint(m, x3 - x9 - 17*b27 >= -16)

@constraint(m, x3 - x10 - 17*b28 >= -16)

@constraint(m, x3 - x11 - 17*b29 >= -16)

@constraint(m, x3 - x12 - 17*b30 >= -16)

@constraint(m, x3 - x13 - 17*b31 >= -16)

@constraint(m, x4 - x8 - 17*b32 >= -16)

@constraint(m, x4 - x9 - 17*b33 >= -16)

@constraint(m, x4 - x10 - 17*b34 >= -16)

@constraint(m, x4 - x11 - 17*b35 >= -16)

@constraint(m, x4 - x12 - 17*b36 >= -16)

@constraint(m, x4 - x13 - 17*b37 >= -16)

@constraint(m, x5 - x8 - 17*b38 >= -16)

@constraint(m, x5 - x9 - 17*b39 >= -16)

@constraint(m, x5 - x10 - 17*b40 >= -16)

@constraint(m, x5 - x11 - 17*b41 >= -16)

@constraint(m, x5 - x12 - 17*b42 >= -16)

@constraint(m, x5 - x13 - 17*b43 >= -16)

@constraint(m, x6 - x8 - 17*b44 >= -16)

@constraint(m, x6 - x9 - 17*b45 >= -16)

@constraint(m, x6 - x10 - 17*b46 >= -16)

@constraint(m, x6 - x11 - 17*b47 >= -16)

@constraint(m, x6 - x12 - 17*b48 >= -16)

@constraint(m, x6 - x13 - 17*b49 >= -16)

@constraint(m, x7 - x8 - 17*b50 >= -16)

@constraint(m, x7 - x9 - 17*b51 >= -16)

@constraint(m, x7 - x10 - 17*b52 >= -16)

@constraint(m, x7 - x11 - 17*b53 >= -16)

@constraint(m, x7 - x12 - 17*b54 >= -16)

@constraint(m, x7 - x13 - 17*b55 >= -16)

@constraint(m, x8 - x14 - 17*b56 >= -16)

@constraint(m, x8 - x15 - 17*b57 >= -16)

@constraint(m, x8 - x16 - 17*b58 >= -16)

@constraint(m, x8 - x17 - 17*b59 >= -16)

@constraint(m, x8 - x18 - 17*b60 >= -16)

@constraint(m, x8 - x19 - 17*b61 >= -16)

@constraint(m, x9 - x14 - 17*b62 >= -16)

@constraint(m, x9 - x15 - 17*b63 >= -16)

@constraint(m, x9 - x16 - 17*b64 >= -16)

@constraint(m, x9 - x17 - 17*b65 >= -16)

@constraint(m, x9 - x18 - 17*b66 >= -16)

@constraint(m, x9 - x19 - 17*b67 >= -16)

@constraint(m, x10 - x14 - 17*b68 >= -16)

@constraint(m, x10 - x15 - 17*b69 >= -16)

@constraint(m, x10 - x16 - 17*b70 >= -16)

@constraint(m, x10 - x17 - 17*b71 >= -16)

@constraint(m, x10 - x18 - 17*b72 >= -16)

@constraint(m, x10 - x19 - 17*b73 >= -16)

@constraint(m, x11 - x14 - 17*b74 >= -16)

@constraint(m, x11 - x15 - 17*b75 >= -16)

@constraint(m, x11 - x16 - 17*b76 >= -16)

@constraint(m, x11 - x17 - 17*b77 >= -16)

@constraint(m, x11 - x18 - 17*b78 >= -16)

@constraint(m, x11 - x19 - 17*b79 >= -16)

@constraint(m, x12 - x14 - 17*b80 >= -16)

@constraint(m, x12 - x15 - 17*b81 >= -16)

@constraint(m, x12 - x16 - 17*b82 >= -16)

@constraint(m, x12 - x17 - 17*b83 >= -16)

@constraint(m, x12 - x18 - 17*b84 >= -16)

@constraint(m, x12 - x19 - 17*b85 >= -16)

@constraint(m, x13 - x14 - 17*b86 >= -16)

@constraint(m, x13 - x15 - 17*b87 >= -16)

@constraint(m, x13 - x16 - 17*b88 >= -16)

@constraint(m, x13 - x17 - 17*b89 >= -16)

@constraint(m, x13 - x18 - 17*b90 >= -16)

@constraint(m, x13 - x19 - 17*b91 >= -16)

@constraint(m,  - x2 + x14 - 17*b92 >= -16)

@constraint(m,  - x3 + x14 - 17*b93 >= -16)

@constraint(m,  - x4 + x14 - 17*b94 >= -16)

@constraint(m,  - x5 + x14 - 17*b95 >= -16)

@constraint(m,  - x6 + x14 - 17*b96 >= -16)

@constraint(m,  - x7 + x14 - 17*b97 >= -16)

@constraint(m,  - x2 + x15 - 17*b98 >= -16)

@constraint(m,  - x3 + x15 - 17*b99 >= -16)

@constraint(m,  - x4 + x15 - 17*b100 >= -16)

@constraint(m,  - x5 + x15 - 17*b101 >= -16)

@constraint(m,  - x6 + x15 - 17*b102 >= -16)

@constraint(m,  - x7 + x15 - 17*b103 >= -16)

@constraint(m,  - x2 + x16 - 17*b104 >= -16)

@constraint(m,  - x3 + x16 - 17*b105 >= -16)

@constraint(m,  - x4 + x16 - 17*b106 >= -16)

@constraint(m,  - x5 + x16 - 17*b107 >= -16)

@constraint(m,  - x6 + x16 - 17*b108 >= -16)

@constraint(m,  - x7 + x16 - 17*b109 >= -16)

@constraint(m,  - x2 + x17 - 17*b110 >= -16)

@constraint(m,  - x3 + x17 - 17*b111 >= -16)

@constraint(m,  - x4 + x17 - 17*b112 >= -16)

@constraint(m,  - x5 + x17 - 17*b113 >= -16)

@constraint(m,  - x6 + x17 - 17*b114 >= -16)

@constraint(m,  - x7 + x17 - 17*b115 >= -16)

@constraint(m,  - x2 + x18 - 17*b116 >= -16)

@constraint(m,  - x3 + x18 - 17*b117 >= -16)

@constraint(m,  - x4 + x18 - 17*b118 >= -16)

@constraint(m,  - x5 + x18 - 17*b119 >= -16)

@constraint(m,  - x6 + x18 - 17*b120 >= -16)

@constraint(m,  - x7 + x18 - 17*b121 >= -16)

@constraint(m,  - x2 + x19 - 17*b122 >= -16)

@constraint(m,  - x3 + x19 - 17*b123 >= -16)

@constraint(m,  - x4 + x19 - 17*b124 >= -16)

@constraint(m,  - x5 + x19 - 17*b125 >= -16)

@constraint(m,  - x6 + x19 - 17*b126 >= -16)

@constraint(m,  - x7 + x19 - 17*b127 >= -16)

@constraint(m, x2 - x3 <= -1)

@constraint(m, x3 - x4 <= -1)

@constraint(m, x4 - x5 <= -1)

@constraint(m, x5 - x6 <= -1)

@constraint(m, x6 - x7 <= -1)

@constraint(m, x8 - x9 <= -1)

@constraint(m, x9 - x10 <= -1)

@constraint(m, x10 - x11 <= -1)

@constraint(m, x11 - x12 <= -1)

@constraint(m, x12 - x13 <= -1)

@constraint(m, x14 - x15 <= -1)

@constraint(m, x15 - x16 <= -1)

@constraint(m, x16 - x17 <= -1)

@constraint(m, x17 - x18 <= -1)

@constraint(m, x18 - x19 <= -1)
