#  LP written by GAMS Convert at 12/13/18 10:32:21
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        1        6        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         22       22        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         52       52        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,6000),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,6000),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,6000),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr= - 150*m.x1 - 230*m.x2 - 260*m.x3 + 56.6666666666667*m.x5 + 56.6666666666667*m.x6
                        + 56.6666666666667*m.x7 + 50*m.x8 + 50*m.x9 + 50*m.x10 + 12*m.x11 + 12*m.x12 + 12*m.x13
                        + 3.33333333333333*m.x14 + 3.33333333333333*m.x15 + 3.33333333333333*m.x16
                        - 79.3333333333333*m.x17 - 79.3333333333333*m.x18 - 79.3333333333333*m.x19 - 70*m.x20 - 70*m.x21
                        - 70*m.x22, sense=maximize)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 <= 500)

m.c3 = Constraint(expr=   3*m.x1 - m.x5 + m.x17 >= 200)

m.c4 = Constraint(expr=   2.5*m.x1 - m.x6 + m.x18 >= 200)

m.c5 = Constraint(expr=   2*m.x1 - m.x7 + m.x19 >= 200)

m.c6 = Constraint(expr=   3.6*m.x2 - m.x8 + m.x20 >= 240)

m.c7 = Constraint(expr=   3*m.x2 - m.x9 + m.x21 >= 240)

m.c8 = Constraint(expr=   2.4*m.x2 - m.x10 + m.x22 >= 240)

m.c9 = Constraint(expr= - 24*m.x3 + m.x11 + m.x14 <= 0)

m.c10 = Constraint(expr= - 20*m.x3 + m.x12 + m.x15 <= 0)

m.c11 = Constraint(expr= - 16*m.x3 + m.x13 + m.x16 <= 0)
