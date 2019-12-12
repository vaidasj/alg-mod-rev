#  LP written by GAMS Convert at 12/13/18 10:24:46
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         41       17        0       24        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         48       48        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        184      184        0        0
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
m.x9 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,None),initialize=0)
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
m.x42 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x43 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x44 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x45 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x46 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x47 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   m.x9 - m.x10 - m.x11 + m.x12, sense=maximize)

m.c1 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 4)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 4)

m.c3 = Constraint(expr=   m.x1 + 0.5*m.x2 + m.x3 + m.x4 + 0.5*m.x5 <= 4)

m.c4 = Constraint(expr=   m.x1 + m.x3 + m.x4 + m.x5 <= 4)

m.c5 = Constraint(expr=   m.x1 + 0.25*m.x4 + m.x5 + 0.25*m.x6 <= 4)

m.c6 = Constraint(expr=   m.x5 + m.x6 <= 4)

m.c7 = Constraint(expr=   m.x5 + m.x6 + 0.75*m.x7 <= 4)

m.c8 = Constraint(expr=   m.x5 + m.x6 + m.x7 <= 4)

m.c9 = Constraint(expr=   m.x5 + m.x6 + m.x7 <= 4)

m.c10 = Constraint(expr=   m.x5 + 0.5*m.x6 + m.x7 <= 4)

m.c11 = Constraint(expr=   0.5*m.x1 + 0.25*m.x2 + 0.25*m.x3 + 0.5*m.x4 + 0.75*m.x5 + 0.75*m.x7 <= 4)

m.c12 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 4)

m.c13 = Constraint(expr=   1.72*m.x1 + 4.5*m.x2 + 0.75*m.x3 + 5.16*m.x4 - m.x13 - m.x37 <= 0)

m.c14 = Constraint(expr=   0.5*m.x1 + m.x2 + 0.75*m.x3 + 5*m.x4 - m.x14 - m.x38 <= 0)

m.c15 = Constraint(expr=   m.x1 + 8*m.x2 + 0.75*m.x3 + 5*m.x4 + 5*m.x5 - m.x15 - m.x39 <= 0)

m.c16 = Constraint(expr=   m.x1 + 16*m.x3 + 19.58*m.x4 + 5*m.x5 - m.x16 - m.x40 <= 0)

m.c17 = Constraint(expr=   17.16*m.x1 + 2.42*m.x4 + 9*m.x5 + 4.3*m.x6 - m.x17 - m.x41 <= 0)

m.c18 = Constraint(expr=   2.34*m.x1 + 2*m.x5 + 5.04*m.x6 - m.x18 - m.x42 <= 0)

m.c19 = Constraint(expr=   1.5*m.x5 + 7.16*m.x6 + 17*m.x7 - m.x19 - m.x43 <= 0)

m.c20 = Constraint(expr=   2*m.x5 + 7.97*m.x6 + 15*m.x7 - m.x20 - m.x44 <= 0)

m.c21 = Constraint(expr=   m.x5 + 4.41*m.x6 + 12*m.x7 - m.x21 - m.x45 <= 0)

m.c22 = Constraint(expr=   26*m.x5 + 1.12*m.x6 + 7*m.x7 - m.x22 - m.x46 <= 0)

m.c23 = Constraint(expr=   2.43*m.x1 + 2.5*m.x2 + 7.5*m.x3 + 11.16*m.x4 + 12*m.x5 + 6*m.x7 - m.x23 - m.x47 <= 0)

m.c24 = Constraint(expr=   1.35*m.x1 + 7.5*m.x2 + 0.75*m.x3 + 4.68*m.x4 - m.x24 - m.x48 <= 0)

m.c25 = Constraint(expr= - m.x13 - m.x25 == -25)

m.c26 = Constraint(expr= - m.x14 - m.x26 == -25)

m.c27 = Constraint(expr= - m.x15 - m.x27 == -25)

m.c28 = Constraint(expr= - m.x16 - m.x28 == -25)

m.c29 = Constraint(expr= - m.x17 - m.x29 == -25)

m.c30 = Constraint(expr= - m.x18 - m.x30 == -25)

m.c31 = Constraint(expr= - m.x19 - m.x31 == -25)

m.c32 = Constraint(expr= - m.x20 - m.x32 == -25)

m.c33 = Constraint(expr= - m.x21 - m.x33 == -25)

m.c34 = Constraint(expr= - m.x22 - m.x34 == -25)

m.c35 = Constraint(expr= - m.x23 - m.x35 == -25)

m.c36 = Constraint(expr= - m.x24 - m.x36 == -25)

m.c37 = Constraint(expr= - 150*m.x1 - 200*m.x3 - 375*m.x4 - 525*m.x5 - 140*m.x6 - 360*m.x7 + m.x9 == 0)

m.c38 = Constraint(expr= - 10*m.x1 - 5*m.x3 - 50*m.x4 - 80*m.x5 - 5*m.x6 - 50*m.x7 + m.x10 == 0)

m.c39 = Constraint(expr=   m.x11 - 4*m.x37 - 4*m.x38 - 4*m.x39 - 4*m.x40 - 4*m.x41 - 4*m.x42 - 4*m.x43 - 4*m.x44
                         - 4*m.x45 - 4*m.x46 - 4*m.x47 - 4*m.x48 == 0)

m.c40 = Constraint(expr=   m.x12 - 3*m.x25 - 3*m.x26 - 3*m.x27 - 3*m.x28 - 3*m.x29 - 3*m.x30 - 3*m.x31 - 3*m.x32
                         - 3*m.x33 - 3*m.x34 - 3*m.x35 - 3*m.x36 == 0)
