#  MIP written by GAMS Convert at 12/13/18 10:31:11
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        126        3      108       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        127       19      108        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        465      465        0        0


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x3 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x4 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x5 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x6 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x7 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x8 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x9 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x10 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x11 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x12 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x13 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x14 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x15 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x16 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x17 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x18 = Var(within=Reals,bounds=(1,18),initialize=1)
m.x19 = Var(within=Reals,bounds=(1,18),initialize=1)
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

m.obj = Objective(expr=m.x1, sense=maximize)

m.c1 = Constraint(expr= - m.x1 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30
                        + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 + m.b42
                        + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50 + m.b51 + m.b52 + m.b53 + m.b54
                        + m.b55 == 0)

m.c2 = Constraint(expr= - m.x1 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66
                        + m.b67 + m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 + m.b78
                        + m.b79 + m.b80 + m.b81 + m.b82 + m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90
                        + m.b91 == 0)

m.c3 = Constraint(expr= - m.x1 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 + m.b101
                        + m.b102 + m.b103 + m.b104 + m.b105 + m.b106 + m.b107 + m.b108 + m.b109 + m.b110 + m.b111
                        + m.b112 + m.b113 + m.b114 + m.b115 + m.b116 + m.b117 + m.b118 + m.b119 + m.b120 + m.b121
                        + m.b122 + m.b123 + m.b124 + m.b125 + m.b126 + m.b127 == 0)

m.c4 = Constraint(expr=   m.x2 - m.x8 - 17*m.b20 >= -16)

m.c5 = Constraint(expr=   m.x2 - m.x9 - 17*m.b21 >= -16)

m.c6 = Constraint(expr=   m.x2 - m.x10 - 17*m.b22 >= -16)

m.c7 = Constraint(expr=   m.x2 - m.x11 - 17*m.b23 >= -16)

m.c8 = Constraint(expr=   m.x2 - m.x12 - 17*m.b24 >= -16)

m.c9 = Constraint(expr=   m.x2 - m.x13 - 17*m.b25 >= -16)

m.c10 = Constraint(expr=   m.x3 - m.x8 - 17*m.b26 >= -16)

m.c11 = Constraint(expr=   m.x3 - m.x9 - 17*m.b27 >= -16)

m.c12 = Constraint(expr=   m.x3 - m.x10 - 17*m.b28 >= -16)

m.c13 = Constraint(expr=   m.x3 - m.x11 - 17*m.b29 >= -16)

m.c14 = Constraint(expr=   m.x3 - m.x12 - 17*m.b30 >= -16)

m.c15 = Constraint(expr=   m.x3 - m.x13 - 17*m.b31 >= -16)

m.c16 = Constraint(expr=   m.x4 - m.x8 - 17*m.b32 >= -16)

m.c17 = Constraint(expr=   m.x4 - m.x9 - 17*m.b33 >= -16)

m.c18 = Constraint(expr=   m.x4 - m.x10 - 17*m.b34 >= -16)

m.c19 = Constraint(expr=   m.x4 - m.x11 - 17*m.b35 >= -16)

m.c20 = Constraint(expr=   m.x4 - m.x12 - 17*m.b36 >= -16)

m.c21 = Constraint(expr=   m.x4 - m.x13 - 17*m.b37 >= -16)

m.c22 = Constraint(expr=   m.x5 - m.x8 - 17*m.b38 >= -16)

m.c23 = Constraint(expr=   m.x5 - m.x9 - 17*m.b39 >= -16)

m.c24 = Constraint(expr=   m.x5 - m.x10 - 17*m.b40 >= -16)

m.c25 = Constraint(expr=   m.x5 - m.x11 - 17*m.b41 >= -16)

m.c26 = Constraint(expr=   m.x5 - m.x12 - 17*m.b42 >= -16)

m.c27 = Constraint(expr=   m.x5 - m.x13 - 17*m.b43 >= -16)

m.c28 = Constraint(expr=   m.x6 - m.x8 - 17*m.b44 >= -16)

m.c29 = Constraint(expr=   m.x6 - m.x9 - 17*m.b45 >= -16)

m.c30 = Constraint(expr=   m.x6 - m.x10 - 17*m.b46 >= -16)

m.c31 = Constraint(expr=   m.x6 - m.x11 - 17*m.b47 >= -16)

m.c32 = Constraint(expr=   m.x6 - m.x12 - 17*m.b48 >= -16)

m.c33 = Constraint(expr=   m.x6 - m.x13 - 17*m.b49 >= -16)

m.c34 = Constraint(expr=   m.x7 - m.x8 - 17*m.b50 >= -16)

