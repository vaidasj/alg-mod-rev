#  MIP written by GAMS Convert at 10/11/20 12:43:04
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        242        2      240        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         75        1       74        0        0        0        0        0
#  FX      1        0        1        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        484      484        0        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 1, binary=true, start=0)
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
@variable(m, 1 <= b26 <= 1, binary=true, start=1)
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
@variable(m, x75, start=0)

@objective(m, Max, x75)

@constraint(m,  - b1 + b51 >= 0)

@constraint(m,  - b2 + b51 >= 0)

@constraint(m,  - b3 + b51 >= 0)

@constraint(m,  - b4 + b51 >= 0)

@constraint(m,  - b5 + b51 >= 0)

@constraint(m,  - b6 + b52 >= 0)

@constraint(m,  - b7 + b52 >= 0)

@constraint(m,  - b8 + b52 >= 0)

@constraint(m,  - b9 + b52 >= 0)

@constraint(m,  - b10 + b52 >= 0)

@constraint(m,  - b11 + b53 >= 0)

@constraint(m,  - b12 + b53 >= 0)

@constraint(m,  - b13 + b53 >= 0)

@constraint(m,  - b14 + b53 >= 0)

@constraint(m,  - b15 + b53 >= 0)

@constraint(m,  - b16 + b54 >= 0)

@constraint(m,  - b17 + b54 >= 0)

@constraint(m,  - b18 + b54 >= 0)

@constraint(m,  - b19 + b54 >= 0)

@constraint(m,  - b20 + b54 >= 0)

@constraint(m,  - b21 + b55 >= 0)

@constraint(m,  - b22 + b55 >= 0)

@constraint(m,  - b23 + b55 >= 0)

@constraint(m,  - b24 + b55 >= 0)

@constraint(m,  - b25 + b55 >= 0)

@constraint(m,  - b1 + b56 >= 0)

@constraint(m,  - b6 + b56 >= 0)

@constraint(m,  - b11 + b56 >= 0)

@constraint(m,  - b16 + b56 >= 0)

@constraint(m,  - b21 + b56 >= 0)

@constraint(m,  - b2 + b57 >= 0)

@constraint(m,  - b7 + b57 >= 0)

@constraint(m,  - b12 + b57 >= 0)

@constraint(m,  - b17 + b57 >= 0)

@constraint(m,  - b22 + b57 >= 0)

@constraint(m,  - b3 + b58 >= 0)

@constraint(m,  - b8 + b58 >= 0)

@constraint(m,  - b13 + b58 >= 0)

@constraint(m,  - b18 + b58 >= 0)

@constraint(m,  - b23 + b58 >= 0)

@constraint(m,  - b4 + b59 >= 0)

@constraint(m,  - b9 + b59 >= 0)

@constraint(m,  - b14 + b59 >= 0)

@constraint(m,  - b19 + b59 >= 0)

@constraint(m,  - b24 + b59 >= 0)

@constraint(m,  - b5 + b60 >= 0)

@constraint(m,  - b10 + b60 >= 0)

@constraint(m,  - b15 + b60 >= 0)

@constraint(m,  - b20 + b60 >= 0)

@constraint(m,  - b25 + b60 >= 0)

@constraint(m, b61 >= 0)

@constraint(m, b61 >= 0)

@constraint(m, b61 >= 0)

@constraint(m,  - b16 + b61 >= 0)

@constraint(m,  - b22 + b61 >= 0)

@constraint(m, b62 >= 0)

@constraint(m, b62 >= 0)

@constraint(m,  - b11 + b62 >= 0)

@constraint(m,  - b17 + b62 >= 0)

@constraint(m,  - b23 + b62 >= 0)

@constraint(m, b63 >= 0)

@constraint(m,  - b6 + b63 >= 0)

@constraint(m,  - b12 + b63 >= 0)

@constraint(m,  - b18 + b63 >= 0)

@constraint(m,  - b24 + b63 >= 0)

@constraint(m,  - b1 + b64 >= 0)

@constraint(m,  - b7 + b64 >= 0)

@constraint(m,  - b13 + b64 >= 0)

@constraint(m,  - b19 + b64 >= 0)

@constraint(m,  - b25 + b64 >= 0)

@constraint(m,  - b2 + b65 >= 0)

@constraint(m,  - b8 + b65 >= 0)

@constraint(m,  - b14 + b65 >= 0)

@constraint(m,  - b20 + b65 >= 0)

@constraint(m, b65 >= 0)

@constraint(m,  - b3 + b66 >= 0)

@constraint(m,  - b9 + b66 >= 0)

