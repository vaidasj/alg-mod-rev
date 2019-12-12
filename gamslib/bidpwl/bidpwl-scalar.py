#  MIP written by GAMS Convert at 12/13/18 11:43:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       17        0       14        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         39       25       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         89       89        0        0
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
m.x30 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.x35 + m.x36 + m.x37 + m.x38 + m.x39, sense=minimize)

m.c1 = Constraint(expr=   m.x1 <= 0)

m.c2 = Constraint(expr=   m.x2 - 33000*m.b16 <= 0)

m.c3 = Constraint(expr=   m.x3 <= 0)

m.c4 = Constraint(expr=   m.x4 - 48000*m.b18 <= 0)

m.c5 = Constraint(expr=   m.x5 - 30000*m.b19 <= 0)

m.c6 = Constraint(expr=   m.x6 - 50000*m.b20 <= 0)

m.c7 = Constraint(expr=   m.x7 - 10000*m.b21 <= 0)

m.c8 = Constraint(expr=   m.x8 <= 0)

m.c9 = Constraint(expr=   m.x9 - 165600*m.b23 <= 0)

m.c10 = Constraint(expr=   m.x10 <= 0)

m.c11 = Constraint(expr=   m.x11 - 12000*m.b25 <= 0)

m.c12 = Constraint(expr=   m.x12 <= 0)

m.c13 = Constraint(expr=   m.x13 - 42000*m.b27 <= 0)

m.c14 = Constraint(expr=   m.x14 - 35000*m.b28 <= 0)

m.c15 = Constraint(expr=   m.b15 + m.b16 == 1)

m.c16 = Constraint(expr=   m.b17 + m.b18 + m.b19 + m.b20 + m.b21 == 1)

m.c17 = Constraint(expr=   m.b22 + m.b23 == 1)

m.c18 = Constraint(expr=   m.b24 + m.b25 == 1)

m.c19 = Constraint(expr=   m.b26 + m.b27 + m.b28 == 1)

m.c20 = Constraint(expr= - m.x2 + m.x30 == 0)

m.c21 = Constraint(expr= - m.x4 - m.x5 - m.x6 - m.x7 - 22000*m.b18 - 70000*m.b19 - 100000*m.b20 - 150000*m.b21 + m.x31
                         == 0)

m.c22 = Constraint(expr= - m.x9 + m.x32 == 0)

m.c23 = Constraint(expr= - m.x11 + m.x33 == 0)

m.c24 = Constraint(expr= - m.x13 - m.x14 - 42000*m.b28 + m.x34 == 0)

m.c25 = Constraint(expr= - m.x30 - m.x31 - m.x32 - m.x33 - m.x34 == -239600.48)

m.c26 = Constraint(expr= - 61.15*m.x2 - 3855.84*m.b16 + m.x35 == 0)

m.c27 = Constraint(expr= - 68.099*m.x4 - 66.049*m.x5 - 64.099*m.x6 - 62.119*m.x7 - 1623982.84*m.b18 - 4892734.84*m.b19
                         - 6874204.84*m.b20 - 10079154.84*m.b21 + m.x36 == 0)

m.c28 = Constraint(expr= - 62.19*m.x9 - 13456*m.b23 + m.x37 == 0)

m.c29 = Constraint(expr= - 72.488*m.x11 - 6583.98*m.b25 + m.x38 == 0)

m.c30 = Constraint(expr= - 70.15*m.x13 - 68.15*m.x14 - 2946300*m.b28 + m.x39 == 0)
