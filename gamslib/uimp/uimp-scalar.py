#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21        9        0       12        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         43       43        0        0        0        0        0        0
#  FX      2        2        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        116      116        0        0
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
m.x29 = Var(within=Reals,bounds=(0,20),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,20),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,20),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,20),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,0),initialize=0)
m.x35 = Var(within=Reals,bounds=(25,None),initialize=25)
m.x36 = Var(within=Reals,bounds=(30,None),initialize=30)
m.x37 = Var(within=Reals,bounds=(30,None),initialize=30)
m.x38 = Var(within=Reals,bounds=(30,None),initialize=30)
m.x39 = Var(within=Reals,bounds=(25,None),initialize=25)
m.x40 = Var(within=Reals,bounds=(25,None),initialize=25)
m.x41 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x42 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr= - m.x41 + m.x42, sense=maximize)

m.c2 = Constraint(expr= - 2*m.x1 - 4*m.x2 - m.x3 - 3*m.x4 - 3*m.x5 - 4*m.x6 - 2*m.x7 - 3*m.x8 - 5*m.x9 - 2*m.x10
                        - 4*m.x11 - 4*m.x12 - 5*m.x13 - 3*m.x14 - 3*m.x15 - 5*m.x16 - 2*m.x17 - 4*m.x18 - 4*m.x19
                        - 5*m.x20 - 3*m.x21 - 4*m.x22 - 6*m.x23 - 3*m.x24 - 5*m.x25 - 5*m.x26 - 6*m.x27 - 4*m.x28
                        - m.x29 - m.x30 - m.x31 - m.x32 - m.x33 - m.x34 + m.x41 == 0)

m.c3 = Constraint(expr= - 10*m.x35 - 10*m.x36 - 9*m.x37 - 11*m.x38 - 11*m.x39 - 10*m.x40 + m.x42 == 0)

m.c4 = Constraint(expr=   4*m.x1 + 4*m.x4 + 6*m.x6 <= 100)

m.c5 = Constraint(expr=   7*m.x2 + 6*m.x5 + 6*m.x7 <= 100)

m.c6 = Constraint(expr=   3*m.x3 <= 40)

m.c7 = Constraint(expr=   3*m.x8 + 3*m.x11 + 5*m.x13 <= 80)

m.c8 = Constraint(expr=   6*m.x9 + 5*m.x12 + 5*m.x14 <= 90)

m.c9 = Constraint(expr=   2*m.x10 <= 30)

m.c10 = Constraint(expr=   5*m.x15 + 5*m.x18 + 7*m.x20 <= 110)

m.c11 = Constraint(expr=   8*m.x16 + 7*m.x19 + 7*m.x21 <= 110)

m.c12 = Constraint(expr=   4*m.x17 <= 50)

m.c13 = Constraint(expr=   4*m.x22 + 4*m.x25 + 5*m.x27 <= 90)

m.c14 = Constraint(expr=   7*m.x23 + 6*m.x26 + 6*m.x28 <= 100)

m.c15 = Constraint(expr=   3*m.x24 <= 40)

m.c16 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x8 + m.x9 + m.x10 - m.x29 - m.x35 == 0)

m.c17 = Constraint(expr=   m.x4 + m.x5 + m.x11 + m.x12 - m.x30 - m.x36 == 0)

m.c18 = Constraint(expr=   m.x6 + m.x7 + m.x13 + m.x14 - m.x31 - m.x37 == 0)

m.c19 = Constraint(expr=   m.x15 + m.x16 + m.x17 + m.x22 + m.x23 + m.x24 + m.x29 - m.x32 - m.x38 == 0)

m.c20 = Constraint(expr=   m.x18 + m.x19 + m.x25 + m.x26 + m.x30 - m.x33 - m.x39 == 0)

m.c21 = Constraint(expr=   m.x20 + m.x21 + m.x27 + m.x28 + m.x31 - m.x34 - m.x40 == 0)
