#  MIP written by GAMS Convert at 10/11/20 12:32:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        102       21        0       81        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        110       10      100        0        0        0        0        0
#  FX     10        0       10        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        508      508        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= b1 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b12 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b23 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b34 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b45 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b56 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b67 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b78 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b89 <= 0, binary=true, start=0)
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
@variable(m, 0 <= b100 <= 0, binary=true, start=0)
@variable(m, x102, start=0)
@variable(m, x103, start=0)
@variable(m, x104, start=0)
@variable(m, x105, start=0)
@variable(m, x106, start=0)
@variable(m, x107, start=0)
@variable(m, x108, start=0)
@variable(m, x109, start=0)
@variable(m, x110, start=0)

@objective(m, Min, 3*b2 + 5*b3 + 48*b4 + 48*b5 + 8*b6 + 8*b7 + 5*b8 + 5*b9 + 3*b10 + 3*b11 + 3*b13 + 48*b14 + 48*b15
     + 8*b16 + 8*b17 + 5*b18 + 5*b19 + 5*b21 + 3*b22 + 72*b24 + 72*b25 + 48*b26 + 48*b27 + 24*b28 + 24*b29 + 3*b30
     + 48*b31 + 48*b32 + 74*b33 + 6*b36 + 6*b37 + 12*b38 + 12*b39 + 48*b40 + 48*b41 + 48*b42 + 74*b43 + 6*b46 + 6*b47
     + 12*b48 + 12*b49 + 48*b50 + 8*b51 + 8*b52 + 50*b53 + 6*b54 + 6*b55 + 8*b58 + 8*b59 + 8*b60 + 8*b61 + 8*b62
     + 50*b63 + 6*b64 + 6*b65 + 8*b68 + 8*b69 + 8*b70 + 5*b71 + 5*b72 + 26*b73 + 12*b74 + 12*b75 + 8*b76 + 8*b77 + 5*b80
     + 5*b81 + 5*b82 + 26*b83 + 12*b84 + 12*b85 + 8*b86 + 8*b87 + 5*b90 + 3*b91 + 3*b93 + 48*b94 + 48*b95 + 8*b96
     + 8*b97 + 5*b98 + 5*b99)

@constraint(m, b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 == 1)

@constraint(m, b11 + b12 + b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 == 1)

@constraint(m, b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 == 1)

@constraint(m, b31 + b32 + b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 == 1)

@constraint(m, b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 == 1)

@constraint(m, b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 == 1)

@constraint(m, b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 == 1)

@constraint(m, b71 + b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 == 1)

@constraint(m, b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 == 1)

@constraint(m, b91 + b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 == 1)

@constraint(m, b1 + b11 + b21 + b31 + b41 + b51 + b61 + b71 + b81 + b91 == 1)

@constraint(m, b2 + b12 + b22 + b32 + b42 + b52 + b62 + b72 + b82 + b92 == 1)

@constraint(m, b3 + b13 + b23 + b33 + b43 + b53 + b63 + b73 + b83 + b93 == 1)

@constraint(m, b4 + b14 + b24 + b34 + b44 + b54 + b64 + b74 + b84 + b94 == 1)

@constraint(m, b5 + b15 + b25 + b35 + b45 + b55 + b65 + b75 + b85 + b95 == 1)

@constraint(m, b6 + b16 + b26 + b36 + b46 + b56 + b66 + b76 + b86 + b96 == 1)

@constraint(m, b7 + b17 + b27 + b37 + b47 + b57 + b67 + b77 + b87 + b97 == 1)

@constraint(m, b8 + b18 + b28 + b38 + b48 + b58 + b68 + b78 + b88 + b98 == 1)

@constraint(m, b9 + b19 + b29 + b39 + b49 + b59 + b69 + b79 + b89 + b99 == 1)

@constraint(m, b10 + b20 + b30 + b40 + b50 + b60 + b70 + b80 + b90 + b100 == 1)

@constraint(m, 10*b12 <= 9)

@constraint(m, 10*b13 + x102 - x103 <= 9)

@constraint(m, 10*b14 + x102 - x104 <= 9)

@constraint(m, 10*b15 + x102 - x105 <= 9)

@constraint(m, 10*b16 + x102 - x106 <= 9)

@constraint(m, 10*b17 + x102 - x107 <= 9)

@constraint(m, 10*b18 + x102 - x108 <= 9)

@constraint(m, 10*b19 + x102 - x109 <= 9)

@constraint(m, 10*b20 + x102 - x110 <= 9)

@constraint(m, 10*b22 - x102 + x103 <= 9)

@constraint(m, 10*b23 <= 9)

