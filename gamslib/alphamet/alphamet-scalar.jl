#  MIP written by GAMS Convert at 10/11/20 12:31:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         42       39        3        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        118       11      100        7        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        346      346        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b2 <= 1, binary=true, start=0)
@variable(m, 0 <= b3 <= 1, binary=true, start=0)
@variable(m, 0 <= b4 <= 1, binary=true, start=0)
@variable(m, 0 <= b5 <= 1, binary=true, start=0)
@variable(m, 0 <= b6 <= 1, binary=true, start=0)
@variable(m, 0 <= b7 <= 1, binary=true, start=0)
@variable(m, 0 <= b8 <= 1, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 1, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
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
@variable(m, x102, start=0)
@variable(m, x103, start=0)
@variable(m, x104, start=0)
@variable(m, x105, start=0)
@variable(m, x106, start=0)
@variable(m, x107, start=0)
@variable(m, x108, start=0)
@variable(m, x109, start=0)
@variable(m, x110, start=0)
@variable(m, x111, start=0)
@variable(m, 0 <= i112, integer=true, start=0)
@variable(m, 0 <= i113, integer=true, start=0)
@variable(m, 0 <= i114, integer=true, start=0)
@variable(m, 0 <= i115, integer=true, start=0)
@variable(m, 0 <= i116, integer=true, start=0)
@variable(m, 0 <= i117, integer=true, start=0)
@variable(m, 0 <= i118, integer=true, start=0)

@objective(m, Min, i112 + i113 + i114 + i115 + i116 + i117 + i118)

@constraint(m, x108 + x111 - 10*i112 == 0)

@constraint(m, x104 + x108 + i112 - 10*i113 == 0)

@constraint(m, 2*x102 + x104 - x108 + i113 - 10*i114 == 0)

@constraint(m, x103 + x105 - x106 + x110 + i114 - 10*i115 == 0)

@constraint(m,  - x102 + x104 + 2*x105 + i115 - 10*i116 == 0)

@constraint(m, 2*x103 + x104 - x105 + i116 - 10*i117 == 0)

@constraint(m, x102 - x106 + x109 + i117 - 10*i118 == 0)

@constraint(m,  - x109 + i118 == 0)

@constraint(m,  - b3 - 2*b4 - 3*b5 - 4*b6 - 5*b7 - 6*b8 - 7*b9 - 8*b10 - 9*b11 + x102 == 0)

@constraint(m,  - b13 - 2*b14 - 3*b15 - 4*b16 - 5*b17 - 6*b18 - 7*b19 - 8*b20 - 9*b21 + x103 == 0)

@constraint(m,  - b23 - 2*b24 - 3*b25 - 4*b26 - 5*b27 - 6*b28 - 7*b29 - 8*b30 - 9*b31 + x104 == 0)

@constraint(m,  - b33 - 2*b34 - 3*b35 - 4*b36 - 5*b37 - 6*b38 - 7*b39 - 8*b40 - 9*b41 + x105 == 0)

@constraint(m,  - b43 - 2*b44 - 3*b45 - 4*b46 - 5*b47 - 6*b48 - 7*b49 - 8*b50 - 9*b51 + x106 == 0)

@constraint(m,  - b53 - 2*b54 - 3*b55 - 4*b56 - 5*b57 - 6*b58 - 7*b59 - 8*b60 - 9*b61 + x107 == 0)

@constraint(m,  - b63 - 2*b64 - 3*b65 - 4*b66 - 5*b67 - 6*b68 - 7*b69 - 8*b70 - 9*b71 + x108 == 0)

@constraint(m,  - b73 - 2*b74 - 3*b75 - 4*b76 - 5*b77 - 6*b78 - 7*b79 - 8*b80 - 9*b81 + x109 == 0)

@constraint(m,  - b83 - 2*b84 - 3*b85 - 4*b86 - 5*b87 - 6*b88 - 7*b89 - 8*b90 - 9*b91 + x110 == 0)

@constraint(m,  - b93 - 2*b94 - 3*b95 - 4*b96 - 5*b97 - 6*b98 - 7*b99 - 8*b100 - 9*b101 + x111 == 0)

@constraint(m, b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 == 1)

@constraint(m, b12 + b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 == 1)

@constraint(m, b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 + b31 == 1)

@constraint(m, b32 + b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 + b41 == 1)

@constraint(m, b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 == 1)

@constraint(m, b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 + b61 == 1)

@constraint(m, b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 == 1)

@constraint(m, b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 + b81 == 1)

@constraint(m, b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 + b91 == 1)

@constraint(m, b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 == 1)

@constraint(m, b2 + b12 + b22 + b32 + b42 + b52 + b62 + b72 + b82 + b92 == 1)

@constraint(m, b3 + b13 + b23 + b33 + b43 + b53 + b63 + b73 + b83 + b93 == 1)

@constraint(m, b4 + b14 + b24 + b34 + b44 + b54 + b64 + b74 + b84 + b94 == 1)

@constraint(m, b5 + b15 + b25 + b35 + b45 + b55 + b65 + b75 + b85 + b95 == 1)

@constraint(m, b6 + b16 + b26 + b36 + b46 + b56 + b66 + b76 + b86 + b96 == 1)

@constraint(m, b7 + b17 + b27 + b37 + b47 + b57 + b67 + b77 + b87 + b97 == 1)

@constraint(m, b8 + b18 + b28 + b38 + b48 + b58 + b68 + b78 + b88 + b98 == 1)

@constraint(m, b9 + b19 + b29 + b39 + b49 + b59 + b69 + b79 + b89 + b99 == 1)

@constraint(m, b10 + b20 + b30 + b40 + b50 + b60 + b70 + b80 + b90 + b100 == 1)

@constraint(m, b11 + b21 + b31 + b41 + b51 + b61 + b71 + b81 + b91 + b101 == 1)

@constraint(m, x102 >= 1)

@constraint(m, x104 >= 1)

@constraint(m, x109 >= 1)
