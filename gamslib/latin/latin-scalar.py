#  MIP written by GAMS Convert at 12/13/18 10:30:51
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


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b29 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b31 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b32 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b33 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b34 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b35 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b36 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b37 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b38 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b39 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b40 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b41 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b42 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b43 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b44 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b45 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b46 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b47 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b48 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b49 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b50 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b51 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b52 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b53 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b54 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b55 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b56 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b57 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b58 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b59 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b60 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b61 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b62 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b63 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b64 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b65 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b66 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b67 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b68 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b69 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b70 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b71 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b72 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b73 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b74 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b75 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b76 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b77 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b78 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b79 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b80 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b81 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b82 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b83 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b84 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b85 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b86 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b87 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b88 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b89 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b90 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b91 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b92 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b93 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b94 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b95 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b96 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b97 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b98 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b99 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b100 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b101 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b102 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b103 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b104 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b105 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b106 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b107 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b108 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b109 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b110 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b111 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b112 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b113 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b114 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b115 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b116 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b117 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b118 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b119 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b120 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b121 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b122 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b123 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b124 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b125 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b126 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b127 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b128 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13
                        + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25
                        + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37
                        + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49
                        + m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61
                        + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73
                        + m.b74 + m.b75 + m.b76 + m.b77 + m.b78 + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 + m.b84 + m.b85
                        + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 + m.b91 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97
                        + m.b98 + m.b99 + m.b100 + m.b101 + m.b102 + m.b103 + m.b104 + m.b105 + m.b106 + m.b107 + m.b108
                        + m.b109 + m.b110 + m.b111 + m.b112 + m.b113 + m.b114 + m.b115 + m.b116 + m.b117 + m.b118
                        + m.b119 + m.b120 + m.b121 + m.b122 + m.b123 + m.b124 + m.b125 + m.b126 + m.b127 + m.b128
                       , sense=minimize)

m.c2 = Constraint(expr=   m.b1 + m.b17 + m.b33 + m.b49 == 1)

m.c3 = Constraint(expr=   m.b2 + m.b18 + m.b34 + m.b50 == 1)

m.c4 = Constraint(expr=   m.b3 + m.b19 + m.b35 + m.b51 == 1)

m.c5 = Constraint(expr=   m.b4 + m.b20 + m.b36 + m.b52 == 1)

m.c6 = Constraint(expr=   m.b5 + m.b21 + m.b37 + m.b53 == 1)

m.c7 = Constraint(expr=   m.b6 + m.b22 + m.b38 + m.b54 == 1)

m.c8 = Constraint(expr=   m.b7 + m.b23 + m.b39 + m.b55 == 1)

m.c9 = Constraint(expr=   m.b8 + m.b24 + m.b40 + m.b56 == 1)

m.c10 = Constraint(expr=   m.b9 + m.b25 + m.b41 + m.b57 == 1)

m.c11 = Constraint(expr=   m.b10 + m.b26 + m.b42 + m.b58 == 1)

m.c12 = Constraint(expr=   m.b11 + m.b27 + m.b43 + m.b59 == 1)

m.c13 = Constraint(expr=   m.b12 + m.b28 + m.b44 + m.b60 == 1)

m.c14 = Constraint(expr=   m.b13 + m.b29 + m.b45 + m.b61 == 1)

m.c15 = Constraint(expr=   m.b14 + m.b30 + m.b46 + m.b62 == 1)

m.c16 = Constraint(expr=   m.b15 + m.b31 + m.b47 + m.b63 == 1)

m.c17 = Constraint(expr=   m.b16 + m.b32 + m.b48 + m.b64 == 1)

m.c18 = Constraint(expr=   m.b65 + m.b81 + m.b97 + m.b113 == 1)

m.c19 = Constraint(expr=   m.b66 + m.b82 + m.b98 + m.b114 == 1)

m.c20 = Constraint(expr=   m.b67 + m.b83 + m.b99 + m.b115 == 1)

m.c21 = Constraint(expr=   m.b68 + m.b84 + m.b100 + m.b116 == 1)

m.c22 = Constraint(expr=   m.b69 + m.b85 + m.b101 + m.b117 == 1)

m.c23 = Constraint(expr=   m.b70 + m.b86 + m.b102 + m.b118 == 1)

m.c24 = Constraint(expr=   m.b71 + m.b87 + m.b103 + m.b119 == 1)

