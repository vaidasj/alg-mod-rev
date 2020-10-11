#  MINLP written by GAMS Convert at 10/11/20 12:43:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23       13        3        7        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         77       14       63        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        174      166        8        0


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=0)
@variable(m, 0 <= x3, start=0)
@variable(m, 0.01 <= x4 <= 20, start=1)
@variable(m, 0.01 <= x5 <= 20, start=1)
@variable(m, 0.01 <= x6 <= 20, start=1)
@variable(m, 0 <= x7, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=100)
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
@variable(m, -300000 <= x77 <= 0, start=0)

@objective(m, Min, x77)

JuMP.add_NL_constraint(m, :($(x13)*$(x77) + 416000*(1 - exp(-0.1*$(x1)/$(x4)))*$(x4) + 37440*$(x1) - 100*$(x4) + 
    124615.384615385*(1 - exp(-0.13*$(x2)/$(x5)))*$(x5) + 9000*$(x2) - 90*$(x5) + 278666.666666667*(1 - exp(-0.09*$(x3)/
    $(x6)))*$(x6) + 15840*$(x3) - 80*$(x6) == 0))

@constraint(m,  - 1300*x1 + x7 + 350*x13 == 0)

@constraint(m,  - 1000*x2 + x8 + 300*x13 == 0)

@constraint(m,  - 1100*x3 + x9 + 300*x13 == 0)

@constraint(m, x7 - 300*x13 <= 0)

@constraint(m, x8 - 300*x13 <= 0)

@constraint(m, x9 - 300*x13 <= 0)

@constraint(m, x4 - 0.01*b14 - b15 - 2*b16 - 3*b17 - 4*b18 - 5*b19 - 6*b20 - 7*b21 - 8*b22 - 9*b23 - 10*b24 - 11*b25
     - 12*b26 - 13*b27 - 14*b28 - 15*b29 - 16*b30 - 17*b31 - 18*b32 - 19*b33 - 20*b34 == 0)

@constraint(m, x5 - 0.01*b35 - b36 - 2*b37 - 3*b38 - 4*b39 - 5*b40 - 6*b41 - 7*b42 - 8*b43 - 9*b44 - 10*b45 - 11*b46
     - 12*b47 - 13*b48 - 14*b49 - 15*b50 - 16*b51 - 17*b52 - 18*b53 - 19*b54 - 20*b55 == 0)

@constraint(m, x6 - 0.01*b56 - b57 - 2*b58 - 3*b59 - 4*b60 - 5*b61 - 6*b62 - 7*b63 - 8*b64 - 9*b65 - 10*b66 - 11*b67
     - 12*b68 - 13*b69 - 14*b70 - 15*b71 - 16*b72 - 17*b73 - 18*b74 - 19*b75 - 20*b76 == 0)

@constraint(m,  - b14 - b15 - b16 - b17 - b18 - b19 - b20 - b21 - b22 - b23 - b24 - b25 - b26 - b27 - b28 - b29 - b30
     - b31 - b32 - b33 - b34 == -1)

@constraint(m,  - b35 - b36 - b37 - b38 - b39 - b40 - b41 - b42 - b43 - b44 - b45 - b46 - b47 - b48 - b49 - b50 - b51
     - b52 - b53 - b54 - b55 == -1)

@constraint(m,  - b56 - b57 - b58 - b59 - b60 - b61 - b62 - b63 - b64 - b65 - b66 - b67 - b68 - b69 - b70 - b71 - b72
     - b73 - b74 - b75 - b76 == -1)

@constraint(m,  - x1 - 2*x4 + x10 == 0)

@constraint(m,  - x2 - 3*x5 + x11 == 0)

@constraint(m,  - x3 - 3*x6 + x12 == 0)

@constraint(m, x10 + x11 + x12 - x13 <= 0)

@constraint(m, x1 + 150*b14 <= 150)

@constraint(m, x2 + 150*b35 <= 150)

@constraint(m, x3 + 150*b56 <= 150)

@constraint(m, x4 >= 1)

@constraint(m, x5 >= 1)

@constraint(m, x6 >= 1)
