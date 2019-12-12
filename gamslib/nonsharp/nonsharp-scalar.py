#  MIP written by GAMS Convert at 12/13/18 10:28:44
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          4        0        1        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        1        2        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          8        8        0        0


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=0)
m.b2 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b3 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=m.x1, sense=minimize)

m.c1 = Constraint(expr=   m.x1 >= 0)

m.c2 = Constraint(expr= - m.x1 + 0.23947*m.b2 + 0.75835*m.b3 <= -0.569251999888962)

m.c3 = Constraint(expr=   m.b2 + m.b3 <= 1)

m.c4 = Constraint(expr= - m.b2 - m.b3 <= -1)
