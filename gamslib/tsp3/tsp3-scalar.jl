#  MIP written by GAMS Convert at 10/11/20 12:32:55
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         75       13       62        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         37        1       36        0        0        0        0        0
#  FX      6        0        6        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        581      581        0        0
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
@variable(m, 0 <= b8 <= 0, binary=true, start=0)
@variable(m, 0 <= b9 <= 1, binary=true, start=0)
@variable(m, 0 <= b10 <= 1, binary=true, start=0)
@variable(m, 0 <= b11 <= 1, binary=true, start=0)
@variable(m, 0 <= b12 <= 1, binary=true, start=0)
@variable(m, 0 <= b13 <= 1, binary=true, start=0)
@variable(m, 0 <= b14 <= 1, binary=true, start=0)
@variable(m, 0 <= b15 <= 0, binary=true, start=0)
@variable(m, 0 <= b16 <= 1, binary=true, start=0)
@variable(m, 0 <= b17 <= 1, binary=true, start=0)
@variable(m, 0 <= b18 <= 1, binary=true, start=0)
@variable(m, 0 <= b19 <= 1, binary=true, start=0)
@variable(m, 0 <= b20 <= 1, binary=true, start=0)
@variable(m, 0 <= b21 <= 1, binary=true, start=0)
@variable(m, 0 <= b22 <= 0, binary=true, start=0)
@variable(m, 0 <= b23 <= 1, binary=true, start=0)
@variable(m, 0 <= b24 <= 1, binary=true, start=0)
@variable(m, 0 <= b25 <= 1, binary=true, start=0)
@variable(m, 0 <= b26 <= 1, binary=true, start=0)
@variable(m, 0 <= b27 <= 1, binary=true, start=0)
@variable(m, 0 <= b28 <= 1, binary=true, start=0)
@variable(m, 0 <= b29 <= 0, binary=true, start=0)
@variable(m, 0 <= b30 <= 1, binary=true, start=0)
@variable(m, 0 <= b31 <= 1, binary=true, start=0)
@variable(m, 0 <= b32 <= 1, binary=true, start=0)
@variable(m, 0 <= b33 <= 1, binary=true, start=0)
@variable(m, 0 <= b34 <= 1, binary=true, start=0)
@variable(m, 0 <= b35 <= 1, binary=true, start=0)
@variable(m, 0 <= b36 <= 0, binary=true, start=0)

@objective(m, Min, 3*b2 + 5*b3 + 48*b4 + 48*b5 + 8*b6 + 3*b7 + 3*b9 + 48*b10 + 48*b11 + 8*b12 + 5*b13 + 3*b14 + 72*b16
     + 72*b17 + 48*b18 + 48*b19 + 48*b20 + 74*b21 + 6*b24 + 48*b25 + 48*b26 + 74*b27 + 6*b30 + 8*b31 + 8*b32 + 50*b33
     + 6*b34 + 6*b35)

@constraint(m, b1 + b2 + b3 + b4 + b5 + b6 == 1)

@constraint(m, b7 + b8 + b9 + b10 + b11 + b12 == 1)

@constraint(m, b13 + b14 + b15 + b16 + b17 + b18 == 1)

@constraint(m, b19 + b20 + b21 + b22 + b23 + b24 == 1)

@constraint(m, b25 + b26 + b27 + b28 + b29 + b30 == 1)

@constraint(m, b31 + b32 + b33 + b34 + b35 + b36 == 1)

@constraint(m, b1 + b7 + b13 + b19 + b25 + b31 == 1)

@constraint(m, b2 + b8 + b14 + b20 + b26 + b32 == 1)

@constraint(m, b3 + b9 + b15 + b21 + b27 + b33 == 1)

@constraint(m, b4 + b10 + b16 + b22 + b28 + b34 == 1)

@constraint(m, b5 + b11 + b17 + b23 + b29 + b35 == 1)

@constraint(m, b6 + b12 + b18 + b24 + b30 + b36 == 1)

@constraint(m, b2 + b3 + b4 + b5 + b6 >= 1)

@constraint(m, b3 + b4 + b5 + b6 + b9 + b10 + b11 + b12 >= 1)

@constraint(m, b7 + b9 + b10 + b11 + b12 >= 1)

@constraint(m, b2 + b4 + b5 + b6 + b14 + b16 + b17 + b18 >= 1)

@constraint(m, b13 + b14 + b16 + b17 + b18 >= 1)

@constraint(m, b4 + b5 + b6 + b10 + b11 + b12 + b16 + b17 + b18 >= 1)

@constraint(m, b7 + b10 + b11 + b12 + b13 + b16 + b17 + b18 >= 1)

@constraint(m, b2 + b3 + b5 + b6 + b20 + b21 + b23 + b24 >= 1)

@constraint(m, b19 + b20 + b21 + b23 + b24 >= 1)

@constraint(m, b3 + b5 + b6 + b9 + b11 + b12 + b21 + b23 + b24 >= 1)

@constraint(m, b7 + b9 + b11 + b12 + b19 + b21 + b23 + b24 >= 1)

@constraint(m, b2 + b5 + b6 + b14 + b17 + b18 + b20 + b23 + b24 >= 1)

@constraint(m, b13 + b14 + b17 + b18 + b19 + b20 + b23 + b24 >= 1)

