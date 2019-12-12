#  MIP written by GAMS Convert at 12/13/18 10:31:11
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13       13        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         37        1       36        0        0        0        0        0
#  FX      6        0        6        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        101      101        0        0
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
