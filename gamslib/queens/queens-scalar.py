#  MIP written by GAMS Convert at 12/13/18 10:24:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         43       17        0       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         65        1       64        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        317      317        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,1),initialize=0)
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

m.obj = Objective(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 + m.b9 + m.b10 + m.b11 + m.b12 + m.b13
                        + m.b14 + m.b15 + m.b16 + m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 + m.b25
                        + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 + m.b33 + m.b34 + m.b35 + m.b36 + m.b37
                        + m.b38 + m.b39 + m.b40 + m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 + m.b49
                        + m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 + m.b57 + m.b58 + m.b59 + m.b60 + m.b61
                        + m.b62 + m.b63 + m.b64, sense=maximize)

m.c1 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 + m.b5 + m.b6 + m.b7 + m.b8 == 1)

m.c2 = Constraint(expr=   m.b9 + m.b10 + m.b11 + m.b12 + m.b13 + m.b14 + m.b15 + m.b16 == 1)

m.c3 = Constraint(expr=   m.b17 + m.b18 + m.b19 + m.b20 + m.b21 + m.b22 + m.b23 + m.b24 == 1)

m.c4 = Constraint(expr=   m.b25 + m.b26 + m.b27 + m.b28 + m.b29 + m.b30 + m.b31 + m.b32 == 1)

m.c5 = Constraint(expr=   m.b33 + m.b34 + m.b35 + m.b36 + m.b37 + m.b38 + m.b39 + m.b40 == 1)

m.c6 = Constraint(expr=   m.b41 + m.b42 + m.b43 + m.b44 + m.b45 + m.b46 + m.b47 + m.b48 == 1)

m.c7 = Constraint(expr=   m.b49 + m.b50 + m.b51 + m.b52 + m.b53 + m.b54 + m.b55 + m.b56 == 1)

m.c8 = Constraint(expr=   m.b57 + m.b58 + m.b59 + m.b60 + m.b61 + m.b62 + m.b63 + m.b64 == 1)

m.c9 = Constraint(expr=   m.b1 + m.b9 + m.b17 + m.b25 + m.b33 + m.b41 + m.b49 + m.b57 == 1)

m.c10 = Constraint(expr=   m.b2 + m.b10 + m.b18 + m.b26 + m.b34 + m.b42 + m.b50 + m.b58 == 1)

m.c11 = Constraint(expr=   m.b3 + m.b11 + m.b19 + m.b27 + m.b35 + m.b43 + m.b51 + m.b59 == 1)

m.c12 = Constraint(expr=   m.b4 + m.b12 + m.b20 + m.b28 + m.b36 + m.b44 + m.b52 + m.b60 == 1)

m.c13 = Constraint(expr=   m.b5 + m.b13 + m.b21 + m.b29 + m.b37 + m.b45 + m.b53 + m.b61 == 1)

m.c14 = Constraint(expr=   m.b6 + m.b14 + m.b22 + m.b30 + m.b38 + m.b46 + m.b54 + m.b62 == 1)

m.c15 = Constraint(expr=   m.b7 + m.b15 + m.b23 + m.b31 + m.b39 + m.b47 + m.b55 + m.b63 == 1)

m.c16 = Constraint(expr=   m.b8 + m.b16 + m.b24 + m.b32 + m.b40 + m.b48 + m.b56 + m.b64 == 1)

m.c17 = Constraint(expr=   m.b49 + m.b58 <= 1)

m.c18 = Constraint(expr=   m.b41 + m.b50 + m.b59 <= 1)

m.c19 = Constraint(expr=   m.b33 + m.b42 + m.b51 + m.b60 <= 1)

m.c20 = Constraint(expr=   m.b25 + m.b34 + m.b43 + m.b52 + m.b61 <= 1)

m.c21 = Constraint(expr=   m.b17 + m.b26 + m.b35 + m.b44 + m.b53 + m.b62 <= 1)

m.c22 = Constraint(expr=   m.b9 + m.b18 + m.b27 + m.b36 + m.b45 + m.b54 + m.b63 <= 1)

m.c23 = Constraint(expr=   m.b1 + m.b10 + m.b19 + m.b28 + m.b37 + m.b46 + m.b55 + m.b64 <= 1)

m.c24 = Constraint(expr=   m.b2 + m.b11 + m.b20 + m.b29 + m.b38 + m.b47 + m.b56 <= 1)

m.c25 = Constraint(expr=   m.b3 + m.b12 + m.b21 + m.b30 + m.b39 + m.b48 <= 1)

m.c26 = Constraint(expr=   m.b4 + m.b13 + m.b22 + m.b31 + m.b40 <= 1)

m.c27 = Constraint(expr=   m.b5 + m.b14 + m.b23 + m.b32 <= 1)

m.c28 = Constraint(expr=   m.b6 + m.b15 + m.b24 <= 1)

m.c29 = Constraint(expr=   m.b7 + m.b16 <= 1)

m.c30 = Constraint(expr=   m.b2 + m.b9 <= 1)

m.c31 = Constraint(expr=   m.b3 + m.b10 + m.b17 <= 1)

m.c32 = Constraint(expr=   m.b4 + m.b11 + m.b18 + m.b25 <= 1)

m.c33 = Constraint(expr=   m.b5 + m.b12 + m.b19 + m.b26 + m.b33 <= 1)

m.c34 = Constraint(expr=   m.b6 + m.b13 + m.b20 + m.b27 + m.b34 + m.b41 <= 1)

m.c35 = Constraint(expr=   m.b7 + m.b14 + m.b21 + m.b28 + m.b35 + m.b42 + m.b49 <= 1)

m.c36 = Constraint(expr=   m.b8 + m.b15 + m.b22 + m.b29 + m.b36 + m.b43 + m.b50 + m.b57 <= 1)

m.c37 = Constraint(expr=   m.b16 + m.b23 + m.b30 + m.b37 + m.b44 + m.b51 + m.b58 <= 1)

m.c38 = Constraint(expr=   m.b24 + m.b31 + m.b38 + m.b45 + m.b52 + m.b59 <= 1)

m.c39 = Constraint(expr=   m.b32 + m.b39 + m.b46 + m.b53 + m.b60 <= 1)

m.c40 = Constraint(expr=   m.b40 + m.b47 + m.b54 + m.b61 <= 1)

m.c41 = Constraint(expr=   m.b48 + m.b55 + m.b62 <= 1)

m.c42 = Constraint(expr=   m.b56 + m.b63 <= 1)