m.c35 = Constraint(expr=   m.x7 - m.x9 - 17*m.b51 >= -16)

m.c36 = Constraint(expr=   m.x7 - m.x10 - 17*m.b52 >= -16)

m.c37 = Constraint(expr=   m.x7 - m.x11 - 17*m.b53 >= -16)

m.c38 = Constraint(expr=   m.x7 - m.x12 - 17*m.b54 >= -16)

m.c39 = Constraint(expr=   m.x7 - m.x13 - 17*m.b55 >= -16)

m.c40 = Constraint(expr=   m.x8 - m.x14 - 17*m.b56 >= -16)

m.c41 = Constraint(expr=   m.x8 - m.x15 - 17*m.b57 >= -16)

m.c42 = Constraint(expr=   m.x8 - m.x16 - 17*m.b58 >= -16)

m.c43 = Constraint(expr=   m.x8 - m.x17 - 17*m.b59 >= -16)

m.c44 = Constraint(expr=   m.x8 - m.x18 - 17*m.b60 >= -16)

m.c45 = Constraint(expr=   m.x8 - m.x19 - 17*m.b61 >= -16)

m.c46 = Constraint(expr=   m.x9 - m.x14 - 17*m.b62 >= -16)

m.c47 = Constraint(expr=   m.x9 - m.x15 - 17*m.b63 >= -16)

m.c48 = Constraint(expr=   m.x9 - m.x16 - 17*m.b64 >= -16)

m.c49 = Constraint(expr=   m.x9 - m.x17 - 17*m.b65 >= -16)

m.c50 = Constraint(expr=   m.x9 - m.x18 - 17*m.b66 >= -16)

m.c51 = Constraint(expr=   m.x9 - m.x19 - 17*m.b67 >= -16)

m.c52 = Constraint(expr=   m.x10 - m.x14 - 17*m.b68 >= -16)

m.c53 = Constraint(expr=   m.x10 - m.x15 - 17*m.b69 >= -16)

m.c54 = Constraint(expr=   m.x10 - m.x16 - 17*m.b70 >= -16)

m.c55 = Constraint(expr=   m.x10 - m.x17 - 17*m.b71 >= -16)

m.c56 = Constraint(expr=   m.x10 - m.x18 - 17*m.b72 >= -16)

m.c57 = Constraint(expr=   m.x10 - m.x19 - 17*m.b73 >= -16)

m.c58 = Constraint(expr=   m.x11 - m.x14 - 17*m.b74 >= -16)

m.c59 = Constraint(expr=   m.x11 - m.x15 - 17*m.b75 >= -16)

m.c60 = Constraint(expr=   m.x11 - m.x16 - 17*m.b76 >= -16)

m.c61 = Constraint(expr=   m.x11 - m.x17 - 17*m.b77 >= -16)

m.c62 = Constraint(expr=   m.x11 - m.x18 - 17*m.b78 >= -16)

m.c63 = Constraint(expr=   m.x11 - m.x19 - 17*m.b79 >= -16)

m.c64 = Constraint(expr=   m.x12 - m.x14 - 17*m.b80 >= -16)

m.c65 = Constraint(expr=   m.x12 - m.x15 - 17*m.b81 >= -16)

m.c66 = Constraint(expr=   m.x12 - m.x16 - 17*m.b82 >= -16)

m.c67 = Constraint(expr=   m.x12 - m.x17 - 17*m.b83 >= -16)

m.c68 = Constraint(expr=   m.x12 - m.x18 - 17*m.b84 >= -16)

m.c69 = Constraint(expr=   m.x12 - m.x19 - 17*m.b85 >= -16)

m.c70 = Constraint(expr=   m.x13 - m.x14 - 17*m.b86 >= -16)

m.c71 = Constraint(expr=   m.x13 - m.x15 - 17*m.b87 >= -16)

m.c72 = Constraint(expr=   m.x13 - m.x16 - 17*m.b88 >= -16)

m.c73 = Constraint(expr=   m.x13 - m.x17 - 17*m.b89 >= -16)

m.c74 = Constraint(expr=   m.x13 - m.x18 - 17*m.b90 >= -16)

m.c75 = Constraint(expr=   m.x13 - m.x19 - 17*m.b91 >= -16)

m.c76 = Constraint(expr= - m.x2 + m.x14 - 17*m.b92 >= -16)

m.c77 = Constraint(expr= - m.x3 + m.x14 - 17*m.b93 >= -16)

m.c78 = Constraint(expr= - m.x4 + m.x14 - 17*m.b94 >= -16)

