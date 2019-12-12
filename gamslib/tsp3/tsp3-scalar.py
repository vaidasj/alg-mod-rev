#  MIP written by GAMS Convert at 12/13/18 10:31:12
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


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b26 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b29 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b31 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b32 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b33 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b34 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b35 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b36 = Var(within=Binary,bounds=(0,0),initialize=0)

m.obj = Objective(expr=   3*m.b2 + 5*m.b3 + 48*m.b4 + 48*m.b5 + 8*m.b6 + 3*m.b7 + 3*m.b9 + 48*m.b10 + 48*m.b11 + 8*m.b12
                        + 5*m.b13 + 3*m.b14 + 72*m.b16 + 72*m.b17 + 48*m.b18 + 48*m.b19 + 48*m.b20 + 74*m.b21 + 6*m.b24
                        + 48*m.b25 + 48*m.b26 + 74*m.b27 + 6*m.b30 + 8*m.b31 + 8*m.b32 + 50*m.b33 + 6*m.b34 + 6*m.b35
                       , sense=minimize)

m.c2 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 == 1)

m.c3 = Constraint(expr=   m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 == 1)

m.c4 = Constraint(expr=   m.b13 + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 == 1)

m.c5 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 == 1)

m.c6 = Constraint(expr=   m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 == 1)

m.c7 = Constraint(expr=   m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 == 1)

m.c8 = Constraint(expr=   m.b1 + m.b7 + m.b13 + m.b19 + m.b25 + m.b31 == 1)

m.c9 = Constraint(expr=   m.b2 + m.b8 + m.b14 + m.b20 + m.b26 + m.b32 == 1)

m.c10 = Constraint(expr=   m.b3 + m.b9 + m.b15 + m.b21 + m.b27 + m.b33 == 1)

m.c11 = Constraint(expr=   m.b4 + m.b10 + m.b16 + m.b22 + m.b28 + m.b34 == 1)

m.c12 = Constraint(expr=   m.b5 + m.b11 + m.b17 + m.b23 + m.b29 + m.b35 == 1)

m.c13 = Constraint(expr=   m.b6 + m.b12 + m.b18 + m.b24 + m.b30 + m.b36 == 1)

m.c14 = Constraint(expr=   m.b2 + m.b3 + m.b4 + m.b5 + m.b6 >= 1)

m.c15 = Constraint(expr=   m.b3 + m.b4 + m.b5 + m.b6 + m.b9 + m.b10 + m.b11 + m.b12 >= 1)

m.c16 = Constraint(expr=   m.b7 + m.b9 + m.b10 + m.b11 + m.b12 >= 1)

m.c17 = Constraint(expr=   m.b2 + m.b4 + m.b5 + m.b6 + m.b14 + m.b16 + m.b17 + m.b18 >= 1)

m.c18 = Constraint(expr=   m.b13 + m.b14 + m.b16 + m.b17 + m.b18 >= 1)

m.c19 = Constraint(expr=   m.b4 + m.b5 + m.b6 + m.b10 + m.b11 + m.b12 + m.b16 + m.b17 + m.b18 >= 1)

m.c20 = Constraint(expr=   m.b7 + m.b10 + m.b11 + m.b12 + m.b13 + m.b16 + m.b17 + m.b18 >= 1)

m.c21 = Constraint(expr=   m.b2 + m.b3 + m.b5 + m.b6 + m.b20 + m.b21 + m.b23 + m.b24 >= 1)

m.c22 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b23 + m.b24 >= 1)

m.c23 = Constraint(expr=   m.b3 + m.b5 + m.b6 + m.b9 + m.b11 + m.b12 + m.b21 + m.b23 + m.b24 >= 1)

m.c24 = Constraint(expr=   m.b7 + m.b9 + m.b11 + m.b12 + m.b19 + m.b21 + m.b23 + m.b24 >= 1)

m.c25 = Constraint(expr=   m.b2 + m.b5 + m.b6 + m.b14 + m.b17 + m.b18 + m.b20 + m.b23 + m.b24 >= 1)

