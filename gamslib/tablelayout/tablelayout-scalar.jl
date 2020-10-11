#  MIP written by GAMS Convert at 10/11/20 14:06:03
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57       31       25        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         59       31       28        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        277      277        0        0
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
@variable(m, x29, start=0)
@variable(m, x30, start=0)
@variable(m, x31, start=0)
@variable(m, x32, start=0)
@variable(m, x33, start=0)
@variable(m, x34, start=0)
@variable(m, x35, start=0)
@variable(m, x36, start=0)
@variable(m, x37, start=0)
@variable(m, x38, start=0)
@variable(m, x39, start=0)
@variable(m, x40, start=0)
@variable(m, x41, start=0)
@variable(m, x42, start=0)
@variable(m, x43, start=0)
@variable(m, x44, start=0)
@variable(m, x45, start=0)
@variable(m, x46, start=0)
@variable(m, x47, start=0)
@variable(m, x48, start=0)
@variable(m, x49, start=0)
@variable(m, x50, start=0)
@variable(m, x51, start=0)
@variable(m, x52, start=0)
@variable(m, x53, start=0)
@variable(m, x54, start=0)
@variable(m, x55, start=0)
@variable(m, x56, start=0)
@variable(m, x57, start=0)
@variable(m, x58, start=0)

@objective(m, Min, 10*b1 + 30*b2 + 40*b3 + 50*b4 + 20*b5 + 60*b6 + 10*b7 + 30*b8 + 40*b9 + 50*b10 + 20*b11 + 60*b12
     + 10*b13 + 30*b14 + 40*b15 + 50*b16 + 20*b17 + 60*b18 + 10*b19 + 30*b20 + 40*b21 + 50*b22 + 20*b23 + 10*b24
     + 30*b25 + 40*b26 + 50*b27 + 20*b28)

@constraint(m, b1 + b2 + b3 + b4 + b5 + b6 == 1)

@constraint(m, b7 + b8 + b9 + b10 + b11 + b12 == 1)

@constraint(m, b13 + b14 + b15 + b16 + b17 + b18 == 1)

@constraint(m, b19 + b20 + b21 + b22 + b23 == 1)

@constraint(m, b24 + b25 + b26 + b27 + b28 == 1)

@constraint(m,  - 172*b1 - 65*b2 - 53*b3 - 43*b4 - 92*b5 - 43*b6 + x29 == 0)

@constraint(m,  - 43*b1 - 32*b2 - 32*b3 - 32*b4 - 32*b5 - 32*b6 + x30 == 0)

@constraint(m,  - 13*b1 - 13*b2 - 13*b3 - 13*b4 - 13*b5 - 13*b6 + x31 == 0)

@constraint(m,  - 132*b1 - 62*b2 - 62*b3 - 62*b4 - 90*b5 - 62*b6 + x32 == 0)

@constraint(m,  - 182*b1 - 79*b2 - 73*b3 - 42*b4 - 98*b5 - 42*b6 + x33 == 0)

@constraint(m,  - 103*b7 - 47*b8 - 47*b9 - 47*b10 - 53*b11 - 47*b12 + x34 == 0)

@constraint(m,  - 36*b7 - 36*b8 - 36*b9 - 36*b10 - 36*b11 - 36*b12 + x35 == 0)

@constraint(m,  - 127*b7 - 52*b8 - 52*b9 - 52*b10 - 66*b11 - 52*b12 + x36 == 0)

@constraint(m,  - 30*b7 - 30*b8 - 30*b9 - 30*b10 - 30*b11 - 30*b12 + x37 == 0)

@constraint(m,  - 85*b7 - 43*b8 - 43*b9 - 43*b10 - 62*b11 - 43*b12 + x38 == 0)

@constraint(m,  - 155*b13 - 64*b14 - 52*b15 - 49*b16 - 88*b17 - 49*b18 + x39 == 0)

@constraint(m,  - 93*b13 - 40*b14 - 33*b15 - 33*b16 - 50*b17 - 33*b18 + x40 == 0)

@constraint(m,  - 76*b13 - 44*b14 - 44*b15 - 44*b16 - 50*b17 - 44*b18 + x41 == 0)

@constraint(m,  - 126*b13 - 56*b14 - 54*b15 - 54*b16 - 67*b17 - 54*b18 + x42 == 0)

@constraint(m,  - 131*b13 - 50*b14 - 37*b15 - 37*b16 - 70*b17 - 37*b18 + x43 == 0)

@constraint(m,  - 88*b19 - 35*b20 - 33*b21 - 24*b22 - 44*b23 + x44 == 0)

@constraint(m,  - 10*b19 - 10*b20 - 10*b21 - 10*b22 - 10*b23 + x45 == 0)

@constraint(m,  - 48*b19 - 32*b20 - 32*b21 - 32*b22 - 32*b23 + x46 == 0)

@constraint(m,  - 70*b19 - 42*b20 - 42*b21 - 42*b22 - 53*b23 + x47 == 0)

@constraint(m,  - 104*b19 - 50*b20 - 38*b21 - 38*b22 - 50*b23 + x48 == 0)

@constraint(m,  - 103*b24 - 43*b25 - 43*b26 - 43*b27 - 58*b28 + x49 == 0)

@constraint(m,  - 80*b24 - 46*b25 - 46*b26 - 46*b27 - 46*b28 + x50 == 0)

@constraint(m,  - 10*b24 - 10*b25 - 10*b26 - 10*b27 - 10*b28 + x51 == 0)

@constraint(m,  - 141*b24 - 54*b25 - 54*b26 - 54*b27 - 104*b28 + x52 == 0)

@constraint(m,  - 179*b24 - 85*b25 - 85*b26 - 85*b27 - 98*b28 + x53 == 0)

@constraint(m,  - x29 + x54 >= 0)

@constraint(m,  - x30 + x55 >= 0)

@constraint(m,  - x31 + x56 >= 0)

@constraint(m,  - x32 + x57 >= 0)

@constraint(m,  - x33 + x58 >= 0)

@constraint(m,  - x34 + x54 >= 0)

@constraint(m,  - x35 + x55 >= 0)

@constraint(m,  - x36 + x56 >= 0)

@constraint(m,  - x37 + x57 >= 0)

@constraint(m,  - x38 + x58 >= 0)

@constraint(m,  - x39 + x54 >= 0)

@constraint(m,  - x40 + x55 >= 0)

@constraint(m,  - x41 + x56 >= 0)

@constraint(m,  - x42 + x57 >= 0)

@constraint(m,  - x43 + x58 >= 0)

@constraint(m,  - x44 + x54 >= 0)

@constraint(m,  - x45 + x55 >= 0)

@constraint(m,  - x46 + x56 >= 0)

@constraint(m,  - x47 + x57 >= 0)

@constraint(m,  - x48 + x58 >= 0)

@constraint(m,  - x49 + x54 >= 0)

@constraint(m,  - x50 + x55 >= 0)

@constraint(m,  - x51 + x56 >= 0)

@constraint(m,  - x52 + x57 >= 0)

@constraint(m,  - x53 + x58 >= 0)

@constraint(m, x54 + x55 + x56 + x57 + x58 <= 345)