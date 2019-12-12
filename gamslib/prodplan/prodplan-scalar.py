#  MIP written by GAMS Convert at 12/13/18 11:30:37
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         17        9        0        8        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         25       17        8        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         64       64        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b20 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b21 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b22 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b23 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b24 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   5*m.x1 + 5*m.x2 + 5*m.x3 + 5*m.x4 + 5*m.x5 + 5*m.x6 + 5*m.x7 + 2.5*m.x8 + 100*m.x9 + 100*m.x10
                        + 100*m.x11 + 100*m.x12 + 100*m.x13 + 100*m.x14 + 100*m.x15 + 100*m.x16 + 5000*m.b17
                        + 5000*m.b18 + 5000*m.b19 + 5000*m.b20 + 5000*m.b21 + 5000*m.b22 + 5000*m.b23 + 5000*m.b24
                       , sense=minimize)

m.c2 = Constraint(expr=   m.x9 - 5600*m.b17 <= 0)

m.c3 = Constraint(expr=   m.x10 - 6800*m.b18 <= 0)

m.c4 = Constraint(expr=   m.x11 - 6400*m.b19 <= 0)

m.c5 = Constraint(expr=   m.x12 - 5600*m.b20 <= 0)

m.c6 = Constraint(expr=   m.x13 - 4800*m.b21 <= 0)

m.c7 = Constraint(expr=   m.x14 - 3600*m.b22 <= 0)

m.c8 = Constraint(expr=   m.x15 - 2400*m.b23 <= 0)

m.c9 = Constraint(expr=   m.x16 - 1200*m.b24 <= 0)

m.c10 = Constraint(expr= - m.x1 + m.x9 == 200)

m.c11 = Constraint(expr=   m.x1 - m.x2 + m.x10 == 400)

m.c12 = Constraint(expr=   m.x2 - m.x3 + m.x11 == 800)

m.c13 = Constraint(expr=   m.x3 - m.x4 + m.x12 == 800)

m.c14 = Constraint(expr=   m.x4 - m.x5 + m.x13 == 1200)

m.c15 = Constraint(expr=   m.x5 - m.x6 + m.x14 == 1200)

m.c16 = Constraint(expr=   m.x6 - m.x7 + m.x15 == 1200)

m.c17 = Constraint(expr=   m.x7 - m.x8 + m.x16 == 1200)
