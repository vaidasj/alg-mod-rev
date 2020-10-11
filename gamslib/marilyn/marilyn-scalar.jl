#  MIP written by GAMS Convert at 10/11/20 12:40:15
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        127       59       34       34        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        107        1       98        8        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        481      481        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= i1 <= 8, integer=true, start=1)
@variable(m, 1 <= i2 <= 8, integer=true, start=1)
@variable(m, 1 <= i3 <= 8, integer=true, start=1)
@variable(m, 1 <= i4 <= 8, integer=true, start=1)
@variable(m, 1 <= i5 <= 8, integer=true, start=1)
@variable(m, 1 <= i6 <= 8, integer=true, start=1)
@variable(m, 1 <= i7 <= 8, integer=true, start=1)
@variable(m, 1 <= i8 <= 8, integer=true, start=1)
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
@variable(m, 0 <= b102 <= 1, binary=true, start=0)
@variable(m, 0 <= b103 <= 1, binary=true, start=0)
@variable(m, 0 <= b104 <= 1, binary=true, start=0)
@variable(m, 0 <= b105 <= 1, binary=true, start=0)
@variable(m, 0 <= b106 <= 1, binary=true, start=0)

@objective(m, Min, i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8)

@constraint(m,  - i1 + i2 - 9*b9 <= -2)

@constraint(m,  - i1 + i3 - 9*b10 <= -2)

@constraint(m,  - i1 + i4 - 9*b11 <= -2)

@constraint(m, i1 - i2 - 9*b12 <= -2)

@constraint(m,  - i2 + i3 - 9*b13 <= -2)

@constraint(m,  - i2 + i5 - 9*b14 <= -2)

@constraint(m,  - i2 + i6 - 9*b15 <= -2)

@constraint(m, i1 - i3 - 9*b16 <= -2)

@constraint(m, i2 - i3 - 9*b17 <= -2)

@constraint(m,  - i3 + i4 - 9*b18 <= -2)

@constraint(m,  - i3 + i5 - 9*b19 <= -2)

@constraint(m,  - i3 + i6 - 9*b20 <= -2)

@constraint(m,  - i3 + i7 - 9*b21 <= -2)

@constraint(m, i1 - i4 - 9*b22 <= -2)

@constraint(m, i3 - i4 - 9*b23 <= -2)

@constraint(m,  - i4 + i6 - 9*b24 <= -2)

@constraint(m,  - i4 + i7 - 9*b25 <= -2)

@constraint(m, i2 - i5 - 9*b26 <= -2)

@constraint(m, i3 - i5 - 9*b27 <= -2)

@constraint(m,  - i5 + i6 - 9*b28 <= -2)

@constraint(m,  - i5 + i8 - 9*b29 <= -2)

@constraint(m, i2 - i6 - 9*b30 <= -2)

@constraint(m, i3 - i6 - 9*b31 <= -2)

@constraint(m, i4 - i6 - 9*b32 <= -2)

@constraint(m, i5 - i6 - 9*b33 <= -2)

@constraint(m,  - i6 + i7 - 9*b34 <= -2)

@constraint(m,  - i6 + i8 - 9*b35 <= -2)

@constraint(m, i3 - i7 - 9*b36 <= -2)

@constraint(m, i4 - i7 - 9*b37 <= -2)

@constraint(m, i6 - i7 - 9*b38 <= -2)

@constraint(m,  - i7 + i8 - 9*b39 <= -2)

@constraint(m, i5 - i8 - 9*b40 <= -2)

@constraint(m, i6 - i8 - 9*b41 <= -2)

@constraint(m, i7 - i8 - 9*b42 <= -2)

@constraint(m,  - i1 + i2 + 9*b12 >= 2)

@constraint(m,  - i1 + i3 + 9*b16 >= 2)

@constraint(m,  - i1 + i4 + 9*b22 >= 2)

@constraint(m, i1 - i2 + 9*b9 >= 2)

@constraint(m,  - i2 + i3 + 9*b17 >= 2)

@constraint(m,  - i2 + i5 + 9*b26 >= 2)

@constraint(m,  - i2 + i6 + 9*b30 >= 2)

@constraint(m, i1 - i3 + 9*b10 >= 2)

@constraint(m, i2 - i3 + 9*b13 >= 2)

@constraint(m,  - i3 + i4 + 9*b23 >= 2)

@constraint(m,  - i3 + i5 + 9*b27 >= 2)

@constraint(m,  - i3 + i6 + 9*b31 >= 2)

@constraint(m,  - i3 + i7 + 9*b36 >= 2)

@constraint(m, i1 - i4 + 9*b11 >= 2)

@constraint(m, i3 - i4 + 9*b18 >= 2)

@constraint(m,  - i4 + i6 + 9*b32 >= 2)

@constraint(m,  - i4 + i7 + 9*b37 >= 2)

@constraint(m, i2 - i5 + 9*b14 >= 2)

@constraint(m, i3 - i5 + 9*b19 >= 2)

@constraint(m,  - i5 + i6 + 9*b33 >= 2)

@constraint(m,  - i5 + i8 + 9*b40 >= 2)