@constraint(m, 10*b24 + x103 - x104 <= 9)

@constraint(m, 10*b25 + x103 - x105 <= 9)

@constraint(m, 10*b26 + x103 - x106 <= 9)

@constraint(m, 10*b27 + x103 - x107 <= 9)

@constraint(m, 10*b28 + x103 - x108 <= 9)

@constraint(m, 10*b29 + x103 - x109 <= 9)

@constraint(m, 10*b30 + x103 - x110 <= 9)

@constraint(m, 10*b32 - x102 + x104 <= 9)

@constraint(m, 10*b33 - x103 + x104 <= 9)

@constraint(m, 10*b34 <= 9)

@constraint(m, 10*b35 + x104 - x105 <= 9)

@constraint(m, 10*b36 + x104 - x106 <= 9)

@constraint(m, 10*b37 + x104 - x107 <= 9)

@constraint(m, 10*b38 + x104 - x108 <= 9)

@constraint(m, 10*b39 + x104 - x109 <= 9)

@constraint(m, 10*b40 + x104 - x110 <= 9)

@constraint(m, 10*b42 - x102 + x105 <= 9)

@constraint(m, 10*b43 - x103 + x105 <= 9)

@constraint(m, 10*b44 - x104 + x105 <= 9)

@constraint(m, 10*b45 <= 9)

@constraint(m, 10*b46 + x105 - x106 <= 9)

@constraint(m, 10*b47 + x105 - x107 <= 9)

@constraint(m, 10*b48 + x105 - x108 <= 9)

@constraint(m, 10*b49 + x105 - x109 <= 9)

@constraint(m, 10*b50 + x105 - x110 <= 9)

@constraint(m, 10*b52 - x102 + x106 <= 9)

@constraint(m, 10*b53 - x103 + x106 <= 9)

@constraint(m, 10*b54 - x104 + x106 <= 9)

@constraint(m, 10*b55 - x105 + x106 <= 9)

@constraint(m, 10*b56 <= 9)

@constraint(m, 10*b57 + x106 - x107 <= 9)

@constraint(m, 10*b58 + x106 - x108 <= 9)

@constraint(m, 10*b59 + x106 - x109 <= 9)

@constraint(m, 10*b60 + x106 - x110 <= 9)

@constraint(m, 10*b62 - x102 + x107 <= 9)

@constraint(m, 10*b63 - x103 + x107 <= 9)

@constraint(m, 10*b64 - x104 + x107 <= 9)

@constraint(m, 10*b65 - x105 + x107 <= 9)

@constraint(m, 10*b66 - x106 + x107 <= 9)

@constraint(m, 10*b67 <= 9)

@constraint(m, 10*b68 + x107 - x108 <= 9)

@constraint(m, 10*b69 + x107 - x109 <= 9)

@constraint(m, 10*b70 + x107 - x110 <= 9)

@constraint(m, 10*b72 - x102 + x108 <= 9)

@constraint(m, 10*b73 - x103 + x108 <= 9)

@constraint(m, 10*b74 - x104 + x108 <= 9)

@constraint(m, 10*b75 - x105 + x108 <= 9)

@constraint(m, 10*b76 - x106 + x108 <= 9)

@constraint(m, 10*b77 - x107 + x108 <= 9)

@constraint(m, 10*b78 <= 9)

@constraint(m, 10*b79 + x108 - x109 <= 9)

@constraint(m, 10*b80 + x108 - x110 <= 9)

@constraint(m, 10*b82 - x102 + x109 <= 9)

@constraint(m, 10*b83 - x103 + x109 <= 9)

@constraint(m, 10*b84 - x104 + x109 <= 9)

@constraint(m, 10*b85 - x105 + x109 <= 9)

@constraint(m, 10*b86 - x106 + x109 <= 9)

@constraint(m, 10*b87 - x107 + x109 <= 9)

@constraint(m, 10*b88 - x108 + x109 <= 9)

@constraint(m, 10*b89 <= 9)

@constraint(m, 10*b90 + x109 - x110 <= 9)

@constraint(m, 10*b92 - x102 + x110 <= 9)

@constraint(m, 10*b93 - x103 + x110 <= 9)

@constraint(m, 10*b94 - x104 + x110 <= 9)

@constraint(m, 10*b95 - x105 + x110 <= 9)

@constraint(m, 10*b96 - x106 + x110 <= 9)

@constraint(m, 10*b97 - x107 + x110 <= 9)

@constraint(m, 10*b98 - x108 + x110 <= 9)

@constraint(m, 10*b99 - x109 + x110 <= 9)

@constraint(m, 10*b100 <= 9)
