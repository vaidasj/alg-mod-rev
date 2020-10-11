#  MIP written by GAMS Convert at 10/11/20 13:33:03
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         66       13        3       50        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         97       55       42        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        313      313        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 0 <= x1, start=0)
@variable(m, 0 <= x2, start=25)
@variable(m, 0 <= x3, start=275)
@variable(m, 0 <= x4, start=325)
@variable(m, 0 <= x5, start=275)
@variable(m, 0 <= x6, start=0)
@variable(m, 0 <= x8, start=0)
@variable(m, 0 <= x9, start=0)
@variable(m, 0 <= x10, start=0)
@variable(m, 0 <= x11, start=0)
@variable(m, 0 <= x12, start=0)
@variable(m, 0 <= x13, start=0)
@variable(m, 0 <= x14, start=0)
@variable(m, 0 <= x15, start=0)
@variable(m, 0 <= x16, start=0)
@variable(m, 0 <= x17, start=0)
@variable(m, 0 <= x18, start=0)
@variable(m, 0 <= x19, start=0)
@variable(m, 0 <= x20, start=0)
@variable(m, 0 <= x21, start=0)
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
@variable(m, 0 <= x54, start=0)
@variable(m, 0 <= x55, start=0)
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

@objective(m, Min, 0.225*x8 + 0.153*x9 + 0.162*x10 + 0.225*x11 + 0.162*x12 + 0.126*x13)

@constraint(m, x1 + x2 + x3 <= 350)

@constraint(m, x4 + x5 + x6 <= 600)

@constraint(m, x1 + x4 >= 325)

@constraint(m, x2 + x5 >= 300)

@constraint(m, x3 + x6 >= 275)

@constraint(m, x1 - 50*x14 - 70*x15 - 70*x16 - 70*x17 - 70*x18 - 70*x19 - 200*x20 - 50*b57 - 120*b58 - 190*b59 - 260*b60
     - 330*b61 - 400*b62 == 0)

@constraint(m, x2 - 50*x21 - 70*x22 - 70*x23 - 70*x24 - 70*x25 - 70*x26 - 200*x27 - 50*b64 - 120*b65 - 190*b66 - 260*b67
     - 330*b68 - 400*b69 == 0)

@constraint(m, x3 - 50*x28 - 70*x29 - 70*x30 - 70*x31 - 70*x32 - 70*x33 - 200*x34 - 50*b71 - 120*b72 - 190*b73 - 260*b74
     - 330*b75 - 400*b76 == 0)

@constraint(m, x4 - 50*x35 - 70*x36 - 70*x37 - 70*x38 - 70*x39 - 70*x40 - 200*x41 - 50*b78 - 120*b79 - 190*b80 - 260*b81
     - 330*b82 - 400*b83 == 0)

@constraint(m, x5 - 50*x42 - 70*x43 - 70*x44 - 70*x45 - 70*x46 - 70*x47 - 200*x48 - 50*b85 - 120*b86 - 190*b87 - 260*b88
     - 330*b89 - 400*b90 == 0)

@constraint(m, x6 - 50*x49 - 70*x50 - 70*x51 - 70*x52 - 70*x53 - 70*x54 - 200*x55 - 50*b92 - 120*b93 - 190*b94 - 260*b95
     - 330*b96 - 400*b97 == 0)

@constraint(m, x8 - 7.07106781186548*x14 - 3.88338333823785*x15 - 2.8295976019869*x16 - 2.34046674450688*x17
     - 2.04138662798785*x18 - 1.83409787541505*x19 - 4.49489742783178*x20 - 7.07106781186548*b57 - 10.9544511501033*b58
     - 13.7840487520902*b59 - 16.1245154965971*b60 - 18.1659021245849*b61 - 20*b62 == 0)

@constraint(m, x9 - 7.07106781186548*x21 - 3.88338333823785*x22 - 2.8295976019869*x23 - 2.34046674450688*x24
     - 2.04138662798785*x25 - 1.83409787541505*x26 - 4.49489742783178*x27 - 7.07106781186548*b64 - 10.9544511501033*b65
     - 13.7840487520902*b66 - 16.1245154965971*b67 - 18.1659021245849*b68 - 20*b69 == 0)