@constraint(m,  - b15 + b66 >= 0)

@constraint(m, b66 >= 0)

@constraint(m, b66 >= 0)

@constraint(m,  - b4 + b67 >= 0)

@constraint(m,  - b10 + b67 >= 0)

@constraint(m, b67 >= 0)

@constraint(m, b67 >= 0)

@constraint(m, b67 >= 0)

@constraint(m,  - b2 + b68 >= 0)

@constraint(m,  - b6 + b68 >= 0)

@constraint(m, b68 >= 0)

@constraint(m, b68 >= 0)

@constraint(m, b68 >= 0)

@constraint(m,  - b3 + b69 >= 0)

@constraint(m,  - b7 + b69 >= 0)

@constraint(m,  - b11 + b69 >= 0)

@constraint(m, b69 >= 0)

@constraint(m, b69 >= 0)

@constraint(m,  - b4 + b70 >= 0)

@constraint(m,  - b8 + b70 >= 0)

@constraint(m,  - b12 + b70 >= 0)

@constraint(m,  - b16 + b70 >= 0)

@constraint(m, b70 >= 0)

@constraint(m,  - b5 + b71 >= 0)

@constraint(m,  - b9 + b71 >= 0)

@constraint(m,  - b13 + b71 >= 0)

@constraint(m,  - b17 + b71 >= 0)

@constraint(m,  - b21 + b71 >= 0)

@constraint(m, b72 >= 0)

@constraint(m,  - b10 + b72 >= 0)

@constraint(m,  - b14 + b72 >= 0)

@constraint(m,  - b18 + b72 >= 0)

@constraint(m,  - b22 + b72 >= 0)

@constraint(m, b73 >= 0)

@constraint(m, b73 >= 0)

@constraint(m,  - b15 + b73 >= 0)

@constraint(m,  - b19 + b73 >= 0)

@constraint(m,  - b23 + b73 >= 0)

@constraint(m, b74 >= 0)

@constraint(m, b74 >= 0)

@constraint(m, b74 >= 0)

@constraint(m,  - b20 + b74 >= 0)

@constraint(m,  - b24 + b74 >= 0)

@constraint(m,  - b1 - b2 - b3 - b4 - b5 - b6 - b7 - b8 - b9 - b10 - b11 - b12 - b13 - b14 - b15 - b16 - b17 - b18 - b19
     - b20 - b21 - b22 - b23 - b24 - b25 + x75 == 0)

@constraint(m,  - b26 - b51 >= -1)

@constraint(m,  - b27 - b51 >= -1)

@constraint(m,  - b28 - b51 >= -1)

@constraint(m,  - b29 - b51 >= -1)

@constraint(m,  - b30 - b51 >= -1)

@constraint(m,  - b31 - b52 >= -1)

@constraint(m,  - b32 - b52 >= -1)

@constraint(m,  - b33 - b52 >= -1)

@constraint(m,  - b34 - b52 >= -1)

@constraint(m,  - b35 - b52 >= -1)

@constraint(m,  - b36 - b53 >= -1)

@constraint(m,  - b37 - b53 >= -1)

@constraint(m,  - b38 - b53 >= -1)

@constraint(m,  - b39 - b53 >= -1)

@constraint(m,  - b40 - b53 >= -1)

@constraint(m,  - b41 - b54 >= -1)

@constraint(m,  - b42 - b54 >= -1)

@constraint(m,  - b43 - b54 >= -1)

@constraint(m,  - b44 - b54 >= -1)

@constraint(m,  - b45 - b54 >= -1)

@constraint(m,  - b46 - b55 >= -1)

@constraint(m,  - b47 - b55 >= -1)

@constraint(m,  - b48 - b55 >= -1)

@constraint(m,  - b49 - b55 >= -1)

@constraint(m,  - b50 - b55 >= -1)

@constraint(m,  - b26 - b56 >= -1)

@constraint(m,  - b31 - b56 >= -1)

@constraint(m,  - b36 - b56 >= -1)

@constraint(m,  - b41 - b56 >= -1)

@constraint(m,  - b46 - b56 >= -1)

@constraint(m,  - b27 - b57 >= -1)

@constraint(m,  - b32 - b57 >= -1)

@constraint(m,  - b37 - b57 >= -1)

@constraint(m,  - b42 - b57 >= -1)

@constraint(m,  - b47 - b57 >= -1)

@constraint(m,  - b28 - b58 >= -1)

@constraint(m,  - b33 - b58 >= -1)

@constraint(m,  - b38 - b58 >= -1)

@constraint(m,  - b43 - b58 >= -1)