m.c26 = Constraint(expr=   m.b13 + m.b14 + m.b17 + m.b18 + m.b19 + m.b20 + m.b23 + m.b24 >= 1)

m.c27 = Constraint(expr=   m.b5 + m.b6 + m.b11 + m.b12 + m.b17 + m.b18 + m.b23 + m.b24 >= 1)

m.c28 = Constraint(expr=   m.b7 + m.b11 + m.b12 + m.b13 + m.b17 + m.b18 + m.b19 + m.b23 + m.b24 >= 1)

m.c29 = Constraint(expr=   m.b2 + m.b3 + m.b4 + m.b6 + m.b26 + m.b27 + m.b28 + m.b30 >= 1)

m.c30 = Constraint(expr=   m.b25 + m.b26 + m.b27 + m.b28 + m.b30 >= 1)

m.c31 = Constraint(expr=   m.b3 + m.b4 + m.b6 + m.b9 + m.b10 + m.b12 + m.b27 + m.b28 + m.b30 >= 1)

m.c32 = Constraint(expr=   m.b7 + m.b9 + m.b10 + m.b12 + m.b25 + m.b27 + m.b28 + m.b30 >= 1)

m.c33 = Constraint(expr=   m.b2 + m.b4 + m.b6 + m.b14 + m.b16 + m.b18 + m.b26 + m.b28 + m.b30 >= 1)

m.c34 = Constraint(expr=   m.b13 + m.b14 + m.b16 + m.b18 + m.b25 + m.b26 + m.b28 + m.b30 >= 1)

m.c35 = Constraint(expr=   m.b4 + m.b6 + m.b10 + m.b12 + m.b16 + m.b18 + m.b28 + m.b30 >= 1)

m.c36 = Constraint(expr=   m.b7 + m.b10 + m.b12 + m.b13 + m.b16 + m.b18 + m.b25 + m.b28 + m.b30 >= 1)

m.c37 = Constraint(expr=   m.b2 + m.b3 + m.b6 + m.b20 + m.b21 + m.b24 + m.b26 + m.b27 + m.b30 >= 1)

m.c38 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b24 + m.b25 + m.b26 + m.b27 + m.b30 >= 1)

m.c39 = Constraint(expr=   m.b3 + m.b6 + m.b9 + m.b12 + m.b21 + m.b24 + m.b27 + m.b30 >= 1)

m.c40 = Constraint(expr=   m.b7 + m.b9 + m.b12 + m.b19 + m.b21 + m.b24 + m.b25 + m.b27 + m.b30 >= 1)

m.c41 = Constraint(expr=   m.b2 + m.b6 + m.b14 + m.b18 + m.b20 + m.b24 + m.b26 + m.b30 >= 1)

m.c42 = Constraint(expr=   m.b13 + m.b14 + m.b18 + m.b19 + m.b20 + m.b24 + m.b25 + m.b26 + m.b30 >= 1)

m.c43 = Constraint(expr=   m.b6 + m.b12 + m.b18 + m.b24 + m.b30 >= 1)

m.c44 = Constraint(expr=   m.b7 + m.b12 + m.b13 + m.b18 + m.b19 + m.b24 + m.b25 + m.b30 >= 1)

m.c45 = Constraint(expr=   m.b2 + m.b3 + m.b4 + m.b5 + m.b32 + m.b33 + m.b34 + m.b35 >= 1)

m.c46 = Constraint(expr=   m.b31 + m.b32 + m.b33 + m.b34 + m.b35 >= 1)

m.c47 = Constraint(expr=   m.b3 + m.b4 + m.b5 + m.b9 + m.b10 + m.b11 + m.b33 + m.b34 + m.b35 >= 1)

m.c48 = Constraint(expr=   m.b7 + m.b9 + m.b10 + m.b11 + m.b31 + m.b33 + m.b34 + m.b35 >= 1)

m.c49 = Constraint(expr=   m.b2 + m.b4 + m.b5 + m.b14 + m.b16 + m.b17 + m.b32 + m.b34 + m.b35 >= 1)

m.c50 = Constraint(expr=   m.b13 + m.b14 + m.b16 + m.b17 + m.b31 + m.b32 + m.b34 + m.b35 >= 1)