m.c79 = Constraint(expr= - m.x5 + m.x14 - 17*m.b95 >= -16)

m.c80 = Constraint(expr= - m.x6 + m.x14 - 17*m.b96 >= -16)

m.c81 = Constraint(expr= - m.x7 + m.x14 - 17*m.b97 >= -16)

m.c82 = Constraint(expr= - m.x2 + m.x15 - 17*m.b98 >= -16)

m.c83 = Constraint(expr= - m.x3 + m.x15 - 17*m.b99 >= -16)

m.c84 = Constraint(expr= - m.x4 + m.x15 - 17*m.b100 >= -16)

m.c85 = Constraint(expr= - m.x5 + m.x15 - 17*m.b101 >= -16)

m.c86 = Constraint(expr= - m.x6 + m.x15 - 17*m.b102 >= -16)

m.c87 = Constraint(expr= - m.x7 + m.x15 - 17*m.b103 >= -16)

m.c88 = Constraint(expr= - m.x2 + m.x16 - 17*m.b104 >= -16)

m.c89 = Constraint(expr= - m.x3 + m.x16 - 17*m.b105 >= -16)

m.c90 = Constraint(expr= - m.x4 + m.x16 - 17*m.b106 >= -16)

m.c91 = Constraint(expr= - m.x5 + m.x16 - 17*m.b107 >= -16)

m.c92 = Constraint(expr= - m.x6 + m.x16 - 17*m.b108 >= -16)

m.c93 = Constraint(expr= - m.x7 + m.x16 - 17*m.b109 >= -16)

m.c94 = Constraint(expr= - m.x2 + m.x17 - 17*m.b110 >= -16)

m.c95 = Constraint(expr= - m.x3 + m.x17 - 17*m.b111 >= -16)

m.c96 = Constraint(expr= - m.x4 + m.x17 - 17*m.b112 >= -16)

m.c97 = Constraint(expr= - m.x5 + m.x17 - 17*m.b113 >= -16)

m.c98 = Constraint(expr= - m.x6 + m.x17 - 17*m.b114 >= -16)

m.c99 = Constraint(expr= - m.x7 + m.x17 - 17*m.b115 >= -16)

m.c100 = Constraint(expr= - m.x2 + m.x18 - 17*m.b116 >= -16)

m.c101 = Constraint(expr= - m.x3 + m.x18 - 17*m.b117 >= -16)

m.c102 = Constraint(expr= - m.x4 + m.x18 - 17*m.b118 >= -16)

m.c103 = Constraint(expr= - m.x5 + m.x18 - 17*m.b119 >= -16)

m.c104 = Constraint(expr= - m.x6 + m.x18 - 17*m.b120 >= -16)

m.c105 = Constraint(expr= - m.x7 + m.x18 - 17*m.b121 >= -16)

m.c106 = Constraint(expr= - m.x2 + m.x19 - 17*m.b122 >= -16)

m.c107 = Constraint(expr= - m.x3 + m.x19 - 17*m.b123 >= -16)

m.c108 = Constraint(expr= - m.x4 + m.x19 - 17*m.b124 >= -16)

m.c109 = Constraint(expr= - m.x5 + m.x19 - 17*m.b125 >= -16)

m.c110 = Constraint(expr= - m.x6 + m.x19 - 17*m.b126 >= -16)

m.c111 = Constraint(expr= - m.x7 + m.x19 - 17*m.b127 >= -16)

m.c112 = Constraint(expr=   m.x2 - m.x3 <= -1)

m.c113 = Constraint(expr=   m.x3 - m.x4 <= -1)

m.c114 = Constraint(expr=   m.x4 - m.x5 <= -1)

m.c115 = Constraint(expr=   m.x5 - m.x6 <= -1)

m.c116 = Constraint(expr=   m.x6 - m.x7 <= -1)

m.c117 = Constraint(expr=   m.x8 - m.x9 <= -1)

m.c118 = Constraint(expr=   m.x9 - m.x10 <= -1)

m.c119 = Constraint(expr=   m.x10 - m.x11 <= -1)

m.c120 = Constraint(expr=   m.x11 - m.x12 <= -1)

m.c121 = Constraint(expr=   m.x12 - m.x13 <= -1)

m.c122 = Constraint(expr=   m.x14 - m.x15 <= -1)

m.c123 = Constraint(expr=   m.x15 - m.x16 <= -1)

m.c124 = Constraint(expr=   m.x16 - m.x17 <= -1)

m.c125 = Constraint(expr=   m.x17 - m.x18 <= -1)

m.c126 = Constraint(expr=   m.x18 - m.x19 <= -1)
