#  MIP written by GAMS Convert at 10/11/20 12:29:45
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        161       97        0       64        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        129        1      128        0        0        0        0        0
#  FX      1        0        1        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        641      641        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


using JuMP
using MathOptInterface
const MOI = MathOptInterface

model = m = Model()

@variable(m, 1 <= b1 <= 1, binary=true, start=1)
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
@variable(m, 0 <= b128 <= 1, binary=true, start=0)

@objective(m, Min, b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 + b17 + b18
     + b19 + b20 + b21 + b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36 + b37
     + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56
     + b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 + b72 + b73 + b74 + b75
     + b76 + b77 + b78 + b79 + b80 + b81 + b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 + b91 + b92 + b93 + b94
     + b95 + b96 + b97 + b98 + b99 + b100 + b101 + b102 + b103 + b104 + b105 + b106 + b107 + b108 + b109 + b110 + b111
     + b112 + b113 + b114 + b115 + b116 + b117 + b118 + b119 + b120 + b121 + b122 + b123 + b124 + b125 + b126 + b127
     + b128)

@constraint(m, b1 + b17 + b33 + b49 == 1)

@constraint(m, b2 + b18 + b34 + b50 == 1)

@constraint(m, b3 + b19 + b35 + b51 == 1)

@constraint(m, b4 + b20 + b36 + b52 == 1)

@constraint(m, b5 + b21 + b37 + b53 == 1)

@constraint(m, b6 + b22 + b38 + b54 == 1)

@constraint(m, b7 + b23 + b39 + b55 == 1)

@constraint(m, b8 + b24 + b40 + b56 == 1)

@constraint(m, b9 + b25 + b41 + b57 == 1)

@constraint(m, b10 + b26 + b42 + b58 == 1)

@constraint(m, b11 + b27 + b43 + b59 == 1)

@constraint(m, b12 + b28 + b44 + b60 == 1)

@constraint(m, b13 + b29 + b45 + b61 == 1)

@constraint(m, b14 + b30 + b46 + b62 == 1)

@constraint(m, b15 + b31 + b47 + b63 == 1)

@constraint(m, b16 + b32 + b48 + b64 == 1)

@constraint(m, b65 + b81 + b97 + b113 == 1)

@constraint(m, b66 + b82 + b98 + b114 == 1)

@constraint(m, b67 + b83 + b99 + b115 == 1)

@constraint(m, b68 + b84 + b100 + b116 == 1)

@constraint(m, b69 + b85 + b101 + b117 == 1)

@constraint(m, b70 + b86 + b102 + b118 == 1)

@constraint(m, b71 + b87 + b103 + b119 == 1)

@constraint(m, b72 + b88 + b104 + b120 == 1)

@constraint(m, b73 + b89 + b105 + b121 == 1)

@constraint(m, b74 + b90 + b106 + b122 == 1)

@constraint(m, b75 + b91 + b107 + b123 == 1)

@constraint(m, b76 + b92 + b108 + b124 == 1)

@constraint(m, b77 + b93 + b109 + b125 == 1)

@constraint(m, b78 + b94 + b110 + b126 == 1)

@constraint(m, b79 + b95 + b111 + b127 == 1)

@constraint(m, b80 + b96 + b112 + b128 == 1)

@constraint(m, b1 + b5 + b9 + b13 == 1)

@constraint(m, b2 + b6 + b10 + b14 == 1)

@constraint(m, b3 + b7 + b11 + b15 == 1)

@constraint(m, b4 + b8 + b12 + b16 == 1)

@constraint(m, b17 + b21 + b25 + b29 == 1)

@constraint(m, b18 + b22 + b26 + b30 == 1)

@constraint(m, b19 + b23 + b27 + b31 == 1)

@constraint(m, b20 + b24 + b28 + b32 == 1)

@constraint(m, b33 + b37 + b41 + b45 == 1)

@constraint(m, b34 + b38 + b42 + b46 == 1)

@constraint(m, b35 + b39 + b43 + b47 == 1)

@constraint(m, b36 + b40 + b44 + b48 == 1)

@constraint(m, b49 + b53 + b57 + b61 == 1)

@constraint(m, b50 + b54 + b58 + b62 == 1)

@constraint(m, b51 + b55 + b59 + b63 == 1)

@constraint(m, b52 + b56 + b60 + b64 == 1)

@constraint(m, b65 + b69 + b73 + b77 == 1)

@constraint(m, b66 + b70 + b74 + b78 == 1)

@constraint(m, b67 + b71 + b75 + b79 == 1)

@constraint(m, b68 + b72 + b76 + b80 == 1)

@constraint(m, b81 + b85 + b89 + b93 == 1)

@constraint(m, b82 + b86 + b90 + b94 == 1)

@constraint(m, b83 + b87 + b91 + b95 == 1)

@constraint(m, b84 + b88 + b92 + b96 == 1)

@constraint(m, b97 + b101 + b105 + b109 == 1)

@constraint(m, b98 + b102 + b106 + b110 == 1)

@constraint(m, b99 + b103 + b107 + b111 == 1)

@constraint(m, b100 + b104 + b108 + b112 == 1)

@constraint(m, b113 + b117 + b121 + b125 == 1)

@constraint(m, b114 + b118 + b122 + b126 == 1)

@constraint(m, b115 + b119 + b123 + b127 == 1)

@constraint(m, b116 + b120 + b124 + b128 == 1)

