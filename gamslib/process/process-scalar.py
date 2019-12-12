#  NLP written by GAMS Convert at 12/13/18 10:24:31
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        8        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       15        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         32       13       19        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(10,2000),initialize=1745)
m.x2 = Var(within=Reals,bounds=(0,16000),initialize=12000)
m.x3 = Var(within=Reals,bounds=(0,120),initialize=110)
m.x4 = Var(within=Reals,bounds=(0,5000),initialize=3048)
m.x5 = Var(within=Reals,bounds=(0,2000),initialize=1974)
m.x6 = Var(within=Reals,bounds=(85,93),initialize=89.2)
m.x7 = Var(within=Reals,bounds=(90,95),initialize=92.8)
m.x8 = Var(within=Reals,bounds=(3,12),initialize=8)
m.x9 = Var(within=Reals,bounds=(1.2,4),initialize=3.6)
m.x10 = Var(within=Reals,bounds=(145,162),initialize=145)
m.x12 = Var(within=Reals,bounds=(0.9,1.1),initialize=1)
m.x13 = Var(within=Reals,bounds=(0.9,1.1),initialize=1)
m.x14 = Var(within=Reals,bounds=(0.9,1.1),initialize=1)
m.x15 = Var(within=Reals,bounds=(0.9,1.1),initialize=1)

m.obj = Objective(expr=0.063*m.x4*m.x7 - 5.04*m.x1 - 0.035*m.x2 - 10*m.x3 - 3.36*m.x5, sense=maximize)

m.c1 = Constraint(expr=m.x12*m.x4 - (1.12 + 0.13167*m.x8 - 0.00667*m.x8**2)*m.x1 == 0)

m.c2 = Constraint(expr= - m.x1 + 1.22*m.x4 - m.x5 == 0)

m.c3 = Constraint(expr=-0.001*m.x4*m.x9*m.x6/(98 - m.x6) + m.x3 == 0)

m.c4 = Constraint(expr=m.x13*m.x7 - (1.098*m.x8 - 0.038*m.x8**2) - 0.325*m.x6 == 57.425)

m.c5 = Constraint(expr=-(m.x2 + m.x5)/m.x1 + m.x8 == 0)

m.c6 = Constraint(expr=m.x14*m.x9 + 0.222*m.x10 == 35.82)

m.c7 = Constraint(expr=m.x15*m.x10 - 3*m.x7 == -133)