m.c25 = Constraint(expr=   m.b72 + m.b88 + m.b104 + m.b120 == 1)

m.c26 = Constraint(expr=   m.b73 + m.b89 + m.b105 + m.b121 == 1)

m.c27 = Constraint(expr=   m.b74 + m.b90 + m.b106 + m.b122 == 1)

m.c28 = Constraint(expr=   m.b75 + m.b91 + m.b107 + m.b123 == 1)

m.c29 = Constraint(expr=   m.b76 + m.b92 + m.b108 + m.b124 == 1)

m.c30 = Constraint(expr=   m.b77 + m.b93 + m.b109 + m.b125 == 1)

m.c31 = Constraint(expr=   m.b78 + m.b94 + m.b110 + m.b126 == 1)

m.c32 = Constraint(expr=   m.b79 + m.b95 + m.b111 + m.b127 == 1)

m.c33 = Constraint(expr=   m.b80 + m.b96 + m.b112 + m.b128 == 1)

m.c34 = Constraint(expr=   m.b1 + m.b5 + m.b9 + m.b13 == 1)

m.c35 = Constraint(expr=   m.b2 + m.b6 + m.b10 + m.b14 == 1)

m.c36 = Constraint(expr=   m.b3 + m.b7 + m.b11 + m.b15 == 1)

m.c37 = Constraint(expr=   m.b4 + m.b8 + m.b12 + m.b16 == 1)

m.c38 = Constraint(expr=   m.b17 + m.b21 + m.b25 + m.b29 == 1)

m.c39 = Constraint(expr=   m.b18 + m.b22 + m.b26 + m.b30 == 1)

m.c40 = Constraint(expr=   m.b19 + m.b23 + m.b27 + m.b31 == 1)

m.c41 = Constraint(expr=   m.b20 + m.b24 + m.b28 + m.b32 == 1)

m.c42 = Constraint(expr=   m.b33 + m.b37 + m.b41 + m.b45 == 1)

m.c43 = Constraint(expr=   m.b34 + m.b38 + m.b42 + m.b46 == 1)

m.c44 = Constraint(expr=   m.b35 + m.b39 + m.b43 + m.b47 == 1)

m.c45 = Constraint(expr=   m.b36 + m.b40 + m.b44 + m.b48 == 1)

m.c46 = Constraint(expr=   m.b49 + m.b53 + m.b57 + m.b61 == 1)

m.c47 = Constraint(expr=   m.b50 + m.b54 + m.b58 + m.b62 == 1)

m.c48 = Constraint(expr=   m.b51 + m.b55 + m.b59 + m.b63 == 1)

m.c49 = Constraint(expr=   m.b52 + m.b56 + m.b60 + m.b64 == 1)

m.c50 = Constraint(expr=   m.b65 + m.b69 + m.b73 + m.b77 == 1)

m.c51 = Constraint(expr=   m.b66 + m.b70 + m.b74 + m.b78 == 1)

m.c52 = Constraint(expr=   m.b67 + m.b71 + m.b75 + m.b79 == 1)

m.c53 = Constraint(expr=   m.b68 + m.b72 + m.b76 + m.b80 == 1)

m.c54 = Constraint(expr=   m.b81 + m.b85 + m.b89 + m.b93 == 1)

m.c55 = Constraint(expr=   m.b82 + m.b86 + m.b90 + m.b94 == 1)

m.c56 = Constraint(expr=   m.b83 + m.b87 + m.b91 + m.b95 == 1)

m.c57 = Constraint(expr=   m.b84 + m.b88 + m.b92 + m.b96 == 1)

m.c58 = Constraint(expr=   m.b97 + m.b101 + m.b105 + m.b109 == 1)

m.c59 = Constraint(expr=   m.b98 + m.b102 + m.b106 + m.b110 == 1)

m.c60 = Constraint(expr=   m.b99 + m.b103 + m.b107 + m.b111 == 1)

m.c61 = Constraint(expr=   m.b100 + m.b104 + m.b108 + m.b112 == 1)

m.c62 = Constraint(expr=   m.b113 + m.b117 + m.b121 + m.b125 == 1)

m.c63 = Constraint(expr=   m.b114 + m.b118 + m.b122 + m.b126 == 1)

m.c64 = Constraint(expr=   m.b115 + m.b119 + m.b123 + m.b127 == 1)

