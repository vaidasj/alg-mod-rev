#  LP written by GAMS Convert at 12/13/18 10:24:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11       11        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        130      130        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
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
m.x41 = Var(within=Reals,bounds=(5,None),initialize=5)
m.x42 = Var(within=Reals,bounds=(6,None),initialize=6)
m.x43 = Var(within=Reals,bounds=(7,None),initialize=7)
m.x44 = Var(within=Reals,bounds=(6,None),initialize=6)
m.x45 = Var(within=Reals,bounds=(4,None),initialize=4)
m.x46 = Var(within=Reals,bounds=(9,None),initialize=9)
m.x47 = Var(within=Reals,bounds=(8,None),initialize=8)
m.x48 = Var(within=Reals,bounds=(8,None),initialize=8)
m.x49 = Var(within=Reals,bounds=(6,None),initialize=6)
m.x50 = Var(within=Reals,bounds=(4,None),initialize=4)

m.obj = Objective(expr=   50*m.x1 + 85*m.x2 + 115*m.x3 + 143*m.x4 + 52.5*m.x5 + 89.25*m.x6 + 120.75*m.x7 + 150.15*m.x8
                        + 56*m.x9 + 95.2*m.x10 + 128.8*m.x11 + 160.16*m.x12 + 85.5*m.x13 + 145.35*m.x14 + 196.65*m.x15
                        + 244.53*m.x16 + 90*m.x17 + 153*m.x18 + 207*m.x19 + 257.4*m.x20 + 95*m.x21 + 161.5*m.x22
                        + 218.5*m.x23 + 271.7*m.x24 + 98.5*m.x25 + 167.45*m.x26 + 226.55*m.x27 + 281.71*m.x28
                        + 105*m.x29 + 178.5*m.x30 + 241.5*m.x31 + 300.3*m.x32 + 111*m.x33 + 188.7*m.x34 + 255.3*m.x35
                        + 317.46*m.x36 + 119*m.x37 + 202.3*m.x38 + 273.7*m.x39 + 340.34*m.x40, sense=minimize)

m.c2 = Constraint(expr= - m.x1 - m.x2 - m.x3 - m.x4 + m.x41 == 0)

m.c3 = Constraint(expr=   m.x1 - m.x5 - m.x6 - m.x7 - m.x8 - m.x41 + m.x42 == 0)

m.c4 = Constraint(expr=   m.x2 + m.x5 - m.x9 - m.x10 - m.x11 - m.x12 - m.x42 + m.x43 == 0)

m.c5 = Constraint(expr=   m.x3 + m.x6 + m.x9 - m.x13 - m.x14 - m.x15 - m.x16 - m.x43 + m.x44 == 0)

m.c6 = Constraint(expr=   m.x4 + m.x7 + m.x10 + m.x13 - m.x17 - m.x18 - m.x19 - m.x20 - m.x44 + m.x45 == 0)

m.c7 = Constraint(expr=   m.x8 + m.x11 + m.x14 + m.x17 - m.x21 - m.x22 - m.x23 - m.x24 - m.x45 + m.x46 == 0)

m.c8 = Constraint(expr=   m.x12 + m.x15 + m.x18 + m.x21 - m.x25 - m.x26 - m.x27 - m.x28 - m.x46 + m.x47 == 0)

m.c9 = Constraint(expr=   m.x16 + m.x19 + m.x22 + m.x25 - m.x29 - m.x30 - m.x31 - m.x32 - m.x47 + m.x48 == 0)

m.c10 = Constraint(expr=   m.x20 + m.x23 + m.x26 + m.x29 - m.x33 - m.x34 - m.x35 - m.x36 - m.x48 + m.x49 == 0)

m.c11 = Constraint(expr=   m.x24 + m.x27 + m.x30 + m.x33 - m.x37 - m.x38 - m.x39 - m.x40 - m.x49 + m.x50 == 0)
