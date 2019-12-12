#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         16       11        5        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         73       73        0        0
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
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   10*m.x6 + 10*m.x7 + 10*m.x8 + 10*m.x9 + 10*m.x10 + 30*m.x11 + 30*m.x12 + 30*m.x13 + 30*m.x14
                        + 30*m.x15 + 100*m.x16 + 100*m.x17 + 100*m.x18 + 100*m.x19 + 200*m.x20, sense=minimize)

m.c1 = Constraint(expr= - m.x1 + m.x6 - m.x11 == -90)

m.c2 = Constraint(expr= - m.x2 - m.x6 + m.x7 + m.x11 - m.x12 == -200)

m.c3 = Constraint(expr= - m.x3 - m.x7 + m.x8 + m.x12 - m.x13 == -300)

m.c4 = Constraint(expr= - m.x4 - m.x8 + m.x9 + m.x13 - m.x14 == -400)

m.c5 = Constraint(expr= - m.x5 - m.x9 + m.x10 + m.x14 - m.x15 == -200)

m.c6 = Constraint(expr=   m.x16 - m.x21 + m.x26 == 20)

m.c7 = Constraint(expr= - m.x16 + m.x17 - m.x22 + m.x27 == 0)

m.c8 = Constraint(expr= - m.x17 + m.x18 - m.x23 + m.x28 == 0)

m.c9 = Constraint(expr= - m.x18 + m.x19 - m.x24 + m.x29 == 0)

m.c10 = Constraint(expr= - m.x19 + m.x20 - m.x25 + m.x30 == 0)

m.c11 = Constraint(expr= - 0.125*m.x1 + m.x16 - 1.16666666666667*m.x21 >= 0)

m.c12 = Constraint(expr= - 0.125*m.x2 + m.x17 - 1.16666666666667*m.x22 >= 0)

m.c13 = Constraint(expr= - 0.125*m.x3 + m.x18 - 1.16666666666667*m.x23 >= 0)

m.c14 = Constraint(expr= - 0.125*m.x4 + m.x19 - 1.16666666666667*m.x24 >= 0)

m.c15 = Constraint(expr= - 0.125*m.x5 + m.x20 - 1.16666666666667*m.x25 >= 0)
