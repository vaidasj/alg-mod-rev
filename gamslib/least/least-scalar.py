#  NLP written by GAMS Convert at 12/13/18 10:24:33
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          7        7        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         31       13       18        0
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
m.x8 = Var(within=Reals,bounds=(None,None),initialize=500)
m.x9 = Var(within=Reals,bounds=(None,None),initialize=-150)
m.x10 = Var(within=Reals,bounds=(-5,5),initialize=-0.2)

m.obj = Objective(expr=m.x2**2 + m.x3**2 + m.x4**2 + m.x5**2 + m.x6**2 + m.x7**2, sense=minimize)

m.c2 = Constraint(expr=-exp(-5*m.x10)*m.x9 - m.x2 - m.x8 == -127)

m.c3 = Constraint(expr=-exp(-3*m.x10)*m.x9 - m.x3 - m.x8 == -151)

m.c4 = Constraint(expr=-exp(-m.x10)*m.x9 - m.x4 - m.x8 == -379)

m.c5 = Constraint(expr=-exp(5*m.x10)*m.x9 - m.x5 - m.x8 == -421)

m.c6 = Constraint(expr=-exp(3*m.x10)*m.x9 - m.x6 - m.x8 == -460)

m.c7 = Constraint(expr=-exp(m.x10)*m.x9 - m.x7 - m.x8 == -426)