@constraint(m,  - b48 - b58 >= -1)

@constraint(m,  - b29 - b59 >= -1)

@constraint(m,  - b34 - b59 >= -1)

@constraint(m,  - b39 - b59 >= -1)

@constraint(m,  - b44 - b59 >= -1)

@constraint(m,  - b49 - b59 >= -1)

@constraint(m,  - b30 - b60 >= -1)

@constraint(m,  - b35 - b60 >= -1)

@constraint(m,  - b40 - b60 >= -1)

@constraint(m,  - b45 - b60 >= -1)

@constraint(m,  - b50 - b60 >= -1)

@constraint(m,  - b61 >= -1)

@constraint(m,  - b61 >= -1)

@constraint(m,  - b61 >= -1)

@constraint(m,  - b41 - b61 >= -1)

@constraint(m,  - b47 - b61 >= -1)

@constraint(m,  - b62 >= -1)

@constraint(m,  - b62 >= -1)

@constraint(m,  - b36 - b62 >= -1)

@constraint(m,  - b42 - b62 >= -1)

@constraint(m,  - b48 - b62 >= -1)

@constraint(m,  - b63 >= -1)

@constraint(m,  - b31 - b63 >= -1)

@constraint(m,  - b37 - b63 >= -1)

@constraint(m,  - b43 - b63 >= -1)

@constraint(m,  - b49 - b63 >= -1)

@constraint(m,  - b26 - b64 >= -1)

@constraint(m,  - b32 - b64 >= -1)

@constraint(m,  - b38 - b64 >= -1)

@constraint(m,  - b44 - b64 >= -1)

@constraint(m,  - b50 - b64 >= -1)

@constraint(m,  - b27 - b65 >= -1)

@constraint(m,  - b33 - b65 >= -1)

@constraint(m,  - b39 - b65 >= -1)

@constraint(m,  - b45 - b65 >= -1)

@constraint(m,  - b65 >= -1)

@constraint(m,  - b28 - b66 >= -1)

@constraint(m,  - b34 - b66 >= -1)

@constraint(m,  - b40 - b66 >= -1)

@constraint(m,  - b66 >= -1)

@constraint(m,  - b66 >= -1)

@constraint(m,  - b29 - b67 >= -1)

@constraint(m,  - b35 - b67 >= -1)

@constraint(m,  - b67 >= -1)

@constraint(m,  - b67 >= -1)

@constraint(m,  - b67 >= -1)

@constraint(m,  - b27 - b68 >= -1)

@constraint(m,  - b31 - b68 >= -1)

@constraint(m,  - b68 >= -1)

@constraint(m,  - b68 >= -1)

@constraint(m,  - b68 >= -1)

@constraint(m,  - b28 - b69 >= -1)

@constraint(m,  - b32 - b69 >= -1)

@constraint(m,  - b36 - b69 >= -1)

@constraint(m,  - b69 >= -1)

@constraint(m,  - b69 >= -1)

@constraint(m,  - b29 - b70 >= -1)

@constraint(m,  - b33 - b70 >= -1)

@constraint(m,  - b37 - b70 >= -1)

@constraint(m,  - b41 - b70 >= -1)

@constraint(m,  - b70 >= -1)

@constraint(m,  - b30 - b71 >= -1)

@constraint(m,  - b34 - b71 >= -1)

@constraint(m,  - b38 - b71 >= -1)

@constraint(m,  - b42 - b71 >= -1)

@constraint(m,  - b46 - b71 >= -1)

@constraint(m,  - b72 >= -1)

@constraint(m,  - b35 - b72 >= -1)

@constraint(m,  - b39 - b72 >= -1)

@constraint(m,  - b43 - b72 >= -1)

@constraint(m,  - b47 - b72 >= -1)

@constraint(m,  - b73 >= -1)

@constraint(m,  - b73 >= -1)

@constraint(m,  - b40 - b73 >= -1)

@constraint(m,  - b44 - b73 >= -1)

@constraint(m,  - b48 - b73 >= -1)

@constraint(m,  - b74 >= -1)

@constraint(m,  - b74 >= -1)

@constraint(m,  - b74 >= -1)

@constraint(m,  - b45 - b74 >= -1)

@constraint(m,  - b49 - b74 >= -1)

@constraint(m,  - b26 - b27 - b28 - b29 - b30 - b31 - b32 - b33 - b34 - b35 - b36 - b37 - b38 - b39 - b40 - b41 - b42
     - b43 - b44 - b45 - b46 - b47 - b48 - b49 - b50 + x75 == 0)
