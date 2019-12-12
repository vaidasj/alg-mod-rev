#  MIP written by GAMS Convert at 12/13/18 10:32:17
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


from pyomo.environ import *

model = m = ConcreteModel()


m.i1 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i2 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i3 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i4 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i5 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i6 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i7 = Var(within=Integers,bounds=(1,8),initialize=1)
m.i8 = Var(within=Integers,bounds=(1,8),initialize=1)
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

m.obj = Objective(expr=   m.i1 + m.i2 + m.i3 + m.i4 + m.i5 + m.i6 + m.i7 + m.i8, sense=minimize)

m.c1 = Constraint(expr= - m.i1 + m.i2 - 9*m.b9 <= -2)

m.c2 = Constraint(expr= - m.i1 + m.i3 - 9*m.b10 <= -2)

m.c3 = Constraint(expr= - m.i1 + m.i4 - 9*m.b11 <= -2)

m.c4 = Constraint(expr=   m.i1 - m.i2 - 9*m.b12 <= -2)

m.c5 = Constraint(expr= - m.i2 + m.i3 - 9*m.b13 <= -2)

m.c6 = Constraint(expr= - m.i2 + m.i5 - 9*m.b14 <= -2)

m.c7 = Constraint(expr= - m.i2 + m.i6 - 9*m.b15 <= -2)

m.c8 = Constraint(expr=   m.i1 - m.i3 - 9*m.b16 <= -2)

m.c9 = Constraint(expr=   m.i2 - m.i3 - 9*m.b17 <= -2)

m.c10 = Constraint(expr= - m.i3 + m.i4 - 9*m.b18 <= -2)

m.c11 = Constraint(expr= - m.i3 + m.i5 - 9*m.b19 <= -2)

m.c12 = Constraint(expr= - m.i3 + m.i6 - 9*m.b20 <= -2)

m.c13 = Constraint(expr= - m.i3 + m.i7 - 9*m.b21 <= -2)

m.c14 = Constraint(expr=   m.i1 - m.i4 - 9*m.b22 <= -2)

m.c15 = Constraint(expr=   m.i3 - m.i4 - 9*m.b23 <= -2)

m.c16 = Constraint(expr= - m.i4 + m.i6 - 9*m.b24 <= -2)

m.c17 = Constraint(expr= - m.i4 + m.i7 - 9*m.b25 <= -2)

m.c18 = Constraint(expr=   m.i2 - m.i5 - 9*m.b26 <= -2)

m.c19 = Constraint(expr=   m.i3 - m.i5 - 9*m.b27 <= -2)

m.c20 = Constraint(expr= - m.i5 + m.i6 - 9*m.b28 <= -2)

m.c21 = Constraint(expr= - m.i5 + m.i8 - 9*m.b29 <= -2)

m.c22 = Constraint(expr=   m.i2 - m.i6 - 9*m.b30 <= -2)

m.c23 = Constraint(expr=   m.i3 - m.i6 - 9*m.b31 <= -2)

m.c24 = Constraint(expr=   m.i4 - m.i6 - 9*m.b32 <= -2)

m.c25 = Constraint(expr=   m.i5 - m.i6 - 9*m.b33 <= -2)

m.c26 = Constraint(expr= - m.i6 + m.i7 - 9*m.b34 <= -2)

m.c27 = Constraint(expr= - m.i6 + m.i8 - 9*m.b35 <= -2)

m.c28 = Constraint(expr=   m.i3 - m.i7 - 9*m.b36 <= -2)

m.c29 = Constraint(expr=   m.i4 - m.i7 - 9*m.b37 <= -2)

m.c30 = Constraint(expr=   m.i6 - m.i7 - 9*m.b38 <= -2)

m.c31 = Constraint(expr= - m.i7 + m.i8 - 9*m.b39 <= -2)

m.c32 = Constraint(expr=   m.i5 - m.i8 - 9*m.b40 <= -2)

m.c33 = Constraint(expr=   m.i6 - m.i8 - 9*m.b41 <= -2)

m.c34 = Constraint(expr=   m.i7 - m.i8 - 9*m.b42 <= -2)

m.c35 = Constraint(expr= - m.i1 + m.i2 + 9*m.b12 >= 2)

m.c36 = Constraint(expr= - m.i1 + m.i3 + 9*m.b16 >= 2)

m.c37 = Constraint(expr= - m.i1 + m.i4 + 9*m.b22 >= 2)

m.c38 = Constraint(expr=   m.i1 - m.i2 + 9*m.b9 >= 2)

m.c39 = Constraint(expr= - m.i2 + m.i3 + 9*m.b17 >= 2)

m.c40 = Constraint(expr= - m.i2 + m.i5 + 9*m.b26 >= 2)

m.c41 = Constraint(expr= - m.i2 + m.i6 + 9*m.b30 >= 2)

