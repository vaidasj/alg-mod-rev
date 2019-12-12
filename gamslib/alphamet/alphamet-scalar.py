#  MIP written by GAMS Convert at 12/13/18 10:31:09
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         42       39        3        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        118       11      100        7        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        346      346        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


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
m.x102 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x103 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x104 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x105 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x106 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x107 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x108 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x109 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x110 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x111 = Var(within=Reals,bounds=(None,None),initialize=0)
m.i112 = Var(within=Integers,bounds=(0,100),initialize=0)
m.i113 = Var(within=Integers,bounds=(0,100),initialize=0)
m.i114 = Var(within=Integers,bounds=(0,100),initialize=0)
m.i115 = Var(within=Integers,bounds=(0,100),initialize=0)
m.i116 = Var(within=Integers,bounds=(0,100),initialize=0)
m.i117 = Var(within=Integers,bounds=(0,100),initialize=0)
m.i118 = Var(within=Integers,bounds=(0,100),initialize=0)

m.obj = Objective(expr=   m.i112 + m.i113 + m.i114 + m.i115 + m.i116 + m.i117 + m.i118, sense=minimize)

m.c2 = Constraint(expr=   m.x108 + m.x111 - 10*m.i112 == 0)

m.c3 = Constraint(expr=   m.x104 + m.x108 + m.i112 - 10*m.i113 == 0)

m.c4 = Constraint(expr=   2*m.x102 + m.x104 - m.x108 + m.i113 - 10*m.i114 == 0)

m.c5 = Constraint(expr=   m.x103 + m.x105 - m.x106 + m.x110 + m.i114 - 10*m.i115 == 0)

m.c6 = Constraint(expr= - m.x102 + m.x104 + 2*m.x105 + m.i115 - 10*m.i116 == 0)

m.c7 = Constraint(expr=   2*m.x103 + m.x104 - m.x105 + m.i116 - 10*m.i117 == 0)

m.c8 = Constraint(expr=   m.x102 - m.x106 + m.x109 + m.i117 - 10*m.i118 == 0)

m.c9 = Constraint(expr= - m.x109 + m.i118 == 0)

m.c10 = Constraint(expr= - m.b3 - 2*m.b4 - 3*m.b5 - 4*m.b6 - 5*m.b7 - 6*m.b8 - 7*m.b9 - 8*m.b10 - 9*m.b11 + m.x102 == 0)

m.c11 = Constraint(expr= - m.b13 - 2*m.b14 - 3*m.b15 - 4*m.b16 - 5*m.b17 - 6*m.b18 - 7*m.b19 - 8*m.b20 - 9*m.b21
                         + m.x103 == 0)

m.c12 = Constraint(expr= - m.b23 - 2*m.b24 - 3*m.b25 - 4*m.b26 - 5*m.b27 - 6*m.b28 - 7*m.b29 - 8*m.b30 - 9*m.b31
                         + m.x104 == 0)

m.c13 = Constraint(expr= - m.b33 - 2*m.b34 - 3*m.b35 - 4*m.b36 - 5*m.b37 - 6*m.b38 - 7*m.b39 - 8*m.b40 - 9*m.b41
                         + m.x105 == 0)

m.c14 = Constraint(expr= - m.b43 - 2*m.b44 - 3*m.b45 - 4*m.b46 - 5*m.b47 - 6*m.b48 - 7*m.b49 - 8*m.b50 - 9*m.b51
                         + m.x106 == 0)

m.c15 = Constraint(expr= - m.b53 - 2*m.b54 - 3*m.b55 - 4*m.b56 - 5*m.b57 - 6*m.b58 - 7*m.b59 - 8*m.b60 - 9*m.b61
                         + m.x107 == 0)

m.c16 = Constraint(expr= - m.b63 - 2*m.b64 - 3*m.b65 - 4*m.b66 - 5*m.b67 - 6*m.b68 - 7*m.b69 - 8*m.b70 - 9*m.b71
                         + m.x108 == 0)

m.c17 = Constraint(expr= - m.b73 - 2*m.b74 - 3*m.b75 - 4*m.b76 - 5*m.b77 - 6*m.b78 - 7*m.b79 - 8*m.b80 - 9*m.b81
                         + m.x109 == 0)

