#  MIP written by GAMS Convert at 12/13/18 10:31:11
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


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b12 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b23 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b34 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b45 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b56 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b67 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b78 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b89 = Var(within=Binary,bounds=(0,0),initialize=0)
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
m.b100 = Var(within=Binary,bounds=(0,0),initialize=0)
m.x102 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x109 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x110 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   3*m.b2 + 5*m.b3 + 48*m.b4 + 48*m.b5 + 8*m.b6 + 8*m.b7 + 5*m.b8 + 5*m.b9 + 3*m.b10 + 3*m.b11
                        + 3*m.b13 + 48*m.b14 + 48*m.b15 + 8*m.b16 + 8*m.b17 + 5*m.b18 + 5*m.b19 + 5*m.b21 + 3*m.b22
                        + 72*m.b24 + 72*m.b25 + 48*m.b26 + 48*m.b27 + 24*m.b28 + 24*m.b29 + 3*m.b30 + 48*m.b31
                        + 48*m.b32 + 74*m.b33 + 6*m.b36 + 6*m.b37 + 12*m.b38 + 12*m.b39 + 48*m.b40 + 48*m.b41 + 48*m.b42
                        + 74*m.b43 + 6*m.b46 + 6*m.b47 + 12*m.b48 + 12*m.b49 + 48*m.b50 + 8*m.b51 + 8*m.b52 + 50*m.b53
                        + 6*m.b54 + 6*m.b55 + 8*m.b58 + 8*m.b59 + 8*m.b60 + 8*m.b61 + 8*m.b62 + 50*m.b63 + 6*m.b64
                        + 6*m.b65 + 8*m.b68 + 8*m.b69 + 8*m.b70 + 5*m.b71 + 5*m.b72 + 26*m.b73 + 12*m.b74 + 12*m.b75
                        + 8*m.b76 + 8*m.b77 + 5*m.b80 + 5*m.b81 + 5*m.b82 + 26*m.b83 + 12*m.b84 + 12*m.b85 + 8*m.b86
                        + 8*m.b87 + 5*m.b90 + 3*m.b91 + 3*m.b93 + 48*m.b94 + 48*m.b95 + 8*m.b96 + 8*m.b97 + 5*m.b98
                        + 5*m.b99, sense=minimize)

m.c2 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 == 1)

m.c3 = Constraint(expr=   m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 == 1)

m.c4 = Constraint(expr=   m.b21 + m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 == 1)

m.c5 = Constraint(expr=   m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 == 1)

m.c6 = Constraint(expr=   m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50 == 1)

m.c7 = Constraint(expr=   m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 == 1)

m.c8 = Constraint(expr=   m.b61 + m.b62 + m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 + m.b70 == 1)

m.c9 = Constraint(expr=   m.b71 + m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 + m.b78 + m.b79 + m.b80 == 1)

m.c10 = Constraint(expr=   m.b81 + m.b82 + m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 == 1)

m.c11 = Constraint(expr=   m.b91 + m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 == 1)

m.c12 = Constraint(expr=   m.b1 + m.b11 + m.b21 + m.b31 + m.b41 + m.b51 + m.b61 + m.b71 + m.b81 + m.b91 == 1)

m.c13 = Constraint(expr=   m.b2 + m.b12 + m.b22 + m.b32 + m.b42 + m.b52 + m.b62 + m.b72 + m.b82 + m.b92 == 1)

m.c14 = Constraint(expr=   m.b3 + m.b13 + m.b23 + m.b33 + m.b43 + m.b53 + m.b63 + m.b73 + m.b83 + m.b93 == 1)

m.c15 = Constraint(expr=   m.b4 + m.b14 + m.b24 + m.b34 + m.b44 + m.b54 + m.b64 + m.b74 + m.b84 + m.b94 == 1)

m.c16 = Constraint(expr=   m.b5 + m.b15 + m.b25 + m.b35 + m.b45 + m.b55 + m.b65 + m.b75 + m.b85 + m.b95 == 1)

m.c17 = Constraint(expr=   m.b6 + m.b16 + m.b26 + m.b36 + m.b46 + m.b56 + m.b66 + m.b76 + m.b86 + m.b96 == 1)

m.c18 = Constraint(expr=   m.b7 + m.b17 + m.b27 + m.b37 + m.b47 + m.b57 + m.b67 + m.b77 + m.b87 + m.b97 == 1)