@constraint(m, i2 - i6 + 9*b15 >= 2)

@constraint(m, i3 - i6 + 9*b20 >= 2)

@constraint(m, i4 - i6 + 9*b24 >= 2)

@constraint(m, i5 - i6 + 9*b28 >= 2)

@constraint(m,  - i6 + i7 + 9*b38 >= 2)

@constraint(m,  - i6 + i8 + 9*b41 >= 2)

@constraint(m, i3 - i7 + 9*b21 >= 2)

@constraint(m, i4 - i7 + 9*b25 >= 2)

@constraint(m, i6 - i7 + 9*b34 >= 2)

@constraint(m,  - i7 + i8 + 9*b42 >= 2)

@constraint(m, i5 - i8 + 9*b29 >= 2)

@constraint(m, i6 - i8 + 9*b35 >= 2)

@constraint(m, i7 - i8 + 9*b39 >= 2)

@constraint(m, b9 + b12 == 1)

@constraint(m, b10 + b16 == 1)

@constraint(m, b11 + b22 == 1)

@constraint(m, b9 + b12 == 1)

@constraint(m, b13 + b17 == 1)

@constraint(m, b14 + b26 == 1)

@constraint(m, b15 + b30 == 1)

@constraint(m, b10 + b16 == 1)

@constraint(m, b13 + b17 == 1)

@constraint(m, b18 + b23 == 1)

@constraint(m, b19 + b27 == 1)

@constraint(m, b20 + b31 == 1)

@constraint(m, b21 + b36 == 1)

@constraint(m, b11 + b22 == 1)

@constraint(m, b18 + b23 == 1)

@constraint(m, b24 + b32 == 1)

@constraint(m, b25 + b37 == 1)

@constraint(m, b14 + b26 == 1)

@constraint(m, b19 + b27 == 1)

@constraint(m, b28 + b33 == 1)

@constraint(m, b29 + b40 == 1)

@constraint(m, b15 + b30 == 1)

@constraint(m, b20 + b31 == 1)

@constraint(m, b24 + b32 == 1)

@constraint(m, b28 + b33 == 1)

@constraint(m, b34 + b38 == 1)

@constraint(m, b35 + b41 == 1)

@constraint(m, b21 + b36 == 1)

@constraint(m, b25 + b37 == 1)

@constraint(m, b34 + b38 == 1)

@constraint(m, b39 + b42 == 1)

@constraint(m, b29 + b40 == 1)

@constraint(m, b35 + b41 == 1)

@constraint(m, b39 + b42 == 1)

@constraint(m, i1 - b43 - 2*b44 - 3*b45 - 4*b46 - 5*b47 - 6*b48 - 7*b49 - 8*b50 == 0)

@constraint(m, i2 - b51 - 2*b52 - 3*b53 - 4*b54 - 5*b55 - 6*b56 - 7*b57 - 8*b58 == 0)

@constraint(m, i3 - b59 - 2*b60 - 3*b61 - 4*b62 - 5*b63 - 6*b64 - 7*b65 - 8*b66 == 0)

@constraint(m, i4 - b67 - 2*b68 - 3*b69 - 4*b70 - 5*b71 - 6*b72 - 7*b73 - 8*b74 == 0)

@constraint(m, i5 - b75 - 2*b76 - 3*b77 - 4*b78 - 5*b79 - 6*b80 - 7*b81 - 8*b82 == 0)

@constraint(m, i6 - b83 - 2*b84 - 3*b85 - 4*b86 - 5*b87 - 6*b88 - 7*b89 - 8*b90 == 0)

@constraint(m, i7 - b91 - 2*b92 - 3*b93 - 4*b94 - 5*b95 - 6*b96 - 7*b97 - 8*b98 == 0)

@constraint(m, i8 - b99 - 2*b100 - 3*b101 - 4*b102 - 5*b103 - 6*b104 - 7*b105 - 8*b106 == 0)

@constraint(m, b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 == 1)

@constraint(m, b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 == 1)

@constraint(m, b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 == 1)

@constraint(m, b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 == 1)

@constraint(m, b75 + b76 + b77 + b78 + b79 + b80 + b81 + b82 == 1)

@constraint(m, b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 == 1)

@constraint(m, b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 == 1)

@constraint(m, b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106 == 1)

@constraint(m, b43 + b51 + b59 + b67 + b75 + b83 + b91 + b99 == 1)

@constraint(m, b44 + b52 + b60 + b68 + b76 + b84 + b92 + b100 == 1)

@constraint(m, b45 + b53 + b61 + b69 + b77 + b85 + b93 + b101 == 1)

@constraint(m, b46 + b54 + b62 + b70 + b78 + b86 + b94 + b102 == 1)

@constraint(m, b47 + b55 + b63 + b71 + b79 + b87 + b95 + b103 == 1)

@constraint(m, b48 + b56 + b64 + b72 + b80 + b88 + b96 + b104 == 1)

@constraint(m, b49 + b57 + b65 + b73 + b81 + b89 + b97 + b105 == 1)

@constraint(m, b50 + b58 + b66 + b74 + b82 + b90 + b98 + b106 == 1)
