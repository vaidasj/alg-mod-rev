#  MIP written by GAMS Convert at 12/13/18 10:24:30
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         25        2        9       14        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         19       10        9        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         68       68        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.b11 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b12 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b13 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b14 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b15 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b16 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b17 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b18 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b19 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   61.15*m.x2 + 68.099*m.x3 + 66.049*m.x4 + 64.099*m.x5 + 62.119*m.x6 + 62.19*m.x7 + 72.488*m.x8
                        + 70.15*m.x9 + 68.15*m.x10 + 3855.84*m.b11 + 125804.84*m.b12 + 269304.84*m.b13 + 464304.84*m.b14
                        + 761304.840000001*m.b15 + 13456*m.b16 + 6583.98*m.b17 + 84000*m.b19, sense=minimize)

m.c1 = Constraint(expr= - m.x2 - m.x3 - m.x4 - m.x5 - m.x6 - m.x7 - m.x8 - m.x9 - m.x10 == -239600.48)

m.c3 = Constraint(expr=   m.x2 >= 0)

m.c4 = Constraint(expr=   m.x3 - 22000*m.b12 >= 0)

m.c5 = Constraint(expr=   m.x4 - 70000*m.b13 >= 0)

m.c6 = Constraint(expr=   m.x5 - 100000*m.b14 >= 0)

m.c7 = Constraint(expr=   m.x6 - 150000*m.b15 >= 0)

m.c8 = Constraint(expr=   m.x7 >= 0)

m.c9 = Constraint(expr=   m.x8 >= 0)

m.c10 = Constraint(expr=   m.x9 >= 0)

m.c11 = Constraint(expr=   m.x10 - 42000*m.b19 >= 0)

m.c12 = Constraint(expr=   m.x2 - 33000*m.b11 <= 0)

m.c13 = Constraint(expr=   m.x3 - 70000*m.b12 <= 0)

m.c14 = Constraint(expr=   m.x4 - 100000*m.b13 <= 0)

m.c15 = Constraint(expr=   m.x5 - 150000*m.b14 <= 0)

m.c16 = Constraint(expr=   m.x6 - 160000*m.b15 <= 0)

m.c17 = Constraint(expr=   m.x7 - 165600*m.b16 <= 0)

m.c18 = Constraint(expr=   m.x8 - 12000*m.b17 <= 0)

m.c19 = Constraint(expr=   m.x9 - 42000*m.b18 <= 0)

m.c20 = Constraint(expr=   m.x10 - 77000*m.b19 <= 0)

m.c21 = Constraint(expr=   m.b11 <= 1)

m.c22 = Constraint(expr=   m.b12 + m.b13 + m.b14 + m.b15 <= 1)

m.c23 = Constraint(expr=   m.b16 <= 1)

m.c24 = Constraint(expr=   m.b17 <= 1)

m.c25 = Constraint(expr=   m.b18 + m.b19 <= 1)