m.c51 = Constraint(expr=   m.b4 + m.b5 + m.b10 + m.b11 + m.b16 + m.b17 + m.b34 + m.b35 >= 1)

m.c52 = Constraint(expr=   m.b7 + m.b10 + m.b11 + m.b13 + m.b16 + m.b17 + m.b31 + m.b34 + m.b35 >= 1)

m.c53 = Constraint(expr=   m.b2 + m.b3 + m.b5 + m.b20 + m.b21 + m.b23 + m.b32 + m.b33 + m.b35 >= 1)

m.c54 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b23 + m.b31 + m.b32 + m.b33 + m.b35 >= 1)

m.c55 = Constraint(expr=   m.b3 + m.b5 + m.b9 + m.b11 + m.b21 + m.b23 + m.b33 + m.b35 >= 1)

m.c56 = Constraint(expr=   m.b7 + m.b9 + m.b11 + m.b19 + m.b21 + m.b23 + m.b31 + m.b33 + m.b35 >= 1)

m.c57 = Constraint(expr=   m.b2 + m.b5 + m.b14 + m.b17 + m.b20 + m.b23 + m.b32 + m.b35 >= 1)

m.c58 = Constraint(expr=   m.b13 + m.b14 + m.b17 + m.b19 + m.b20 + m.b23 + m.b31 + m.b32 + m.b35 >= 1)

m.c59 = Constraint(expr=   m.b5 + m.b11 + m.b17 + m.b23 + m.b35 >= 1)

m.c60 = Constraint(expr=   m.b7 + m.b11 + m.b13 + m.b17 + m.b19 + m.b23 + m.b31 + m.b35 >= 1)

m.c61 = Constraint(expr=   m.b2 + m.b3 + m.b4 + m.b26 + m.b27 + m.b28 + m.b32 + m.b33 + m.b34 >= 1)

m.c62 = Constraint(expr=   m.b25 + m.b26 + m.b27 + m.b28 + m.b31 + m.b32 + m.b33 + m.b34 >= 1)

m.c63 = Constraint(expr=   m.b3 + m.b4 + m.b9 + m.b10 + m.b27 + m.b28 + m.b33 + m.b34 >= 1)

m.c64 = Constraint(expr=   m.b7 + m.b9 + m.b10 + m.b25 + m.b27 + m.b28 + m.b31 + m.b33 + m.b34 >= 1)

m.c65 = Constraint(expr=   m.b2 + m.b4 + m.b14 + m.b16 + m.b26 + m.b28 + m.b32 + m.b34 >= 1)

m.c66 = Constraint(expr=   m.b13 + m.b14 + m.b16 + m.b25 + m.b26 + m.b28 + m.b31 + m.b32 + m.b34 >= 1)

m.c67 = Constraint(expr=   m.b4 + m.b10 + m.b16 + m.b28 + m.b34 >= 1)

m.c68 = Constraint(expr=   m.b7 + m.b10 + m.b13 + m.b16 + m.b25 + m.b28 + m.b31 + m.b34 >= 1)

m.c69 = Constraint(expr=   m.b2 + m.b3 + m.b20 + m.b21 + m.b26 + m.b27 + m.b32 + m.b33 >= 1)

m.c70 = Constraint(expr=   m.b19 + m.b20 + m.b21 + m.b25 + m.b26 + m.b27 + m.b31 + m.b32 + m.b33 >= 1)

m.c71 = Constraint(expr=   m.b3 + m.b9 + m.b21 + m.b27 + m.b33 >= 1)

m.c72 = Constraint(expr=   m.b7 + m.b9 + m.b19 + m.b21 + m.b25 + m.b27 + m.b31 + m.b33 >= 1)

m.c73 = Constraint(expr=   m.b2 + m.b14 + m.b20 + m.b26 + m.b32 >= 1)

m.c74 = Constraint(expr=   m.b13 + m.b14 + m.b19 + m.b20 + m.b25 + m.b26 + m.b31 + m.b32 >= 1)

m.c75 = Constraint(expr=   m.b7 + m.b13 + m.b19 + m.b25 + m.b31 >= 1)
