#  MIP written by GAMS Convert at 12/13/18 10:30:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23        1       22        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         35        1       34        0        0        0        0        0
#  FX     15        0       15        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         79       79        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.b1 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b2 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b3 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b4 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b5 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b6 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b7 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b8 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b9 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b10 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b13 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b17 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,0),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b25 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b26 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b27 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b28 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b29 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b30 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b31 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b32 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b33 = Var(within=Binary,bounds=(1,1),initialize=1)
m.b34 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   m.b6, sense=minimize)

m.c2 = Constraint(expr= - m.b1 - m.b2 - m.b3 + m.b4 >= -2)

m.c3 = Constraint(expr= - m.b4 - m.b5 + m.b6 >= -1)

m.c4 = Constraint(expr= - m.b4 - m.b5 + m.b7 >= -1)

m.c5 = Constraint(expr=   m.b3 - m.b4 - m.b5 >= -1)

m.c6 = Constraint(expr= - m.b8 - m.b9 - m.b10 + m.b11 >= -2)

m.c7 = Constraint(expr=   m.b6 - m.b11 - m.b12 - m.b13 >= -2)

m.c8 = Constraint(expr= - m.b5 - m.b9 - m.b10 - m.b14 + m.b15 >= -3)

m.c9 = Constraint(expr=   m.b6 - m.b15 - m.b16 - m.b17 >= -2)

m.c10 = Constraint(expr=   m.b6 - m.b12 - m.b18 - m.b19 >= -2)

m.c11 = Constraint(expr= - m.b12 - m.b18 - m.b19 + m.b20 >= -2)

m.c12 = Constraint(expr=   m.b9 - m.b21 - m.b22 >= -1)

m.c13 = Constraint(expr= - m.b9 - m.b23 + m.b24 >= -1)

m.c14 = Constraint(expr= - m.b17 + m.b18 - m.b24 >= -1)

m.c15 = Constraint(expr=   m.b21 - m.b25 - m.b26 >= -1)

m.c16 = Constraint(expr= - m.b25 - m.b26 + m.b27 >= -1)

m.c17 = Constraint(expr= - m.b3 + m.b14 - m.b28 - m.b29 >= -2)

m.c18 = Constraint(expr= - m.b12 - m.b30 - m.b31 + m.b32 >= -2)

m.c19 = Constraint(expr=   m.b8 - m.b12 - m.b30 - m.b31 >= -2)

m.c20 = Constraint(expr= - m.b25 + m.b30 - m.b33 >= -1)

m.c21 = Constraint(expr=   m.b13 - m.b25 - m.b33 >= -1)

m.c22 = Constraint(expr=   m.b1 - m.b3 - m.b34 >= -1)

m.c23 = Constraint(expr= - m.b14 - m.b28 + m.b34 >= -1)