m.c42 = Constraint(expr=   m.i1 - m.i3 + 9*m.b10 >= 2)

m.c43 = Constraint(expr=   m.i2 - m.i3 + 9*m.b13 >= 2)

m.c44 = Constraint(expr= - m.i3 + m.i4 + 9*m.b23 >= 2)

m.c45 = Constraint(expr= - m.i3 + m.i5 + 9*m.b27 >= 2)

m.c46 = Constraint(expr= - m.i3 + m.i6 + 9*m.b31 >= 2)

m.c47 = Constraint(expr= - m.i3 + m.i7 + 9*m.b36 >= 2)

m.c48 = Constraint(expr=   m.i1 - m.i4 + 9*m.b11 >= 2)

m.c49 = Constraint(expr=   m.i3 - m.i4 + 9*m.b18 >= 2)

m.c50 = Constraint(expr= - m.i4 + m.i6 + 9*m.b32 >= 2)

m.c51 = Constraint(expr= - m.i4 + m.i7 + 9*m.b37 >= 2)

m.c52 = Constraint(expr=   m.i2 - m.i5 + 9*m.b14 >= 2)

m.c53 = Constraint(expr=   m.i3 - m.i5 + 9*m.b19 >= 2)

m.c54 = Constraint(expr= - m.i5 + m.i6 + 9*m.b33 >= 2)

m.c55 = Constraint(expr= - m.i5 + m.i8 + 9*m.b40 >= 2)

m.c56 = Constraint(expr=   m.i2 - m.i6 + 9*m.b15 >= 2)

m.c57 = Constraint(expr=   m.i3 - m.i6 + 9*m.b20 >= 2)

m.c58 = Constraint(expr=   m.i4 - m.i6 + 9*m.b24 >= 2)

m.c59 = Constraint(expr=   m.i5 - m.i6 + 9*m.b28 >= 2)

m.c60 = Constraint(expr= - m.i6 + m.i7 + 9*m.b38 >= 2)

m.c61 = Constraint(expr= - m.i6 + m.i8 + 9*m.b41 >= 2)

m.c62 = Constraint(expr=   m.i3 - m.i7 + 9*m.b21 >= 2)

m.c63 = Constraint(expr=   m.i4 - m.i7 + 9*m.b25 >= 2)

m.c64 = Constraint(expr=   m.i6 - m.i7 + 9*m.b34 >= 2)

m.c65 = Constraint(expr= - m.i7 + m.i8 + 9*m.b42 >= 2)

m.c66 = Constraint(expr=   m.i5 - m.i8 + 9*m.b29 >= 2)

m.c67 = Constraint(expr=   m.i6 - m.i8 + 9*m.b35 >= 2)

m.c68 = Constraint(expr=   m.i7 - m.i8 + 9*m.b39 >= 2)

m.c69 = Constraint(expr=   m.b9 + m.b12 == 1)

m.c70 = Constraint(expr=   m.b10 + m.b16 == 1)

m.c71 = Constraint(expr=   m.b11 + m.b22 == 1)

m.c72 = Constraint(expr=   m.b9 + m.b12 == 1)

m.c73 = Constraint(expr=   m.b13 + m.b17 == 1)

m.c74 = Constraint(expr=   m.b14 + m.b26 == 1)

m.c75 = Constraint(expr=   m.b15 + m.b30 == 1)

m.c76 = Constraint(expr=   m.b10 + m.b16 == 1)

m.c77 = Constraint(expr=   m.b13 + m.b17 == 1)

m.c78 = Constraint(expr=   m.b18 + m.b23 == 1)

m.c79 = Constraint(expr=   m.b19 + m.b27 == 1)

m.c80 = Constraint(expr=   m.b20 + m.b31 == 1)

m.c81 = Constraint(expr=   m.b21 + m.b36 == 1)

m.c82 = Constraint(expr=   m.b11 + m.b22 == 1)

m.c83 = Constraint(expr=   m.b18 + m.b23 == 1)

m.c84 = Constraint(expr=   m.b24 + m.b32 == 1)

m.c85 = Constraint(expr=   m.b25 + m.b37 == 1)

m.c86 = Constraint(expr=   m.b14 + m.b26 == 1)

m.c87 = Constraint(expr=   m.b19 + m.b27 == 1)

m.c88 = Constraint(expr=   m.b28 + m.b33 == 1)

m.c89 = Constraint(expr=   m.b29 + m.b40 == 1)

m.c90 = Constraint(expr=   m.b15 + m.b30 == 1)

m.c91 = Constraint(expr=   m.b20 + m.b31 == 1)

m.c92 = Constraint(expr=   m.b24 + m.b32 == 1)

m.c93 = Constraint(expr=   m.b28 + m.b33 == 1)

