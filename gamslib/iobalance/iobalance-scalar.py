#  NLP written by GAMS Convert at 12/13/18 11:34:55
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
#         28       19        9        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x2 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x7 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x8 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x9 = Var(within=Reals,bounds=(1,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(1,None),initialize=1)

m.obj = Objective(expr=log(0.0197941409342835*m.x2)*m.x2 + log(0.0352112676056338*m.x3)*m.x3 + log(0.0721136511141559*
                       m.x4)*m.x4 + log(0.0113109376767334*m.x5)*m.x5 + log(0.0142555739294064*m.x6)*m.x6 + log(
                       0.0133342222814854*m.x7)*m.x7 + log(0.0913575735428467*m.x8)*m.x8 + log(0.0141410713275638*m.x9)*
                       m.x9 + log(0.0243694407213354*m.x10)*m.x10, sense=minimize)

m.c1 = Constraint(expr=   m.x2 + m.x3 + m.x4 == 245)

m.c2 = Constraint(expr=   m.x5 + m.x6 + m.x7 == 136)

m.c3 = Constraint(expr=   m.x8 + m.x9 + m.x10 == 159)

m.c4 = Constraint(expr=   m.x2 + m.x5 + m.x8 == 251)

m.c5 = Constraint(expr=   m.x3 + m.x6 + m.x9 == 107)

m.c6 = Constraint(expr=   m.x4 + m.x7 + m.x10 == 182)
