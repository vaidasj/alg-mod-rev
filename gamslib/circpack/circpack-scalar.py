#  NLP written by GAMS Convert at 12/13/18 11:43:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         29        2       15       12        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         16       16        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         89       27       62        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,32),initialize=32)
m.x2 = Var(within=Reals,bounds=(0,4),initialize=4)
m.x3 = Var(within=Reals,bounds=(0,8),initialize=8)
m.x4 = Var(within=Reals,bounds=(1.2,2.8),initialize=1.4747954112)
m.x5 = Var(within=Reals,bounds=(1.2,6.8),initialize=5.9222935648)
m.x6 = Var(within=Reals,bounds=(0.6,3.4),initialize=2.1410509968)
m.x7 = Var(within=Reals,bounds=(0.6,7.4),initialize=2.6477377472)
m.x8 = Var(within=Reals,bounds=(0.8,3.2),initialize=1.5013090808)
m.x9 = Var(within=Reals,bounds=(0.8,7.2),initialize=2.2339383488)
m.x10 = Var(within=Reals,bounds=(1.7,2.3),initialize=1.9098983024)
m.x11 = Var(within=Reals,bounds=(1.7,6.3),initialize=5.6388435962)
m.x12 = Var(within=Reals,bounds=(1.3,2.7),initialize=1.3939592122)
m.x13 = Var(within=Reals,bounds=(1.3,6.7),initialize=4.0011376126)
m.x14 = Var(within=Reals,bounds=(0.5,3.5),initialize=3.494352881)
m.x15 = Var(within=Reals,bounds=(0.5,7.5),initialize=4.551133646)

m.obj = Objective(expr=   m.x1 - 22.8393785915978, sense=minimize)

m.c2 = Constraint(expr=-m.x2*m.x3 + m.x1 == 0)

m.c3 = Constraint(expr=(m.x6 - m.x4)**2 + (m.x7 - m.x5)**2 >= 3.24)

m.c4 = Constraint(expr=(m.x8 - m.x4)**2 + (m.x9 - m.x5)**2 >= 4)

m.c5 = Constraint(expr=(m.x8 - m.x6)**2 + (m.x9 - m.x7)**2 >= 1.96)

m.c6 = Constraint(expr=(m.x10 - m.x4)**2 + (m.x11 - m.x5)**2 >= 8.41)

m.c7 = Constraint(expr=(m.x10 - m.x6)**2 + (m.x11 - m.x7)**2 >= 5.29)

m.c8 = Constraint(expr=(m.x10 - m.x8)**2 + (m.x11 - m.x9)**2 >= 6.25)

m.c9 = Constraint(expr=(m.x12 - m.x4)**2 + (m.x13 - m.x5)**2 >= 6.25)

m.c10 = Constraint(expr=(m.x12 - m.x6)**2 + (m.x13 - m.x7)**2 >= 3.61)

m.c11 = Constraint(expr=(m.x12 - m.x8)**2 + (m.x13 - m.x9)**2 >= 4.41)

m.c12 = Constraint(expr=(m.x12 - m.x10)**2 + (m.x13 - m.x11)**2 >= 9)

m.c13 = Constraint(expr=(m.x14 - m.x4)**2 + (m.x15 - m.x5)**2 >= 2.89)

m.c14 = Constraint(expr=(m.x14 - m.x6)**2 + (m.x15 - m.x7)**2 >= 1.21)

m.c15 = Constraint(expr=(m.x14 - m.x8)**2 + (m.x15 - m.x9)**2 >= 1.69)

m.c16 = Constraint(expr=(m.x14 - m.x10)**2 + (m.x15 - m.x11)**2 >= 4.84)

m.c17 = Constraint(expr=(m.x14 - m.x12)**2 + (m.x15 - m.x13)**2 >= 3.24)

m.c18 = Constraint(expr= - m.x2 + m.x4 <= -1.2)

m.c19 = Constraint(expr= - m.x3 + m.x5 <= -1.2)

m.c20 = Constraint(expr= - m.x2 + m.x6 <= -0.6)

m.c21 = Constraint(expr= - m.x3 + m.x7 <= -0.6)

m.c22 = Constraint(expr= - m.x2 + m.x8 <= -0.8)

m.c23 = Constraint(expr= - m.x3 + m.x9 <= -0.8)

m.c24 = Constraint(expr= - m.x2 + m.x10 <= -1.7)

m.c25 = Constraint(expr= - m.x3 + m.x11 <= -1.7)

m.c26 = Constraint(expr= - m.x2 + m.x12 <= -1.3)

m.c27 = Constraint(expr= - m.x3 + m.x13 <= -1.3)

m.c28 = Constraint(expr= - m.x2 + m.x14 <= -0.5)

m.c29 = Constraint(expr= - m.x3 + m.x15 <= -0.5)