m.c18 = Constraint(expr= - m.b83 - 2*m.b84 - 3*m.b85 - 4*m.b86 - 5*m.b87 - 6*m.b88 - 7*m.b89 - 8*m.b90 - 9*m.b91
                         + m.x110 == 0)

m.c19 = Constraint(expr= - m.b93 - 2*m.b94 - 3*m.b95 - 4*m.b96 - 5*m.b97 - 6*m.b98 - 7*m.b99 - 8*m.b100 - 9*m.b101
                         + m.x111 == 0)

m.c20 = Constraint(expr=   m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 == 1)

m.c21 = Constraint(expr=   m.b12 + m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 == 1)

m.c22 = Constraint(expr=   m.b22 + m.b23 + m.b24 + m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 == 1)

m.c23 = Constraint(expr=   m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 + m.b41 == 1)

m.c24 = Constraint(expr=   m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49 + m.b50 + m.b51 == 1)

m.c25 = Constraint(expr=   m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61 == 1)

m.c26 = Constraint(expr=   m.b62 + m.b63 + m.b64 + m.b65 + m.b66 + m.b67 + m.b68 + m.b69 + m.b70 + m.b71 == 1)

m.c27 = Constraint(expr=   m.b72 + m.b73 + m.b74 + m.b75 + m.b76 + m.b77 + m.b78 + m.b79 + m.b80 + m.b81 == 1)

m.c28 = Constraint(expr=   m.b82 + m.b83 + m.b84 + m.b85 + m.b86 + m.b87 + m.b88 + m.b89 + m.b90 + m.b91 == 1)

m.c29 = Constraint(expr=   m.b92 + m.b93 + m.b94 + m.b95 + m.b96 + m.b97 + m.b98 + m.b99 + m.b100 + m.b101 == 1)

m.c30 = Constraint(expr=   m.b2 + m.b12 + m.b22 + m.b32 + m.b42 + m.b52 + m.b62 + m.b72 + m.b82 + m.b92 == 1)

m.c31 = Constraint(expr=   m.b3 + m.b13 + m.b23 + m.b33 + m.b43 + m.b53 + m.b63 + m.b73 + m.b83 + m.b93 == 1)

m.c32 = Constraint(expr=   m.b4 + m.b14 + m.b24 + m.b34 + m.b44 + m.b54 + m.b64 + m.b74 + m.b84 + m.b94 == 1)

m.c33 = Constraint(expr=   m.b5 + m.b15 + m.b25 + m.b35 + m.b45 + m.b55 + m.b65 + m.b75 + m.b85 + m.b95 == 1)

m.c34 = Constraint(expr=   m.b6 + m.b16 + m.b26 + m.b36 + m.b46 + m.b56 + m.b66 + m.b76 + m.b86 + m.b96 == 1)

m.c35 = Constraint(expr=   m.b7 + m.b17 + m.b27 + m.b37 + m.b47 + m.b57 + m.b67 + m.b77 + m.b87 + m.b97 == 1)

m.c36 = Constraint(expr=   m.b8 + m.b18 + m.b28 + m.b38 + m.b48 + m.b58 + m.b68 + m.b78 + m.b88 + m.b98 == 1)

m.c37 = Constraint(expr=   m.b9 + m.b19 + m.b29 + m.b39 + m.b49 + m.b59 + m.b69 + m.b79 + m.b89 + m.b99 == 1)

m.c38 = Constraint(expr=   m.b10 + m.b20 + m.b30 + m.b40 + m.b50 + m.b60 + m.b70 + m.b80 + m.b90 + m.b100 == 1)

m.c39 = Constraint(expr=   m.b11 + m.b21 + m.b31 + m.b41 + m.b51 + m.b61 + m.b71 + m.b81 + m.b91 + m.b101 == 1)

m.c40 = Constraint(expr=   m.x102 >= 1)

m.c41 = Constraint(expr=   m.x104 >= 1)

m.c42 = Constraint(expr=   m.x109 >= 1)
