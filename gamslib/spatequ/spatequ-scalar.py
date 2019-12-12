#  MCP written by GAMS Convert at 12/13/18 11:30:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         30       18       12        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         30       30        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         84       84        0        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=101)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=195.272727272727)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=64)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=35.9090909090909)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=90)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=154.272727272727)
m.x7 = Var(within=Reals,bounds=(None,None),initialize=65.5)
m.x8 = Var(within=Reals,bounds=(None,None),initialize=120.363636363636)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=134.5)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=160.227272727273)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=55)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=104.863636363636)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=35.5)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=74.9090909090909)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=35.0000000000001)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=49.409090909091)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=11)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=11.6363636363636)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=9)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=8.63636363636364)
m.x29 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=10.6363636363636)

m.c1 = Complementarity(expr=( - m.x1 - 9*m.x25 == -200)

m.c2 = Complementarity(expr=( - m.x2 - 9*m.x26 == -300)

m.c3 = Complementarity(expr=( - m.x3 - 4*m.x27 == -100)

m.c4 = Complementarity(expr=( - m.x4 - 19*m.x28 == -200)

m.c5 = Complementarity(expr=( - m.x5 - 7*m.x29 == -160)

m.c6 = Complementarity(expr=( - m.x6 - 9*m.x30 == -250)

m.c7 = Complementarity(expr=( - m.x7 + 10.5*m.x25 == 50)

m.c8 = Complementarity(expr=( - m.x8 + 15.5*m.x26 == 60)

m.c9 = Complementarity(expr=( - m.x9 + 20.5*m.x27 == 50)

m.c10 = Complementarity(expr=( - m.x10 + 25.5*m.x28 == 60)

m.c11 = Complementarity(expr=( - m.x11 + 10.5*m.x29 == 50)

m.c12 = Complementarity(expr=( - m.x12 + 15.5*m.x30 == 60)

m.c13 = Complementarity(expr=( - m.x1 + m.x7 - m.x13 - m.x15 + m.x17 + m.x21 >= 0, m.x25 >= 0))

m.c14 = Complementarity(expr=( - m.x2 + m.x8 - m.x14 - m.x16 + m.x18 + m.x22 >= 0, m.x26 >= 0))

m.c15 = Complementarity(expr=( - m.x3 + m.x9 + m.x13 - m.x17 - m.x19 + m.x23 >= 0, m.x27 >= 0))

m.c16 = Complementarity(expr=( - m.x4 + m.x10 + m.x14 - m.x18 - m.x20 + m.x24 >= 0, m.x28 >= 0))

m.c17 = Complementarity(expr=( - m.x5 + m.x11 + m.x15 + m.x19 - m.x21 - m.x23 >= 0, m.x29 >= 0))

m.c18 = Complementarity(expr=( - m.x6 + m.x12 + m.x16 + m.x20 - m.x22 - m.x24 >= 0, m.x30 >= 0))

m.c19 = Complementarity(expr=(   m.x25 - m.x27 >= -2, m.x13 >= 0))

m.c20 = Complementarity(expr=(   m.x26 - m.x28 >= -3, m.x14 >= 0))

m.c21 = Complementarity(expr=(   m.x25 - m.x29 >= -2, m.x15 >= 0))

m.c22 = Complementarity(expr=(   m.x26 - m.x30 >= -3, m.x16 >= 0))

m.c23 = Complementarity(expr=( - m.x25 + m.x27 >= -2, m.x17 >= 0))

m.c24 = Complementarity(expr=( - m.x26 + m.x28 >= -3, m.x18 >= 0))

m.c25 = Complementarity(expr=(   m.x27 - m.x29 >= -1, m.x19 >= 0))

m.c26 = Complementarity(expr=(   m.x28 - m.x30 >= -2, m.x20 >= 0))

m.c27 = Complementarity(expr=( - m.x25 + m.x29 >= -2, m.x21 >= 0))

m.c28 = Complementarity(expr=( - m.x26 + m.x30 >= -3, m.x22 >= 0))

m.c29 = Complementarity(expr=( - m.x27 + m.x29 >= -1, m.x23 >= 0))

m.c30 = Complementarity(expr=( - m.x28 + m.x30 >= -2, m.x24 >= 0))