m.c19 = Constraint(expr=   m.b8 + m.b18 + m.b28 + m.b38 + m.b48 + m.b58 + m.b68 + m.b78 + m.b88 + m.b98 == 1)

m.c20 = Constraint(expr=   m.b9 + m.b19 + m.b29 + m.b39 + m.b49 + m.b59 + m.b69 + m.b79 + m.b89 + m.b99 == 1)

m.c21 = Constraint(expr=   m.b10 + m.b20 + m.b30 + m.b40 + m.b50 + m.b60 + m.b70 + m.b80 + m.b90 + m.b100 == 1)

m.c22 = Constraint(expr=   10*m.b12 <= 9)

m.c23 = Constraint(expr=   10*m.b13 + m.x102 - m.x103 <= 9)

m.c24 = Constraint(expr=   10*m.b14 + m.x102 - m.x104 <= 9)

m.c25 = Constraint(expr=   10*m.b15 + m.x102 - m.x105 <= 9)

m.c26 = Constraint(expr=   10*m.b16 + m.x102 - m.x106 <= 9)

m.c27 = Constraint(expr=   10*m.b17 + m.x102 - m.x107 <= 9)

m.c28 = Constraint(expr=   10*m.b18 + m.x102 - m.x108 <= 9)

m.c29 = Constraint(expr=   10*m.b19 + m.x102 - m.x109 <= 9)

m.c30 = Constraint(expr=   10*m.b20 + m.x102 - m.x110 <= 9)

m.c31 = Constraint(expr=   10*m.b22 - m.x102 + m.x103 <= 9)

m.c32 = Constraint(expr=   10*m.b23 <= 9)

m.c33 = Constraint(expr=   10*m.b24 + m.x103 - m.x104 <= 9)

m.c34 = Constraint(expr=   10*m.b25 + m.x103 - m.x105 <= 9)

m.c35 = Constraint(expr=   10*m.b26 + m.x103 - m.x106 <= 9)

m.c36 = Constraint(expr=   10*m.b27 + m.x103 - m.x107 <= 9)

m.c37 = Constraint(expr=   10*m.b28 + m.x103 - m.x108 <= 9)

m.c38 = Constraint(expr=   10*m.b29 + m.x103 - m.x109 <= 9)

m.c39 = Constraint(expr=   10*m.b30 + m.x103 - m.x110 <= 9)

m.c40 = Constraint(expr=   10*m.b32 - m.x102 + m.x104 <= 9)

m.c41 = Constraint(expr=   10*m.b33 - m.x103 + m.x104 <= 9)

m.c42 = Constraint(expr=   10*m.b34 <= 9)

m.c43 = Constraint(expr=   10*m.b35 + m.x104 - m.x105 <= 9)

m.c44 = Constraint(expr=   10*m.b36 + m.x104 - m.x106 <= 9)

m.c45 = Constraint(expr=   10*m.b37 + m.x104 - m.x107 <= 9)

m.c46 = Constraint(expr=   10*m.b38 + m.x104 - m.x108 <= 9)

m.c47 = Constraint(expr=   10*m.b39 + m.x104 - m.x109 <= 9)

m.c48 = Constraint(expr=   10*m.b40 + m.x104 - m.x110 <= 9)

m.c49 = Constraint(expr=   10*m.b42 - m.x102 + m.x105 <= 9)

m.c50 = Constraint(expr=   10*m.b43 - m.x103 + m.x105 <= 9)

m.c51 = Constraint(expr=   10*m.b44 - m.x104 + m.x105 <= 9)

m.c52 = Constraint(expr=   10*m.b45 <= 9)

m.c53 = Constraint(expr=   10*m.b46 + m.x105 - m.x106 <= 9)

m.c54 = Constraint(expr=   10*m.b47 + m.x105 - m.x107 <= 9)

m.c55 = Constraint(expr=   10*m.b48 + m.x105 - m.x108 <= 9)

m.c56 = Constraint(expr=   10*m.b49 + m.x105 - m.x109 <= 9)

m.c57 = Constraint(expr=   10*m.b50 + m.x105 - m.x110 <= 9)

m.c58 = Constraint(expr=   10*m.b52 - m.x102 + m.x106 <= 9)