m.c65 = Constraint(expr=   m.b116 + m.b120 + m.b124 + m.b128 == 1)

m.c66 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 == 1)

m.c67 = Constraint(expr=   m.b5 + m.b6 + m.b7 + m.b8 == 1)

m.c68 = Constraint(expr=   m.b9 + m.b10 + m.b11 + m.b12 == 1)

m.c69 = Constraint(expr=   m.b13 + m.b14 + m.b15 + m.b16 == 1)

m.c70 = Constraint(expr=   m.b17 + m.b18 + m.b19 + m.b20 == 1)

m.c71 = Constraint(expr=   m.b21 + m.b22 + m.b23 + m.b24 == 1)

m.c72 = Constraint(expr=   m.b25 + m.b26 + m.b27 + m.b28 == 1)

m.c73 = Constraint(expr=   m.b29 + m.b30 + m.b31 + m.b32 == 1)

m.c74 = Constraint(expr=   m.b33 + m.b34 + m.b35 + m.b36 == 1)

m.c75 = Constraint(expr=   m.b37 + m.b38 + m.b39 + m.b40 == 1)

m.c76 = Constraint(expr=   m.b41 + m.b42 + m.b43 + m.b44 == 1)

m.c77 = Constraint(expr=   m.b45 + m.b46 + m.b47 + m.b48 == 1)

m.c78 = Constraint(expr=   m.b49 + m.b50 + m.b51 + m.b52 == 1)

m.c79 = Constraint(expr=   m.b53 + m.b54 + m.b55 + m.b56 == 1)

m.c80 = Constraint(expr=   m.b57 + m.b58 + m.b59 + m.b60 == 1)

m.c81 = Constraint(expr=   m.b61 + m.b62 + m.b63 + m.b64 == 1)

m.c82 = Constraint(expr=   m.b65 + m.b66 + m.b67 + m.b68 == 1)

m.c83 = Constraint(expr=   m.b69 + m.b70 + m.b71 + m.b72 == 1)

m.c84 = Constraint(expr=   m.b73 + m.b74 + m.b75 + m.b76 == 1)

m.c85 = Constraint(expr=   m.b77 + m.b78 + m.b79 + m.b80 == 1)

m.c86 = Constraint(expr=   m.b81 + m.b82 + m.b83 + m.b84 == 1)

m.c87 = Constraint(expr=   m.b85 + m.b86 + m.b87 + m.b88 == 1)

m.c88 = Constraint(expr=   m.b89 + m.b90 + m.b91 + m.b92 == 1)

m.c89 = Constraint(expr=   m.b93 + m.b94 + m.b95 + m.b96 == 1)

m.c90 = Constraint(expr=   m.b97 + m.b98 + m.b99 + m.b100 == 1)

m.c91 = Constraint(expr=   m.b101 + m.b102 + m.b103 + m.b104 == 1)

m.c92 = Constraint(expr=   m.b105 + m.b106 + m.b107 + m.b108 == 1)

m.c93 = Constraint(expr=   m.b109 + m.b110 + m.b111 + m.b112 == 1)

m.c94 = Constraint(expr=   m.b113 + m.b114 + m.b115 + m.b116 == 1)

m.c95 = Constraint(expr=   m.b117 + m.b118 + m.b119 + m.b120 == 1)

m.c96 = Constraint(expr=   m.b121 + m.b122 + m.b123 + m.b124 == 1)

m.c97 = Constraint(expr=   m.b125 + m.b126 + m.b127 + m.b128 == 1)

m.c98 = Constraint(expr=   m.b1 + m.b65 <= 1)

m.c99 = Constraint(expr=   m.b2 + m.b66 <= 1)

m.c100 = Constraint(expr=   m.b3 + m.b67 <= 1)

m.c101 = Constraint(expr=   m.b4 + m.b68 <= 1)

m.c102 = Constraint(expr=   m.b5 + m.b69 <= 1)

m.c103 = Constraint(expr=   m.b6 + m.b70 <= 1)

m.c104 = Constraint(expr=   m.b7 + m.b71 <= 1)

m.c105 = Constraint(expr=   m.b8 + m.b72 <= 1)

m.c106 = Constraint(expr=   m.b9 + m.b73 <= 1)

m.c107 = Constraint(expr=   m.b10 + m.b74 <= 1)

