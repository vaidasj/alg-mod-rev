#  QCP written by GAMS Convert at 12/13/18 11:43:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         15        0       15        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         65        0       65        0


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.05,0.4),initialize=0.05)
m.x2 = Var(within=Reals,bounds=(-1,1),initialize=-0.1)
m.x3 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x4 = Var(within=Reals,bounds=(-1,1),initialize=0.1)
m.x5 = Var(within=Reals,bounds=(-1,1),initialize=0.2)
m.x6 = Var(within=Reals,bounds=(-1,1),initialize=0.3)
m.x7 = Var(within=Reals,bounds=(-1,1),initialize=-0.1)
m.x8 = Var(within=Reals,bounds=(-1,1),initialize=0)
m.x9 = Var(within=Reals,bounds=(-1,1),initialize=0.1)
m.x10 = Var(within=Reals,bounds=(-1,1),initialize=0.2)
m.x11 = Var(within=Reals,bounds=(-1,1),initialize=0.3)

m.obj = Objective(expr=m.x1, sense=maximize)

m.c1 = Constraint(expr=(1 - m.x1)**2 - (m.x2**2 + m.x7**2) >= 0)

m.c2 = Constraint(expr=(1 - m.x1)**2 - (m.x3**2 + m.x8**2) >= 0)

m.c3 = Constraint(expr=(1 - m.x1)**2 - (m.x4**2 + m.x9**2) >= 0)

m.c4 = Constraint(expr=(1 - m.x1)**2 - (m.x5**2 + m.x10**2) >= 0)

m.c5 = Constraint(expr=(1 - m.x1)**2 - (m.x6**2 + m.x11**2) >= 0)

m.c6 = Constraint(expr=(m.x2 - m.x3)**2 + (m.x7 - m.x8)**2 - 4*m.x1**2 >= 0)

m.c7 = Constraint(expr=(m.x2 - m.x4)**2 + (m.x7 - m.x9)**2 - 4*m.x1**2 >= 0)

m.c8 = Constraint(expr=(m.x2 - m.x5)**2 + (m.x7 - m.x10)**2 - 4*m.x1**2 >= 0)

m.c9 = Constraint(expr=(m.x2 - m.x6)**2 + (m.x7 - m.x11)**2 - 4*m.x1**2 >= 0)

m.c10 = Constraint(expr=(m.x3 - m.x4)**2 + (m.x8 - m.x9)**2 - 4*m.x1**2 >= 0)

m.c11 = Constraint(expr=(m.x3 - m.x5)**2 + (m.x8 - m.x10)**2 - 4*m.x1**2 >= 0)

m.c12 = Constraint(expr=(m.x3 - m.x6)**2 + (m.x8 - m.x11)**2 - 4*m.x1**2 >= 0)

m.c13 = Constraint(expr=(m.x4 - m.x5)**2 + (m.x9 - m.x10)**2 - 4*m.x1**2 >= 0)

m.c14 = Constraint(expr=(m.x4 - m.x6)**2 + (m.x9 - m.x11)**2 - 4*m.x1**2 >= 0)

m.c15 = Constraint(expr=(m.x5 - m.x6)**2 + (m.x10 - m.x11)**2 - 4*m.x1**2 >= 0)