@constraint(m, b5 + b6 + b11 + b12 + b17 + b18 + b23 + b24 >= 1)

@constraint(m, b7 + b11 + b12 + b13 + b17 + b18 + b19 + b23 + b24 >= 1)

@constraint(m, b2 + b3 + b4 + b6 + b26 + b27 + b28 + b30 >= 1)

@constraint(m, b25 + b26 + b27 + b28 + b30 >= 1)

@constraint(m, b3 + b4 + b6 + b9 + b10 + b12 + b27 + b28 + b30 >= 1)

@constraint(m, b7 + b9 + b10 + b12 + b25 + b27 + b28 + b30 >= 1)

@constraint(m, b2 + b4 + b6 + b14 + b16 + b18 + b26 + b28 + b30 >= 1)

@constraint(m, b13 + b14 + b16 + b18 + b25 + b26 + b28 + b30 >= 1)

@constraint(m, b4 + b6 + b10 + b12 + b16 + b18 + b28 + b30 >= 1)

@constraint(m, b7 + b10 + b12 + b13 + b16 + b18 + b25 + b28 + b30 >= 1)

@constraint(m, b2 + b3 + b6 + b20 + b21 + b24 + b26 + b27 + b30 >= 1)

@constraint(m, b19 + b20 + b21 + b24 + b25 + b26 + b27 + b30 >= 1)

@constraint(m, b3 + b6 + b9 + b12 + b21 + b24 + b27 + b30 >= 1)

@constraint(m, b7 + b9 + b12 + b19 + b21 + b24 + b25 + b27 + b30 >= 1)

@constraint(m, b2 + b6 + b14 + b18 + b20 + b24 + b26 + b30 >= 1)

@constraint(m, b13 + b14 + b18 + b19 + b20 + b24 + b25 + b26 + b30 >= 1)

@constraint(m, b6 + b12 + b18 + b24 + b30 >= 1)

@constraint(m, b7 + b12 + b13 + b18 + b19 + b24 + b25 + b30 >= 1)

@constraint(m, b2 + b3 + b4 + b5 + b32 + b33 + b34 + b35 >= 1)

@constraint(m, b31 + b32 + b33 + b34 + b35 >= 1)

@constraint(m, b3 + b4 + b5 + b9 + b10 + b11 + b33 + b34 + b35 >= 1)

@constraint(m, b7 + b9 + b10 + b11 + b31 + b33 + b34 + b35 >= 1)

@constraint(m, b2 + b4 + b5 + b14 + b16 + b17 + b32 + b34 + b35 >= 1)

@constraint(m, b13 + b14 + b16 + b17 + b31 + b32 + b34 + b35 >= 1)

@constraint(m, b4 + b5 + b10 + b11 + b16 + b17 + b34 + b35 >= 1)

@constraint(m, b7 + b10 + b11 + b13 + b16 + b17 + b31 + b34 + b35 >= 1)

@constraint(m, b2 + b3 + b5 + b20 + b21 + b23 + b32 + b33 + b35 >= 1)

@constraint(m, b19 + b20 + b21 + b23 + b31 + b32 + b33 + b35 >= 1)

@constraint(m, b3 + b5 + b9 + b11 + b21 + b23 + b33 + b35 >= 1)

@constraint(m, b7 + b9 + b11 + b19 + b21 + b23 + b31 + b33 + b35 >= 1)

@constraint(m, b2 + b5 + b14 + b17 + b20 + b23 + b32 + b35 >= 1)

@constraint(m, b13 + b14 + b17 + b19 + b20 + b23 + b31 + b32 + b35 >= 1)

@constraint(m, b5 + b11 + b17 + b23 + b35 >= 1)

@constraint(m, b7 + b11 + b13 + b17 + b19 + b23 + b31 + b35 >= 1)

@constraint(m, b2 + b3 + b4 + b26 + b27 + b28 + b32 + b33 + b34 >= 1)

@constraint(m, b25 + b26 + b27 + b28 + b31 + b32 + b33 + b34 >= 1)

@constraint(m, b3 + b4 + b9 + b10 + b27 + b28 + b33 + b34 >= 1)

@constraint(m, b7 + b9 + b10 + b25 + b27 + b28 + b31 + b33 + b34 >= 1)

@constraint(m, b2 + b4 + b14 + b16 + b26 + b28 + b32 + b34 >= 1)

@constraint(m, b13 + b14 + b16 + b25 + b26 + b28 + b31 + b32 + b34 >= 1)

@constraint(m, b4 + b10 + b16 + b28 + b34 >= 1)

@constraint(m, b7 + b10 + b13 + b16 + b25 + b28 + b31 + b34 >= 1)

@constraint(m, b2 + b3 + b20 + b21 + b26 + b27 + b32 + b33 >= 1)

@constraint(m, b19 + b20 + b21 + b25 + b26 + b27 + b31 + b32 + b33 >= 1)

@constraint(m, b3 + b9 + b21 + b27 + b33 >= 1)

@constraint(m, b7 + b9 + b19 + b21 + b25 + b27 + b31 + b33 >= 1)

@constraint(m, b2 + b14 + b20 + b26 + b32 >= 1)

@constraint(m, b13 + b14 + b19 + b20 + b25 + b26 + b31 + b32 >= 1)

@constraint(m, b7 + b13 + b19 + b25 + b31 >= 1)
