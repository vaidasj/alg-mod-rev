#  MIP written by GAMS Convert at 10/11/20 12:24:31
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         43       17        0       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         65        1       64        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        317      317        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


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

@objective(m, Max, b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 + b17 + b18
     + b19 + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36 + b37
     + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56
     + b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64)

@constraint(m, b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 == 1)

@constraint(m, b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 == 1)

@constraint(m, b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 == 1)

@constraint(m, b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 == 1)

@constraint(m, b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 == 1)

@constraint(m, b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 == 1)

@constraint(m, b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 == 1)

@constraint(m, b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 == 1)

@constraint(m, b1 + b9 + b17 + b25 + b33 + b41 + b49 + b57 == 1)

@constraint(m, b2 + b10 + b18 + b26 + b34 + b42 + b50 + b58 == 1)

@constraint(m, b3 + b11 + b19 + b27 + b35 + b43 + b51 + b59 == 1)

@constraint(m, b4 + b12 + b20 + b28 + b36 + b44 + b52 + b60 == 1)

@constraint(m, b5 + b13 + b21 + b29 + b37 + b45 + b53 + b61 == 1)

@constraint(m, b6 + b14 + b22 + b30 + b38 + b46 + b54 + b62 == 1)

@constraint(m, b7 + b15 + b23 + b31 + b39 + b47 + b55 + b63 == 1)

@constraint(m, b8 + b16 + b24 + b32 + b40 + b48 + b56 + b64 == 1)

@constraint(m, b49 + b58 <= 1)

@constraint(m, b41 + b50 + b59 <= 1)

@constraint(m, b33 + b42 + b51 + b60 <= 1)

@constraint(m, b25 + b34 + b43 + b52 + b61 <= 1)

@constraint(m, b17 + b26 + b35 + b44 + b53 + b62 <= 1)

@constraint(m, b9 + b18 + b27 + b36 + b45 + b54 + b63 <= 1)

@constraint(m, b1 + b10 + b19 + b28 + b37 + b46 + b55 + b64 <= 1)

@constraint(m, b2 + b11 + b20 + b29 + b38 + b47 + b56 <= 1)

@constraint(m, b3 + b12 + b21 + b30 + b39 + b48 <= 1)

@constraint(m, b4 + b13 + b22 + b31 + b40 <= 1)

@constraint(m, b5 + b14 + b23 + b32 <= 1)

@constraint(m, b6 + b15 + b24 <= 1)

@constraint(m, b7 + b16 <= 1)

@constraint(m, b2 + b9 <= 1)

@constraint(m, b3 + b10 + b17 <= 1)

@constraint(m, b4 + b11 + b18 + b25 <= 1)

@constraint(m, b5 + b12 + b19 + b26 + b33 <= 1)

@constraint(m, b6 + b13 + b20 + b27 + b34 + b41 <= 1)

@constraint(m, b7 + b14 + b21 + b28 + b35 + b42 + b49 <= 1)

@constraint(m, b8 + b15 + b22 + b29 + b36 + b43 + b50 + b57 <= 1)

@constraint(m, b16 + b23 + b30 + b37 + b44 + b51 + b58 <= 1)

@constraint(m, b24 + b31 + b38 + b45 + b52 + b59 <= 1)

@constraint(m, b32 + b39 + b46 + b53 + b60 <= 1)

@constraint(m, b40 + b47 + b54 + b61 <= 1)

@constraint(m, b48 + b55 + b62 <= 1)

@constraint(m, b56 + b63 <= 1)