@constraint(m, x10 - 7.07106781186548*x28 - 3.88338333823785*x29 - 2.8295976019869*x30 - 2.34046674450688*x31
     - 2.04138662798785*x32 - 1.83409787541505*x33 - 4.49489742783178*x34 - 7.07106781186548*b71 - 10.9544511501033*b72
     - 13.7840487520902*b73 - 16.1245154965971*b74 - 18.1659021245849*b75 - 20*b76 == 0)

@constraint(m, x11 - 7.07106781186548*x35 - 3.88338333823785*x36 - 2.8295976019869*x37 - 2.34046674450688*x38
     - 2.04138662798785*x39 - 1.83409787541505*x40 - 4.49489742783178*x41 - 7.07106781186548*b78 - 10.9544511501033*b79
     - 13.7840487520902*b80 - 16.1245154965971*b81 - 18.1659021245849*b82 - 20*b83 == 0)

@constraint(m, x12 - 7.07106781186548*x42 - 3.88338333823785*x43 - 2.8295976019869*x44 - 2.34046674450688*x45
     - 2.04138662798785*x46 - 1.83409787541505*x47 - 4.49489742783178*x48 - 7.07106781186548*b85 - 10.9544511501033*b86
     - 13.7840487520902*b87 - 16.1245154965971*b88 - 18.1659021245849*b89 - 20*b90 == 0)

@constraint(m, x13 - 7.07106781186548*x49 - 3.88338333823785*x50 - 2.8295976019869*x51 - 2.34046674450688*x52
     - 2.04138662798785*x53 - 1.83409787541505*x54 - 4.49489742783178*x55 - 7.07106781186548*b92 - 10.9544511501033*b93
     - 13.7840487520902*b94 - 16.1245154965971*b95 - 18.1659021245849*b96 - 20*b97 == 0)

@constraint(m, x14 - b56 <= 0)

@constraint(m, x15 - b57 <= 0)

@constraint(m, x16 - b58 <= 0)

@constraint(m, x17 - b59 <= 0)

@constraint(m, x18 - b60 <= 0)

@constraint(m, x19 - b61 <= 0)

@constraint(m, x20 - b62 <= 0)

@constraint(m, x21 - b63 <= 0)

@constraint(m, x22 - b64 <= 0)

@constraint(m, x23 - b65 <= 0)

@constraint(m, x24 - b66 <= 0)

@constraint(m, x25 - b67 <= 0)

@constraint(m, x26 - b68 <= 0)

@constraint(m, x27 - b69 <= 0)

@constraint(m, x28 - b70 <= 0)

@constraint(m, x29 - b71 <= 0)

@constraint(m, x30 - b72 <= 0)

@constraint(m, x31 - b73 <= 0)

@constraint(m, x32 - b74 <= 0)

@constraint(m, x33 - b75 <= 0)

@constraint(m, x34 - b76 <= 0)

@constraint(m, x35 - b77 <= 0)

@constraint(m, x36 - b78 <= 0)

@constraint(m, x37 - b79 <= 0)

@constraint(m, x38 - b80 <= 0)

@constraint(m, x39 - b81 <= 0)

@constraint(m, x40 - b82 <= 0)

@constraint(m, x41 - b83 <= 0)

@constraint(m, x42 - b84 <= 0)

@constraint(m, x43 - b85 <= 0)

@constraint(m, x44 - b86 <= 0)

@constraint(m, x45 - b87 <= 0)

@constraint(m, x46 - b88 <= 0)

@constraint(m, x47 - b89 <= 0)

@constraint(m, x48 - b90 <= 0)

@constraint(m, x49 - b91 <= 0)

@constraint(m, x50 - b92 <= 0)

@constraint(m, x51 - b93 <= 0)

@constraint(m, x52 - b94 <= 0)

@constraint(m, x53 - b95 <= 0)

@constraint(m, x54 - b96 <= 0)

@constraint(m, x55 - b97 <= 0)

@constraint(m, b56 + b57 + b58 + b59 + b60 + b61 + b62 <= 1)

@constraint(m, b63 + b64 + b65 + b66 + b67 + b68 + b69 <= 1)

@constraint(m, b70 + b71 + b72 + b73 + b74 + b75 + b76 <= 1)

@constraint(m, b77 + b78 + b79 + b80 + b81 + b82 + b83 <= 1)

@constraint(m, b84 + b85 + b86 + b87 + b88 + b89 + b90 <= 1)

@constraint(m, b91 + b92 + b93 + b94 + b95 + b96 + b97 <= 1)