m.c108 = Constraint(expr=   m.b11 + m.b75 <= 1)

m.c109 = Constraint(expr=   m.b12 + m.b76 <= 1)

m.c110 = Constraint(expr=   m.b13 + m.b77 <= 1)

m.c111 = Constraint(expr=   m.b14 + m.b78 <= 1)

m.c112 = Constraint(expr=   m.b15 + m.b79 <= 1)

m.c113 = Constraint(expr=   m.b16 + m.b80 <= 1)

m.c114 = Constraint(expr=   m.b17 + m.b81 <= 1)

m.c115 = Constraint(expr=   m.b18 + m.b82 <= 1)

m.c116 = Constraint(expr=   m.b19 + m.b83 <= 1)

m.c117 = Constraint(expr=   m.b20 + m.b84 <= 1)

m.c118 = Constraint(expr=   m.b21 + m.b85 <= 1)

m.c119 = Constraint(expr=   m.b22 + m.b86 <= 1)

m.c120 = Constraint(expr=   m.b23 + m.b87 <= 1)

m.c121 = Constraint(expr=   m.b24 + m.b88 <= 1)

m.c122 = Constraint(expr=   m.b25 + m.b89 <= 1)

m.c123 = Constraint(expr=   m.b26 + m.b90 <= 1)

m.c124 = Constraint(expr=   m.b27 + m.b91 <= 1)

m.c125 = Constraint(expr=   m.b28 + m.b92 <= 1)

m.c126 = Constraint(expr=   m.b29 + m.b93 <= 1)

m.c127 = Constraint(expr=   m.b30 + m.b94 <= 1)

m.c128 = Constraint(expr=   m.b31 + m.b95 <= 1)

m.c129 = Constraint(expr=   m.b32 + m.b96 <= 1)

m.c130 = Constraint(expr=   m.b33 + m.b97 <= 1)

m.c131 = Constraint(expr=   m.b34 + m.b98 <= 1)

m.c132 = Constraint(expr=   m.b35 + m.b99 <= 1)

m.c133 = Constraint(expr=   m.b36 + m.b100 <= 1)

m.c134 = Constraint(expr=   m.b37 + m.b101 <= 1)

m.c135 = Constraint(expr=   m.b38 + m.b102 <= 1)

m.c136 = Constraint(expr=   m.b39 + m.b103 <= 1)

m.c137 = Constraint(expr=   m.b40 + m.b104 <= 1)

m.c138 = Constraint(expr=   m.b41 + m.b105 <= 1)

m.c139 = Constraint(expr=   m.b42 + m.b106 <= 1)

m.c140 = Constraint(expr=   m.b43 + m.b107 <= 1)

m.c141 = Constraint(expr=   m.b44 + m.b108 <= 1)

m.c142 = Constraint(expr=   m.b45 + m.b109 <= 1)

m.c143 = Constraint(expr=   m.b46 + m.b110 <= 1)

m.c144 = Constraint(expr=   m.b47 + m.b111 <= 1)

m.c145 = Constraint(expr=   m.b48 + m.b112 <= 1)

m.c146 = Constraint(expr=   m.b49 + m.b113 <= 1)

m.c147 = Constraint(expr=   m.b50 + m.b114 <= 1)

m.c148 = Constraint(expr=   m.b51 + m.b115 <= 1)

m.c149 = Constraint(expr=   m.b52 + m.b116 <= 1)

m.c150 = Constraint(expr=   m.b53 + m.b117 <= 1)

m.c151 = Constraint(expr=   m.b54 + m.b118 <= 1)

m.c152 = Constraint(expr=   m.b55 + m.b119 <= 1)

m.c153 = Constraint(expr=   m.b56 + m.b120 <= 1)

m.c154 = Constraint(expr=   m.b57 + m.b121 <= 1)

m.c155 = Constraint(expr=   m.b58 + m.b122 <= 1)

m.c156 = Constraint(expr=   m.b59 + m.b123 <= 1)

m.c157 = Constraint(expr=   m.b60 + m.b124 <= 1)

m.c158 = Constraint(expr=   m.b61 + m.b125 <= 1)

m.c159 = Constraint(expr=   m.b62 + m.b126 <= 1)

m.c160 = Constraint(expr=   m.b63 + m.b127 <= 1)

m.c161 = Constraint(expr=   m.b64 + m.b128 <= 1)