@constraint(m, b1 + b2 + b3 + b4 == 1)

@constraint(m, b5 + b6 + b7 + b8 == 1)

@constraint(m, b9 + b10 + b11 + b12 == 1)

@constraint(m, b13 + b14 + b15 + b16 == 1)

@constraint(m, b17 + b18 + b19 + b20 == 1)

@constraint(m, b21 + b22 + b23 + b24 == 1)

@constraint(m, b25 + b26 + b27 + b28 == 1)

@constraint(m, b29 + b30 + b31 + b32 == 1)

@constraint(m, b33 + b34 + b35 + b36 == 1)

@constraint(m, b37 + b38 + b39 + b40 == 1)

@constraint(m, b41 + b42 + b43 + b44 == 1)

@constraint(m, b45 + b46 + b47 + b48 == 1)

@constraint(m, b49 + b50 + b51 + b52 == 1)

@constraint(m, b53 + b54 + b55 + b56 == 1)

@constraint(m, b57 + b58 + b59 + b60 == 1)

@constraint(m, b61 + b62 + b63 + b64 == 1)

@constraint(m, b65 + b66 + b67 + b68 == 1)

@constraint(m, b69 + b70 + b71 + b72 == 1)

@constraint(m, b73 + b74 + b75 + b76 == 1)

@constraint(m, b77 + b78 + b79 + b80 == 1)

@constraint(m, b81 + b82 + b83 + b84 == 1)

@constraint(m, b85 + b86 + b87 + b88 == 1)

@constraint(m, b89 + b90 + b91 + b92 == 1)

@constraint(m, b93 + b94 + b95 + b96 == 1)

@constraint(m, b97 + b98 + b99 + b100 == 1)

@constraint(m, b101 + b102 + b103 + b104 == 1)

@constraint(m, b105 + b106 + b107 + b108 == 1)

@constraint(m, b109 + b110 + b111 + b112 == 1)

@constraint(m, b113 + b114 + b115 + b116 == 1)

@constraint(m, b117 + b118 + b119 + b120 == 1)

@constraint(m, b121 + b122 + b123 + b124 == 1)

@constraint(m, b125 + b126 + b127 + b128 == 1)

@constraint(m, b1 + b65 <= 1)

@constraint(m, b2 + b66 <= 1)

@constraint(m, b3 + b67 <= 1)

@constraint(m, b4 + b68 <= 1)

@constraint(m, b5 + b69 <= 1)

@constraint(m, b6 + b70 <= 1)

@constraint(m, b7 + b71 <= 1)

@constraint(m, b8 + b72 <= 1)

@constraint(m, b9 + b73 <= 1)

@constraint(m, b10 + b74 <= 1)

@constraint(m, b11 + b75 <= 1)

@constraint(m, b12 + b76 <= 1)

@constraint(m, b13 + b77 <= 1)

@constraint(m, b14 + b78 <= 1)

@constraint(m, b15 + b79 <= 1)

@constraint(m, b16 + b80 <= 1)

@constraint(m, b17 + b81 <= 1)

@constraint(m, b18 + b82 <= 1)

@constraint(m, b19 + b83 <= 1)

@constraint(m, b20 + b84 <= 1)

@constraint(m, b21 + b85 <= 1)

@constraint(m, b22 + b86 <= 1)

@constraint(m, b23 + b87 <= 1)

@constraint(m, b24 + b88 <= 1)

@constraint(m, b25 + b89 <= 1)

@constraint(m, b26 + b90 <= 1)

@constraint(m, b27 + b91 <= 1)

@constraint(m, b28 + b92 <= 1)

@constraint(m, b29 + b93 <= 1)

@constraint(m, b30 + b94 <= 1)

@constraint(m, b31 + b95 <= 1)

@constraint(m, b32 + b96 <= 1)

@constraint(m, b33 + b97 <= 1)

@constraint(m, b34 + b98 <= 1)

@constraint(m, b35 + b99 <= 1)

@constraint(m, b36 + b100 <= 1)

@constraint(m, b37 + b101 <= 1)

@constraint(m, b38 + b102 <= 1)

@constraint(m, b39 + b103 <= 1)

@constraint(m, b40 + b104 <= 1)

@constraint(m, b41 + b105 <= 1)

@constraint(m, b42 + b106 <= 1)

@constraint(m, b43 + b107 <= 1)

@constraint(m, b44 + b108 <= 1)

@constraint(m, b45 + b109 <= 1)

@constraint(m, b46 + b110 <= 1)

@constraint(m, b47 + b111 <= 1)

@constraint(m, b48 + b112 <= 1)

@constraint(m, b49 + b113 <= 1)

@constraint(m, b50 + b114 <= 1)

@constraint(m, b51 + b115 <= 1)

@constraint(m, b52 + b116 <= 1)

@constraint(m, b53 + b117 <= 1)

@constraint(m, b54 + b118 <= 1)

@constraint(m, b55 + b119 <= 1)

@constraint(m, b56 + b120 <= 1)

@constraint(m, b57 + b121 <= 1)

@constraint(m, b58 + b122 <= 1)

@constraint(m, b59 + b123 <= 1)

@constraint(m, b60 + b124 <= 1)

@constraint(m, b61 + b125 <= 1)

@constraint(m, b62 + b126 <= 1)

@constraint(m, b63 + b127 <= 1)

@constraint(m, b64 + b128 <= 1)