m.c94 = Constraint(expr=   m.b34 + m.b38 == 1)

m.c95 = Constraint(expr=   m.b35 + m.b41 == 1)

m.c96 = Constraint(expr=   m.b21 + m.b36 == 1)

m.c97 = Constraint(expr=   m.b25 + m.b37 == 1)

m.c98 = Constraint(expr=   m.b34 + m.b38 == 1)

m.c99 = Constraint(expr=   m.b39 + m.b42 == 1)

m.c100 = Constraint(expr=   m.b29 + m.b40 == 1)

m.c101 = Constraint(expr=   m.b35 + m.b41 == 1)

m.c102 = Constraint(expr=   m.b39 + m.b42 == 1)

m.c103 = Constraint(expr=   m.i1 - m.b43 - 2*m.b44 - 3*m.b45 - 4*m.b46 - 5*m.b47 - 6*m.b48 - 7*m.b49 - 8*m.b50 == 0)

m.c104 = Constraint(expr=   m.i2 - m.b51 - 2*m.b52 - 3*m.b53 - 4*m.b54 - 5*m.b55 - 6*m.b56 - 7*m.b57 - 8*m.b58 == 0)

m.c105 = Constraint(expr=   m.i3 - m.b59 - 2*m.b60 - 3*m.b61 - 4*m.b62 - 5*m.b63 - 6*m.b64 - 7*m.b65 - 8*m.b66 == 0)

m.c106 = Constraint(expr=   m.i4 - m.b67 - 2*m.b68 - 3*m.b69 - 4*m.b70 - 5*m.b71 - 6*m.b72 - 7*m.b73 - 8*m.b74 == 0)

m.c107 = Constraint(expr=   m.i5 - m.b75 - 2*m.b76 - 3*m.b77 - 4*m.b78 - 5*m.b79 - 6*m.b80 - 7*m.b81 - 8*m.b82 == 0)

m.c108 = Constraint(expr=   m.i6 - m.b83 - 2*m.b84 - 3*m.b85 - 4*m.b86 - 5*m.b87 - 6*m.b88 - 7*m.b89 - 8*m.b90 == 0)

m.c109 = Constraint(expr=   m.i7 - m.b91 - 2*m.b92 - 3*m.b93 - 4*m.b94 - 5*m.b95 - 6*m.b96 - 7*m.b97 - 8*m.b98 == 0)

m.c110 = Constraint(expr=   m.i8 - m.b99 - 2*m.b100 - 3*m.b101 - 4*m.b102 - 5*m.b103 - 6*m.b104 - 7*m.b105 - 8*m.b106
                          == 0)

m.c111 = Constraint(expr=   m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50 == 1)

m.c112 = Constraint(expr=   m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 == 1)

m.c113 = Constraint(expr=   m.b59 + m.b60 + m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 == 1)

m.c114 = Constraint(expr=   m.b67 + m.b68 + m.b69 + m.b70 + m.b71 + m.b72 + m.b73 + m.b74 == 1)

m.c115 = Constraint(expr=   m.b75 + m.b76 + m.b77 + m.b78 + m.b79 + m.b80 + m.b81 + m.b82 == 1)

m.c116 = Constraint(expr=   m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 == 1)

m.c117 = Constraint(expr=   m.b91 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 == 1)

m.c118 = Constraint(expr=   m.b99 + m.b100 + m.b101 + m.b102 + m.b103 + m.b104 + m.b105 + m.b106 == 1)

m.c119 = Constraint(expr=   m.b43 + m.b51 + m.b59 + m.b67 + m.b75 + m.b83 + m.b91 + m.b99 == 1)

m.c120 = Constraint(expr=   m.b44 + m.b52 + m.b60 + m.b68 + m.b76 + m.b84 + m.b92 + m.b100 == 1)

m.c121 = Constraint(expr=   m.b45 + m.b53 + m.b61 + m.b69 + m.b77 + m.b85 + m.b93 + m.b101 == 1)

m.c122 = Constraint(expr=   m.b46 + m.b54 + m.b62 + m.b70 + m.b78 + m.b86 + m.b94 + m.b102 == 1)

m.c123 = Constraint(expr=   m.b47 + m.b55 + m.b63 + m.b71 + m.b79 + m.b87 + m.b95 + m.b103 == 1)

m.c124 = Constraint(expr=   m.b48 + m.b56 + m.b64 + m.b72 + m.b80 + m.b88 + m.b96 + m.b104 == 1)

m.c125 = Constraint(expr=   m.b49 + m.b57 + m.b65 + m.b73 + m.b81 + m.b89 + m.b97 + m.b105 == 1)

m.c126 = Constraint(expr=   m.b50 + m.b58 + m.b66 + m.b74 + m.b82 + m.b90 + m.b98 + m.b106 == 1)