m.c59 = Constraint(expr=   10*m.b53 - m.x103 + m.x106 <= 9)

m.c60 = Constraint(expr=   10*m.b54 - m.x104 + m.x106 <= 9)

m.c61 = Constraint(expr=   10*m.b55 - m.x105 + m.x106 <= 9)

m.c62 = Constraint(expr=   10*m.b56 <= 9)

m.c63 = Constraint(expr=   10*m.b57 + m.x106 - m.x107 <= 9)

m.c64 = Constraint(expr=   10*m.b58 + m.x106 - m.x108 <= 9)

m.c65 = Constraint(expr=   10*m.b59 + m.x106 - m.x109 <= 9)

m.c66 = Constraint(expr=   10*m.b60 + m.x106 - m.x110 <= 9)

m.c67 = Constraint(expr=   10*m.b62 - m.x102 + m.x107 <= 9)

m.c68 = Constraint(expr=   10*m.b63 - m.x103 + m.x107 <= 9)

m.c69 = Constraint(expr=   10*m.b64 - m.x104 + m.x107 <= 9)

m.c70 = Constraint(expr=   10*m.b65 - m.x105 + m.x107 <= 9)

m.c71 = Constraint(expr=   10*m.b66 - m.x106 + m.x107 <= 9)

m.c72 = Constraint(expr=   10*m.b67 <= 9)

m.c73 = Constraint(expr=   10*m.b68 + m.x107 - m.x108 <= 9)

m.c74 = Constraint(expr=   10*m.b69 + m.x107 - m.x109 <= 9)

m.c75 = Constraint(expr=   10*m.b70 + m.x107 - m.x110 <= 9)

m.c76 = Constraint(expr=   10*m.b72 - m.x102 + m.x108 <= 9)

m.c77 = Constraint(expr=   10*m.b73 - m.x103 + m.x108 <= 9)

m.c78 = Constraint(expr=   10*m.b74 - m.x104 + m.x108 <= 9)

m.c79 = Constraint(expr=   10*m.b75 - m.x105 + m.x108 <= 9)

m.c80 = Constraint(expr=   10*m.b76 - m.x106 + m.x108 <= 9)

m.c81 = Constraint(expr=   10*m.b77 - m.x107 + m.x108 <= 9)

m.c82 = Constraint(expr=   10*m.b78 <= 9)

m.c83 = Constraint(expr=   10*m.b79 + m.x108 - m.x109 <= 9)

m.c84 = Constraint(expr=   10*m.b80 + m.x108 - m.x110 <= 9)

m.c85 = Constraint(expr=   10*m.b82 - m.x102 + m.x109 <= 9)

m.c86 = Constraint(expr=   10*m.b83 - m.x103 + m.x109 <= 9)

m.c87 = Constraint(expr=   10*m.b84 - m.x104 + m.x109 <= 9)

m.c88 = Constraint(expr=   10*m.b85 - m.x105 + m.x109 <= 9)

m.c89 = Constraint(expr=   10*m.b86 - m.x106 + m.x109 <= 9)

m.c90 = Constraint(expr=   10*m.b87 - m.x107 + m.x109 <= 9)

m.c91 = Constraint(expr=   10*m.b88 - m.x108 + m.x109 <= 9)

m.c92 = Constraint(expr=   10*m.b89 <= 9)

m.c93 = Constraint(expr=   10*m.b90 + m.x109 - m.x110 <= 9)

m.c94 = Constraint(expr=   10*m.b92 - m.x102 + m.x110 <= 9)

m.c95 = Constraint(expr=   10*m.b93 - m.x103 + m.x110 <= 9)

m.c96 = Constraint(expr=   10*m.b94 - m.x104 + m.x110 <= 9)

m.c97 = Constraint(expr=   10*m.b95 - m.x105 + m.x110 <= 9)

m.c98 = Constraint(expr=   10*m.b96 - m.x106 + m.x110 <= 9)

m.c99 = Constraint(expr=   10*m.b97 - m.x107 + m.x110 <= 9)

m.c100 = Constraint(expr=   10*m.b98 - m.x108 + m.x110 <= 9)

m.c101 = Constraint(expr=   10*m.b99 - m.x109 + m.x110 <= 9)

m.c102 = Constraint(expr=   10*m.b100 <= 9)
