#  NLP written by GAMS Convert at 12/13/18 11:30:39
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31       11       20        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         99       89       10        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x2 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x3 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x4 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x5 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x6 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x7 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x8 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x9 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x10 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
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

m.obj = Objective(expr=   0.1*m.x11 + 0.1*m.x12 + 0.1*m.x13 + 0.1*m.x14 + 0.1*m.x15 + 0.1*m.x16 + 0.1*m.x17 + 0.1*m.x18
                        + 0.1*m.x19 + 0.1*m.x20 - 0.1*m.x21 - 0.1*m.x22 - 0.1*m.x23 - 0.1*m.x24 - 0.1*m.x25 - 0.1*m.x26
                        - 0.1*m.x27 - 0.1*m.x28 - 0.1*m.x29 - 0.1*m.x30, sense=maximize)

m.c2 = Constraint(expr=-m.x1**0.5 + m.x11 == 0)

m.c3 = Constraint(expr=-m.x2**0.5 + m.x12 == 0)

m.c4 = Constraint(expr=-m.x3**0.5 + m.x13 == 0)

m.c5 = Constraint(expr=-m.x4**0.5 + m.x14 == 0)

m.c6 = Constraint(expr=-m.x5**0.5 + m.x15 == 0)

m.c7 = Constraint(expr=-m.x6**0.5 + m.x16 == 0)

m.c8 = Constraint(expr=-m.x7**0.5 + m.x17 == 0)

m.c9 = Constraint(expr=-m.x8**0.5 + m.x18 == 0)

m.c10 = Constraint(expr=-m.x9**0.5 + m.x19 == 0)

m.c11 = Constraint(expr=-m.x10**0.5 + m.x20 == 0)

m.c12 = Constraint(expr= - 0.1*m.x1 + m.x21 >= 0)

m.c13 = Constraint(expr= - 0.2*m.x2 + m.x22 >= 0)

m.c14 = Constraint(expr= - 0.3*m.x3 + m.x23 >= 0)

m.c15 = Constraint(expr= - 0.4*m.x4 + m.x24 >= 0)

m.c16 = Constraint(expr= - 0.5*m.x5 + m.x25 >= 0)

m.c17 = Constraint(expr= - 0.6*m.x6 + m.x26 >= 0)

m.c18 = Constraint(expr= - 0.7*m.x7 + m.x27 >= 0)

m.c19 = Constraint(expr= - 0.8*m.x8 + m.x28 >= 0)

m.c20 = Constraint(expr= - 0.9*m.x9 + m.x29 >= 0)

m.c21 = Constraint(expr= - m.x10 + m.x30 >= 0)

m.c22 = Constraint(expr= - 0.1*m.x1 + 0.1*m.x2 + m.x21 - m.x22 >= 0)

m.c23 = Constraint(expr= - 0.2*m.x2 + 0.2*m.x3 + m.x22 - m.x23 >= 0)

m.c24 = Constraint(expr= - 0.3*m.x3 + 0.3*m.x4 + m.x23 - m.x24 >= 0)

m.c25 = Constraint(expr= - 0.4*m.x4 + 0.4*m.x5 + m.x24 - m.x25 >= 0)

m.c26 = Constraint(expr= - 0.5*m.x5 + 0.5*m.x6 + m.x25 - m.x26 >= 0)

m.c27 = Constraint(expr= - 0.6*m.x6 + 0.6*m.x7 + m.x26 - m.x27 >= 0)

m.c28 = Constraint(expr= - 0.7*m.x7 + 0.7*m.x8 + m.x27 - m.x28 >= 0)

m.c29 = Constraint(expr= - 0.8*m.x8 + 0.8*m.x9 + m.x28 - m.x29 >= 0)

m.c30 = Constraint(expr= - 0.9*m.x9 + 0.9*m.x10 + m.x29 - m.x30 >= 0)

m.c31 = Constraint(expr= - m.x10 + m.x30 >= 0)
