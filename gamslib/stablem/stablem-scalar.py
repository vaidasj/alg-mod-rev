#  MIP written by GAMS Convert at 12/13/18 11:43:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24        9        0       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         17        1       16        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         97       97        0        0
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

m.obj = Objective(expr=   3*m.b1 + 4*m.b2 + 2*m.b3 + m.b4 + 3*m.b5 + 4*m.b6 + m.b7 + 2*m.b8 + 3*m.b9 + 2*m.b10 + m.b11
                        + 4*m.b12 + 4*m.b13 + 2*m.b14 + 3*m.b15 + m.b16, sense=minimize)

m.c1 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b4 == 1)

m.c2 = Constraint(expr=   m.b5 + m.b6 + m.b7 + m.b8 == 1)

m.c3 = Constraint(expr=   m.b9 + m.b10 + m.b11 + m.b12 == 1)

m.c4 = Constraint(expr=   m.b13 + m.b14 + m.b15 + m.b16 == 1)

m.c5 = Constraint(expr=   m.b1 + m.b5 + m.b9 + m.b13 == 1)

m.c6 = Constraint(expr=   m.b2 + m.b6 + m.b10 + m.b14 == 1)

m.c7 = Constraint(expr=   m.b3 + m.b7 + m.b11 + m.b15 == 1)

m.c8 = Constraint(expr=   m.b4 + m.b8 + m.b12 + m.b16 == 1)

m.c9 = Constraint(expr=   m.b2 + m.b5 + m.b13 <= 1)

m.c10 = Constraint(expr=   m.b6 + m.b10 + m.b14 <= 1)

m.c11 = Constraint(expr=   m.b1 + m.b2 + m.b7 <= 1)

m.c12 = Constraint(expr=   m.b1 + m.b2 + m.b3 + m.b16 <= 1)

m.c13 = Constraint(expr=   m.b6 <= 1)

m.c14 = Constraint(expr=   m.b5 + m.b6 + m.b8 <= 1)

m.c15 = Constraint(expr=   m.b4 + m.b5 + m.b6 + m.b16 <= 1)

m.c16 = Constraint(expr=   m.b1 + m.b5 + m.b12 + m.b13 <= 1)

m.c17 = Constraint(expr=   m.b6 + m.b9 + m.b12 + m.b14 <= 1)

m.c18 = Constraint(expr=   m.b3 + m.b7 + m.b9 + m.b10 + m.b12 <= 1)

m.c19 = Constraint(expr=   m.b4 + m.b8 + m.b16 <= 1)

m.c20 = Constraint(expr=   m.b5 <= 1)

m.c21 = Constraint(expr=   m.b6 + m.b13 + m.b15 <= 1)

m.c22 = Constraint(expr=   m.b3 + m.b7 + m.b11 + m.b13 <= 1)

m.c23 = Constraint(expr=   m.b13 + m.b14 + m.b15 <= 1)
