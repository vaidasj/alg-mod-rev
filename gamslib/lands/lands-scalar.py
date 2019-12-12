#  LP written by GAMS Convert at 12/13/18 10:32:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24        1       10       13        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         41       41        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        133      133        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x31 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   10*m.x1 + 7*m.x2 + 16*m.x3 + 6*m.x4 + 12*m.x6 + 16*m.x7 + 12*m.x8 + 7.2*m.x9 + 9.6*m.x10
                        + 7.2*m.x11 + 1.2*m.x12 + 1.6*m.x13 + 1.2*m.x14 + 13.5*m.x15 + 18*m.x16 + 13.5*m.x17 + 8.1*m.x18
                        + 10.8*m.x19 + 8.1*m.x20 + 1.35*m.x21 + 1.8*m.x22 + 1.35*m.x23 + 9.6*m.x24 + 12.8*m.x25
                        + 9.6*m.x26 + 5.76*m.x27 + 7.68*m.x28 + 5.76*m.x29 + 0.96*m.x30 + 1.28*m.x31 + 0.96*m.x32
                        + 16.5*m.x33 + 22*m.x34 + 16.5*m.x35 + 9.9*m.x36 + 13.2*m.x37 + 9.9*m.x38 + 1.65*m.x39
                        + 2.2*m.x40 + 1.65*m.x41, sense=minimize)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 >= 12)

m.c3 = Constraint(expr=   10*m.x1 + 7*m.x2 + 16*m.x3 + 6*m.x4 <= 120)

m.c4 = Constraint(expr= - m.x1 + m.x6 + m.x9 + m.x12 <= 0)

m.c5 = Constraint(expr= - m.x1 + m.x7 + m.x10 + m.x13 <= 0)

m.c6 = Constraint(expr= - m.x1 + m.x8 + m.x11 + m.x14 <= 0)

m.c7 = Constraint(expr= - m.x2 + m.x15 + m.x18 + m.x21 <= 0)

m.c8 = Constraint(expr= - m.x2 + m.x16 + m.x19 + m.x22 <= 0)

m.c9 = Constraint(expr= - m.x2 + m.x17 + m.x20 + m.x23 <= 0)

m.c10 = Constraint(expr= - m.x3 + m.x24 + m.x27 + m.x30 <= 0)

m.c11 = Constraint(expr= - m.x3 + m.x25 + m.x28 + m.x31 <= 0)

m.c12 = Constraint(expr= - m.x3 + m.x26 + m.x29 + m.x32 <= 0)

m.c13 = Constraint(expr= - m.x4 + m.x33 + m.x36 + m.x39 <= 0)

m.c14 = Constraint(expr= - m.x4 + m.x34 + m.x37 + m.x40 <= 0)

m.c15 = Constraint(expr= - m.x4 + m.x35 + m.x38 + m.x41 <= 0)

m.c16 = Constraint(expr=   m.x6 + m.x15 + m.x24 + m.x33 >= 3)

m.c17 = Constraint(expr=   m.x7 + m.x16 + m.x25 + m.x34 >= 5)

m.c18 = Constraint(expr=   m.x8 + m.x17 + m.x26 + m.x35 >= 7)

m.c19 = Constraint(expr=   m.x9 + m.x18 + m.x27 + m.x36 >= 3)

m.c20 = Constraint(expr=   m.x10 + m.x19 + m.x28 + m.x37 >= 3)

m.c21 = Constraint(expr=   m.x11 + m.x20 + m.x29 + m.x38 >= 3)

m.c22 = Constraint(expr=   m.x12 + m.x21 + m.x30 + m.x39 >= 2)

m.c23 = Constraint(expr=   m.x13 + m.x22 + m.x31 + m.x40 >= 2)

m.c24 = Constraint(expr=   m.x14 + m.x23 + m.x32 + m.x41 >= 2)
